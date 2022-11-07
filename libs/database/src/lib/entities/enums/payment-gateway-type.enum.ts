import { registerEnumType } from "@nestjs/graphql";

export enum PaymentGatewayType {
  Stripe = 'stripe',
  BrainTree = 'braintree',
  PayPal = 'paypal',
  Paytm = 'paytm',
  Razorpay = 'razorpay',
  Paystack = 'paystack',
  PayU = 'payu',
  Instamojo = 'instamojo',
  Flutterwave = 'flutterwave',
  PayGate = 'paygate',
  MIPS = 'mips',
  MercadoPago = 'mercadopago',
  AmazonPaymentServices = 'amazon',
  MyTMoney = 'mytmoney',
  WayForPay = 'wayforpay',
  CustomLink = 'link'
}
registerEnumType(PaymentGatewayType, { name: 'PaymentGatewayType' });