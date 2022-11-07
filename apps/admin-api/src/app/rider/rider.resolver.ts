import { Inject, UseGuards } from "@nestjs/common";
import { Args, CONTEXT, Mutation, Resolver } from "@nestjs/graphql";
import { TransactionAction } from "@ridy/database/enums/transaction-action.enum";
import { TransactionStatus } from "@ridy/database/enums/transaction-status.enum";
import { SharedRiderService } from "@ridy/order/shared-rider.service";
import { UserContext } from "../auth/authenticated-admin";
import { JwtAuthGuard } from "../auth/jwt-auth.guard";
import { RiderTransactionInput } from "./dto/rider-transaction.input";
import { RiderWalletDTO } from "./dto/rider-wallet.dto";

@Resolver()
@UseGuards(JwtAuthGuard)
export class RiderResolver {
    constructor(
        private sharedRiderService: SharedRiderService,
        @Inject(CONTEXT)
        private context: UserContext
    ) {}

    @Mutation(() => RiderWalletDTO)
    async createRiderTransaction(@Args('input', { type: () => RiderTransactionInput }) input: RiderTransactionInput) {
        input.amount = input.action == TransactionAction.Recharge ? Math.abs(input.amount) : Math.abs(input.amount) * -1;
        return this.sharedRiderService.rechargeWallet({...input, operatorId: this.context.req.user.id, status: TransactionStatus.Done});
    }
}