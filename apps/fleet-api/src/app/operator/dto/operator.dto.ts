import { Authorize, IDField } from "@nestjs-query/query-graphql";
import { Field, ID, ObjectType } from "@nestjs/graphql";
import { OperatorAuthorizer } from "./operator.authorizer";

@ObjectType('Operator')
@Authorize(OperatorAuthorizer)
export class OperatorDTO {
    @IDField(() => ID)
    id!: number;
    firstName?: string;
    lastName?: string;
    userName!: string;
    mobileNumber?: string;
    email?: string;
    @Field(() => ID)
    roleId?: number;
}