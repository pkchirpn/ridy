import { Component, OnInit } from '@angular/core';
import { TagColorService } from '@ridy/admin-panel/src/app/@services/tag-color/tag-color.service';
import { ActivatedRoute, Router } from '@angular/router';
import { environment } from '@ridy/admin-panel/src/environments/environment';
import { ApolloQueryResult } from '@apollo/client/core';
import { RiderStatus, UpdateRiderGQL, ViewRiderQuery } from '@ridy/admin-panel/generated/graphql';
import { map } from 'rxjs/operators';
import { Observable } from 'rxjs';

@Component({
  selector: 'app-rider-view',
  templateUrl: './rider-view.component.html'
})
export class RiderViewComponent implements OnInit {
  query?: Observable<ApolloQueryResult<ViewRiderQuery>>;
  environment;

  constructor(
    private route: ActivatedRoute,
    public tagColor: TagColorService,
    private updateRiderGQL: UpdateRiderGQL,
    private router: Router) {
    this.environment = environment;
    
  }
  ngOnInit(): void {
    this.query = this.route.data.pipe(map(data => data.rider));
  }

  async changeStatus(status: string) {
    this.updateRiderGQL.mutate({id: this.route.snapshot.params.id, update: {status: status as RiderStatus}});
    this.router.navigate([], { relativeTo: this.route, queryParams: {refresh: new Date().getTime()}, queryParamsHandling: 'merge'});
  }
}
