import { AfterViewInit, Component, OnDestroy, OnInit, ViewChild } from '@angular/core';
import { UntypedFormControl } from '@angular/forms';
import { GoogleMap, MapInfoWindow, MapMarker } from '@angular/google-maps';
import { ActivatedRoute } from '@angular/router';
import { ApolloQueryResult } from '@apollo/client/core';
import {
  AssignDriverToOrderGQL,
  AvailableDriversForOrderQuery,
  DriverSearchGQL,
  Point,
  ViewOrderQuery,
} from '@ridy/admin-panel/generated/graphql';
import { RouterHelperService } from '@ridy/admin-panel/src/app/@services/router-helper.service';
import { TagColorService } from '@ridy/admin-panel/src/app/@services/tag-color/tag-color.service';
import { camelCase } from 'camel-case';
import { AutocompleteDataSourceItem } from 'ng-zorro-antd/auto-complete';
import { NzMessageService } from 'ng-zorro-antd/message';
import { combineLatestWith, debounceTime, firstValueFrom, map, Observable, Subscription, switchMap, tap } from 'rxjs';

@Component({
  selector: 'app-request-view-assign',
  templateUrl: './request-view-assign.component.html',
})
export class RequestViewAssignComponent implements OnInit, AfterViewInit, OnDestroy {
  query?: Observable<[
    ApolloQueryResult<AvailableDriversForOrderQuery>,
      ApolloQueryResult<ViewOrderQuery>
  ]>;

  subscription?: Subscription;
  selectedDriver?: AvailableDriversForOrderQuery['getDriversLocationWithData'][number];
  filteredDrivers: AutocompleteDataSourceItem[] = [];
  @ViewChild(GoogleMap, { static: true }) map!: GoogleMap;
  @ViewChild(MapInfoWindow, { static: false }) infoWindow!: MapInfoWindow;
  toCamelCase = camelCase;
  searchDriversCtrl = new UntypedFormControl();

  constructor(
    private route: ActivatedRoute,
    private routeHelper: RouterHelperService,
    public tagColor: TagColorService,
    private driversSearchQuery: DriverSearchGQL,
    private msg: NzMessageService,
    private assignDriverToOrderMutation: AssignDriverToOrderGQL) {}

  ngOnInit(): void {
    this.query = this.route.data.pipe<ApolloQueryResult<AvailableDriversForOrderQuery>>(
      map((data) => data.availableDrivers),
      ).pipe(combineLatestWith(this.route.parent!.data.pipe<ApolloQueryResult<ViewOrderQuery>>(map((data) => data.order)))
    );
  }

  ngAfterViewInit(): void {
    this.subscription = this.query?.subscribe(data => {
      const locations: Point[] = data[0].data.getDriversLocationWithData.map(data => ({ lat: data.location.lat, lng: data.location.lng }));
      const tripPoints = data[1].data.order!.points.map(point => ({lat: point.lat, lng: point.lng}));
      for(let tripPoint of tripPoints) {
        locations.push(tripPoint);
      }
      this.fitBounds(locations);
    });
    this.searchDriversCtrl.valueChanges
      .pipe(
        debounceTime(500),
        tap(() => {
          this.filteredDrivers = [];
        }),
        switchMap(value => this.driversSearchQuery.fetch({filter: value.value == null ? value : ''}))
      )
      .subscribe(data => {
        if (data.data.drivers != null) {
          this.filteredDrivers = data.data.drivers.nodes.map(d => ({value: d.id, label: `${d.firstName} ${d.lastName} (${d.mobileNumber})`}));
        } else {
          this.msg.error(data.error?.message ?? 'unknown error');
        }
      });
  }

  ngOnDestroy(): void {
    this.subscription?.unsubscribe();
  }

  openInfoWindow(marker: MapMarker, driver: AvailableDriversForOrderQuery['getDriversLocationWithData'][number]) {
    this.selectedDriver = driver;
    this.infoWindow.open(marker);
  }

  fitBounds(locations: Point[]) {
    if (locations.length == 0) {
      this.map.zoom = 1;
      return;
    }
    if (locations.length == 1) {
      this.map.panTo(locations[0]);
      return;
    }
    const latlngbounds = new google.maps.LatLngBounds();
    for (const location of locations) {
      latlngbounds.extend(location);
    }
    this.map.fitBounds(latlngbounds);
  }

  async assignToDriver(driverId: string) {
    try {
      await firstValueFrom(this.assignDriverToOrderMutation.mutate({orderId: this.route.parent!.snapshot.params.id, driverId}));
    this.routeHelper.refresh(this.route);
    } catch(error: any) {
      this.msg.error(error.message);
    }
  }
}
