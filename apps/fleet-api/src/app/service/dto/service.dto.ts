import { Authorize, IDField, Relation } from "@nestjs-query/query-graphql";
import { Field, ID, Int, ObjectType } from "@nestjs/graphql";
import { MediaDTO } from "../../upload/media.dto";
import { ServiceOptionDTO } from "./service-option.dto";
import { ServiceAuthorizer } from "./service.authorizer";

@ObjectType('Service')
@Relation('media', () => MediaDTO)
@Relation('options', () => ServiceOptionDTO)
@Authorize(ServiceAuthorizer)
export class ServiceDTO {
    @IDField(() => ID)
    id!: number;
    name!: string;
    description?: string;
    @Field(() => Int)
    personCapacity?: number;
}