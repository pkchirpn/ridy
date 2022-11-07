import { Module } from '@nestjs/common';
import { HttpModule } from '@nestjs/axios';
import { GraphQLModule } from '@nestjs/graphql';
import { TypeOrmModule } from '@nestjs/typeorm';
import { DatabaseModule, entities } from '@ridy/database';
import { join } from 'path';

import { AccountingModule } from './accounting/accounting.module';
import { AddressModule } from './address/address.module';
import { AnnouncementModule } from './announcement/announcement.module';
import { CarModule } from './car/car.module';
import { CouponModule } from './coupon/coupon.module';
import { DriverModule } from './driver/driver.module';
import { FeedbackModule } from './feedback/feedback.module';
import { FleetModule } from './fleet/fleet.module';
import { OperatorModule } from './operator/operator.module';
import { OrderModule } from './order/order.module';
import { PaymentGatewayModule } from './payment-gateway/payment-gateway.module';
import { RegionModule } from './region/region.module';
import { RiderModule } from './rider/rider.module';
import { ServiceModule } from './service/service.module';
import { AuthModule } from './auth/auth.module';
import { UploadModule } from './upload/upload.module';
import { ComplaintModule } from './complaint/complaint.module';
import { ConfigurationModule } from './config/configuration.module';
import { FleetAPIController } from './fleet-api.controller';

@Module({
  imports: [
    DatabaseModule,
    GraphQLModule.forRoot({
      installSubscriptionHandlers: true,
      autoSchemaFile: join(process.cwd(), 'fleet.schema.gql'),
      //uploads: false,
      cors: false
    }),
    TypeOrmModule.forFeature(entities),
    ServiceModule,
    RiderModule,
    DriverModule,
    FleetModule,
    OrderModule,
    AccountingModule,
    CarModule,
    FeedbackModule,
    AuthModule,
    UploadModule,
    ConfigurationModule,
    HttpModule
  ],
  providers: [],
  controllers: [FleetAPIController]
})
export class FleetAPIModule {}
