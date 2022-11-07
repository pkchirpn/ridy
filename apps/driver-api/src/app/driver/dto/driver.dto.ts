import { Field, ID, Int, ObjectType } from "@nestjs/graphql";
import { Authorize, BeforeFindOne, BeforeFindOneHook, FindOneArgsType, IDField, OffsetConnection, Relation, UnPagedRelation } from "@nestjs-query/query-graphql";
import { Gender } from "@ridy/database/enums/gender.enum";
import { DriverStatus } from "@ridy/database/enums/driver-status.enum";
import { UserContext } from "../../auth/authenticated-user";
import { CarModelDTO } from "./car-model.dto";
import { CarColorDTO } from "./car-color.dto";
import { OrderDTO } from "../../order/dto/order.dto";
import { SortDirection } from "@nestjs-query/core";
import { OrderStatus } from "@ridy/database/enums/order-status.enum";
import { MediaDTO } from "../../upload/media.dto";
import { DriverWalletDTO } from "../../wallet/dto/driver-wallet.dto";

@ObjectType('Driver')
@Authorize({
    authorize: (context: UserContext) => ({id: {eq: context.req.user.id}})
})
@BeforeFindOne((input: FindOneArgsType, context: UserContext) => {
    return { id: context.req.user.id };
})
@UnPagedRelation('documents', () => MediaDTO, { disableRemove: true })
@Relation('car', () => CarModelDTO, { nullable: true, disableRemove: true, disableUpdate: true })
@Relation('carColor', () => CarColorDTO, { nullable: true, disableRemove: true, disableUpdate: true })
@Relation('media', () => MediaDTO, { nullable: true, disableRemove: true, disableUpdate: true })
@OffsetConnection('orders', () => OrderDTO, { maxResultsSize: 1, defaultFilter: {status: {in: [OrderStatus.DriverAccepted, OrderStatus.Arrived, OrderStatus.Started, OrderStatus.WaitingForPostPay]}}, defaultSort: [{field: 'id', direction: SortDirection.DESC}], defaultResultSize: 1, disableRemove: true, disableUpdate: true})
@UnPagedRelation('currentOrders', () => OrderDTO, { maxResultsSize: 1, defaultFilter: {status: {in: [OrderStatus.DriverAccepted, OrderStatus.Arrived, OrderStatus.Started, OrderStatus.WaitingForPostPay]}}, defaultSort: [{field: 'id', direction: SortDirection.DESC}], defaultResultSize: 1, relationName: 'orders', disableRemove: true, disableUpdate: true})
@UnPagedRelation('wallet', () => DriverWalletDTO, { relationName: 'wallet', disableRemove: true, disableUpdate: true })
export class DriverDTO {
    @IDField(() => ID)
    id!: number;
    firstName?: string;
    lastName?: string;
    mobileNumber: string;
    certificateNumber?: string;
    email?: string;
    @Field(() => Int)
    carProductionYear?: number;
    carPlate?: string;
    status!: DriverStatus;
    gender?: Gender;
    registrationTimestamp!: Date;
    lastSeenTimestamp?: Date;
    accountNumber?: string;
    bankName?: string;
    bankRoutingNumber?: string;
    bankSwift?: string;
    address?: string;
    softRejectionNote?: string;
    @Field(() => ID)
    carModelId?: number;
    @Field(() => ID)
    carColorId?: number;
    @Field(() => Int)
    searchDistance?: number;

}