import { Inject, UseGuards } from "@nestjs/common";
import { GuardsConsumer } from "@nestjs/core/guards/guards-consumer";
import { Args, CONTEXT, Mutation, Resolver } from "@nestjs/graphql";
import { TransactionAction } from "@ridy/database/enums/transaction-action.enum";
import { SharedFleetService } from "@ridy/order/shared-fleet.service";
import { UserContext } from "../auth/authenticated-admin";
import { JwtAuthGuard } from "../auth/jwt-auth.guard";
import { FleetTransactionInput } from "./dto/fleet-transaction.input";
import { FleetWalletDTO } from "./dto/fleet-wallet.dto";

@Resolver()
@UseGuards(JwtAuthGuard)
export class FleetResolver {
    constructor(
        private sharedFleetService: SharedFleetService,
        @Inject(CONTEXT)
        private context: UserContext
    ) {}
}