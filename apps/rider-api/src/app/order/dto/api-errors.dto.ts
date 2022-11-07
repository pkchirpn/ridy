import { ObjectType } from "@nestjs/graphql";
import { CalculateFareError } from "./calculate-fare.dto";
import { CreateOrderError } from "./create-order-error.dto";

@ObjectType('APIErrors')
export class APIErrors {
    calculateFare: CalculateFareError;
    createOrder: CreateOrderError;
}