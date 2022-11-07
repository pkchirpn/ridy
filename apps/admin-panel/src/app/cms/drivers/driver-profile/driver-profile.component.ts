import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { ApolloQueryResult } from '@apollo/client/core';
import { DriverStatus, UpdateDriverStatusGQL, ViewDriverQuery } from '@ridy/admin-panel/generated/graphql';
import { TagColorService } from '@ridy/admin-panel/src/app/@services/tag-color/tag-color.service';
import { environment } from '@ridy/admin-panel/src/environments/environment';
import { NzMessageService } from 'ng-zorro-antd/message';
import { firstValueFrom, map, Observable } from 'rxjs';
import { camelCase } from 'camel-case';
import { RouterHelperService } from '../../../@services/router-helper.service';

@Component({
  selector: 'app-driver-profile',
  templateUrl: './driver-profile.component.html'
})
export class DriverProfileComponent implements OnInit {
  public driverStatus = DriverStatus; 
  query?: Observable<ApolloQueryResult<ViewDriverQuery>>;
  root = environment.root;
  toCamelCase = camelCase;

  constructor(
    private route: ActivatedRoute,
    public tagColor: TagColorService,
    private message: NzMessageService,
    private updateGQL: UpdateDriverStatusGQL,
    private routerHelper: RouterHelperService) {
  }

  ngOnInit(): void {
    this.query = this.route.data.pipe(map(data => data.driver));
  }

  async changeStatus(status: DriverStatus) {
    const id = this.route.snapshot.params.id ?? 0;
    await firstValueFrom(this.updateGQL.mutate({ id, status }));
    this.routerHelper.refresh(this.route);
  }
}
