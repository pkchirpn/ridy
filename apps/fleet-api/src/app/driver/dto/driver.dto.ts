import { FilterableField, IDField, OffsetConnection, Relation, UnPagedRelation } from "@nestjs-query/query-graphql";
import { Field, ID, Int, ObjectType } from "@nestjs/graphql";
import { DriverStatus } from "@ridy/database/enums/driver-status.enum";
import { Gender } from "@ridy/database/enums/gender.enum";
import { FeedbackDTO } from "../../feedback/dto/feedback.dto";
import { numberMasker } from "../../number.masker.middleware";
import { OrderDTO } from "../../order/dto/order.dto";
import { ServiceDTO } from "../../service/dto/service.dto";
import { MediaDTO } from "../../upload/media.dto";

@ObjectType('Driver')
@OffsetConnection('feedbacks', () => FeedbackDTO, { enableAggregate: true })
@UnPagedRelation('enabledServices', () => ServiceDTO)
@OffsetConnection('orders', () => OrderDTO)
@Relation('media', () => MediaDTO, { nullable: true })
export class DriverDTO {
    @IDField(() => ID)
    id!: number;
    firstName?: string;
    @FilterableField(() => String)
    lastName?: string;
    @FilterableField(() => String, { middleware: [numberMasker]})
    mobileNumber: string;
    email?: string;
    @Field(() => Int)
    carProductionYear?: number;
    carPlate?: string;
    @FilterableField(() => DriverStatus)
    status!: DriverStatus;
    gender?: Gender;
    rating?: number;
    reviewCount: number;
    registrationTimestamp!: Date;
    lastSeenTimestamp?: Date;
    bankSwift?: string;
    address?: string;
}