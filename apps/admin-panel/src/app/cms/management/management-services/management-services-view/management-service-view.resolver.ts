import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, Resolve, RouterStateSnapshot } from '@angular/router';
import { ApolloQueryResult } from '@apollo/client/core';
import { ViewRiderQuery, ViewServiceCategoryGQL, ViewServiceGQL } from '@ridy/admin-panel/generated/graphql';
import { Observable } from 'rxjs';

@Injectable()
export class ManagementServicesViewResolver implements Resolve<ApolloQueryResult<ViewRiderQuery>> {
    constructor(
        private gql: ViewServiceGQL
    ) { }

    resolve(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Observable<ApolloQueryResult<ViewRiderQuery>> {
        return this.gql.fetch({ id: route.params.id });
    }
}
