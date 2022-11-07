// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Go Online`
  String get statusOffline {
    return Intl.message(
      'Go Online',
      name: 'statusOffline',
      desc: '',
      args: [],
    );
  }

  /// `Go Offline`
  String get statusOnline {
    return Intl.message(
      'Go Offline',
      name: 'statusOnline',
      desc: '',
      args: [],
    );
  }

  /// `Notification Permission`
  String get message_notification_permission_title {
    return Intl.message(
      'Notification Permission',
      name: 'message_notification_permission_title',
      desc: '',
      args: [],
    );
  }

  /// `Notification permission was denied previously. In order to get new order's notifications you can enable the permission from app settings.`
  String get message_notification_permission_denined_message {
    return Intl.message(
      'Notification permission was denied previously. In order to get new order\'s notifications you can enable the permission from app settings.',
      name: 'message_notification_permission_denined_message',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get action_ok {
    return Intl.message(
      'OK',
      name: 'action_ok',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get menu_logout {
    return Intl.message(
      'Logout',
      name: 'menu_logout',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get menu_about {
    return Intl.message(
      'About',
      name: 'menu_about',
      desc: '',
      args: [],
    );
  }

  /// `Wallet`
  String get menu_wallet {
    return Intl.message(
      'Wallet',
      name: 'menu_wallet',
      desc: '',
      args: [],
    );
  }

  /// `Trip History`
  String get menu_trip_history {
    return Intl.message(
      'Trip History',
      name: 'menu_trip_history',
      desc: '',
      args: [],
    );
  }

  /// `Announcements`
  String get menu_announcements {
    return Intl.message(
      'Announcements',
      name: 'menu_announcements',
      desc: '',
      args: [],
    );
  }

  /// `No Announcement at the moment.`
  String get menu_announcement_empty_state {
    return Intl.message(
      'No Announcement at the moment.',
      name: 'menu_announcement_empty_state',
      desc: '',
      args: [],
    );
  }

  /// `Driver Registeration`
  String get driver_register_title {
    return Intl.message(
      'Driver Registeration',
      name: 'driver_register_title',
      desc: '',
      args: [],
    );
  }

  /// `Verification Completed`
  String get message_verification_completed {
    return Intl.message(
      'Verification Completed',
      name: 'message_verification_completed',
      desc: '',
      args: [],
    );
  }

  /// `Unknown error`
  String get message_unknown_error {
    return Intl.message(
      'Unknown error',
      name: 'message_unknown_error',
      desc: '',
      args: [],
    );
  }

  /// `Success`
  String get title_success {
    return Intl.message(
      'Success',
      name: 'title_success',
      desc: '',
      args: [],
    );
  }

  /// `Your profile is submitted for admin approval. You can check back later to see the status of your submission.`
  String get driver_register_profile_submitted_message {
    return Intl.message(
      'Your profile is submitted for admin approval. You can check back later to see the status of your submission.',
      name: 'driver_register_profile_submitted_message',
      desc: '',
      args: [],
    );
  }

  /// `Normally at this stage admin would need to approve driver's submission from the Admin Panel. However for the sake of demo your profile is automatically approved now and is ready to use.`
  String get driver_registration_approved_demo_mode {
    return Intl.message(
      'Normally at this stage admin would need to approve driver\'s submission from the Admin Panel. However for the sake of demo your profile is automatically approved now and is ready to use.',
      name: 'driver_registration_approved_demo_mode',
      desc: '',
      args: [],
    );
  }

  /// `IMPORTANT!`
  String get title_important {
    return Intl.message(
      'IMPORTANT!',
      name: 'title_important',
      desc: '',
      args: [],
    );
  }

  /// `Cell Number`
  String get cell_number {
    return Intl.message(
      'Cell Number',
      name: 'cell_number',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the phone number`
  String get phone_number_empty {
    return Intl.message(
      'Please enter the phone number',
      name: 'phone_number_empty',
      desc: '',
      args: [],
    );
  }

  /// `Verify Number`
  String get driver_registration_step_verify_number_title {
    return Intl.message(
      'Verify Number',
      name: 'driver_registration_step_verify_number_title',
      desc: '',
      args: [],
    );
  }

  /// `Verification code`
  String get driver_register_verification_code_textfield_hint {
    return Intl.message(
      'Verification code',
      name: 'driver_register_verification_code_textfield_hint',
      desc: '',
      args: [],
    );
  }

  /// `Contact Details`
  String get driver_register_contact_details_title {
    return Intl.message(
      'Contact Details',
      name: 'driver_register_contact_details_title',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get firstname {
    return Intl.message(
      'First Name',
      name: 'firstname',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get lastname {
    return Intl.message(
      'Last Name',
      name: 'lastname',
      desc: '',
      args: [],
    );
  }

  /// `E-Mail`
  String get email {
    return Intl.message(
      'E-Mail',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Certificate Number`
  String get certificate_number {
    return Intl.message(
      'Certificate Number',
      name: 'certificate_number',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get gender_male {
    return Intl.message(
      'Male',
      name: 'gender_male',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get gender_female {
    return Intl.message(
      'Female',
      name: 'gender_female',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Ride Details`
  String get driver_register_ride_details_step_title {
    return Intl.message(
      'Ride Details',
      name: 'driver_register_ride_details_step_title',
      desc: '',
      args: [],
    );
  }

  /// `Plate Number`
  String get plate_number {
    return Intl.message(
      'Plate Number',
      name: 'plate_number',
      desc: '',
      args: [],
    );
  }

  /// `Production Year`
  String get car_production_year {
    return Intl.message(
      'Production Year',
      name: 'car_production_year',
      desc: '',
      args: [],
    );
  }

  /// `Car Model`
  String get car_model {
    return Intl.message(
      'Car Model',
      name: 'car_model',
      desc: '',
      args: [],
    );
  }

  /// `Car Color`
  String get car_color {
    return Intl.message(
      'Car Color',
      name: 'car_color',
      desc: '',
      args: [],
    );
  }

  /// `Payout Details`
  String get driver_register_step_payout_details_title {
    return Intl.message(
      'Payout Details',
      name: 'driver_register_step_payout_details_title',
      desc: '',
      args: [],
    );
  }

  /// `Bank Name`
  String get bank_name {
    return Intl.message(
      'Bank Name',
      name: 'bank_name',
      desc: '',
      args: [],
    );
  }

  /// `Account Number`
  String get account_number {
    return Intl.message(
      'Account Number',
      name: 'account_number',
      desc: '',
      args: [],
    );
  }

  /// `Bank Swift`
  String get bank_swift {
    return Intl.message(
      'Bank Swift',
      name: 'bank_swift',
      desc: '',
      args: [],
    );
  }

  /// `Bank Routing Number`
  String get bank_routing_numbe {
    return Intl.message(
      'Bank Routing Number',
      name: 'bank_routing_numbe',
      desc: '',
      args: [],
    );
  }

  /// `Bank Routing Number`
  String get bankRoutingNumber {
    return Intl.message(
      'Bank Routing Number',
      name: 'bankRoutingNumber',
      desc: '',
      args: [],
    );
  }

  /// `Documents`
  String get driver_register_step_documents_title {
    return Intl.message(
      'Documents',
      name: 'driver_register_step_documents_title',
      desc: '',
      args: [],
    );
  }

  /// `In order to verificate above documents we require below documents uploaded`
  String get driver_register_step_documents_heading {
    return Intl.message(
      'In order to verificate above documents we require below documents uploaded',
      name: 'driver_register_step_documents_heading',
      desc: '',
      args: [],
    );
  }

  /// `1-ID`
  String get driver_register_document_first {
    return Intl.message(
      '1-ID',
      name: 'driver_register_document_first',
      desc: '',
      args: [],
    );
  }

  /// `2-Driver License`
  String get driver_register_document_second {
    return Intl.message(
      '2-Driver License',
      name: 'driver_register_document_second',
      desc: '',
      args: [],
    );
  }

  /// `3-Ride's Ownership document`
  String get driver_register_document_third {
    return Intl.message(
      '3-Ride\'s Ownership document',
      name: 'driver_register_document_third',
      desc: '',
      args: [],
    );
  }

  /// `Upload Document`
  String get action_upload_document {
    return Intl.message(
      'Upload Document',
      name: 'action_upload_document',
      desc: '',
      args: [],
    );
  }

  /// `No past order has been recorded.`
  String get trip_history_empty_state {
    return Intl.message(
      'No past order has been recorded.',
      name: 'trip_history_empty_state',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get trip_history_completed_tab {
    return Intl.message(
      'Completed',
      name: 'trip_history_completed_tab',
      desc: '',
      args: [],
    );
  }

  /// `No Gateway is available.`
  String get wallet_gateway_empty_state {
    return Intl.message(
      'No Gateway is available.',
      name: 'wallet_gateway_empty_state',
      desc: '',
      args: [],
    );
  }

  /// `& {count} other currencies`
  String wallet_other_currencies_available(Object count) {
    return Intl.message(
      '& $count other currencies',
      name: 'wallet_other_currencies_available',
      desc: '',
      args: [count],
    );
  }

  /// `Switch`
  String get wallet_switch_currency {
    return Intl.message(
      'Switch',
      name: 'wallet_switch_currency',
      desc: '',
      args: [],
    );
  }

  /// `No history recorded.`
  String get wallet_empty_state_message {
    return Intl.message(
      'No history recorded.',
      name: 'wallet_empty_state_message',
      desc: '',
      args: [],
    );
  }

  /// `Add Credit`
  String get wallet_add_credit {
    return Intl.message(
      'Add Credit',
      name: 'wallet_add_credit',
      desc: '',
      args: [],
    );
  }

  /// `Unkonwn`
  String get enum_unknown {
    return Intl.message(
      'Unkonwn',
      name: 'enum_unknown',
      desc: '',
      args: [],
    );
  }

  /// `Select currency:`
  String get wallet_select_currency {
    return Intl.message(
      'Select currency:',
      name: 'wallet_select_currency',
      desc: '',
      args: [],
    );
  }

  /// `Select Payment Method:`
  String get wallet_select_payment_method {
    return Intl.message(
      'Select Payment Method:',
      name: 'wallet_select_payment_method',
      desc: '',
      args: [],
    );
  }

  /// `Input amount to recharge`
  String get top_up_sheet_textfield_hint {
    return Intl.message(
      'Input amount to recharge',
      name: 'top_up_sheet_textfield_hint',
      desc: '',
      args: [],
    );
  }

  /// `Pay`
  String get top_up_sheet_pay_button {
    return Intl.message(
      'Pay',
      name: 'top_up_sheet_pay_button',
      desc: '',
      args: [],
    );
  }

  /// `LOADING`
  String get loading {
    return Intl.message(
      'LOADING',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Pickup location`
  String get available_order_pickup_location {
    return Intl.message(
      'Pickup location',
      name: 'available_order_pickup_location',
      desc: '',
      args: [],
    );
  }

  /// `Drop off location`
  String get available_order_dropoff_location {
    return Intl.message(
      'Drop off location',
      name: 'available_order_dropoff_location',
      desc: '',
      args: [],
    );
  }

  /// `Cost`
  String get available_order_cost {
    return Intl.message(
      'Cost',
      name: 'available_order_cost',
      desc: '',
      args: [],
    );
  }

  /// `Accept Order`
  String get available_order_action_accept {
    return Intl.message(
      'Accept Order',
      name: 'available_order_action_accept',
      desc: '',
      args: [],
    );
  }

  /// `Cash Payment received`
  String get order_status_action_received_cash {
    return Intl.message(
      'Cash Payment received',
      name: 'order_status_action_received_cash',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get action_cancel {
    return Intl.message(
      'Cancel',
      name: 'action_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Navigate`
  String get order_status_action_navigate {
    return Intl.message(
      'Navigate',
      name: 'order_status_action_navigate',
      desc: '',
      args: [],
    );
  }

  /// `Expected in: `
  String get order_status_expected_in {
    return Intl.message(
      'Expected in: ',
      name: 'order_status_expected_in',
      desc: '',
      args: [],
    );
  }

  /// `Soon`
  String get order_status_expected_soon {
    return Intl.message(
      'Soon',
      name: 'order_status_expected_soon',
      desc: '',
      args: [],
    );
  }

  /// `Unpaid`
  String get order_status_fee_unpaid {
    return Intl.message(
      'Unpaid',
      name: 'order_status_fee_unpaid',
      desc: '',
      args: [],
    );
  }

  /// `Paid`
  String get order_status_fee_paid {
    return Intl.message(
      'Paid',
      name: 'order_status_fee_paid',
      desc: '',
      args: [],
    );
  }

  /// `Arrived`
  String get order_status_action_arrived {
    return Intl.message(
      'Arrived',
      name: 'order_status_action_arrived',
      desc: '',
      args: [],
    );
  }

  /// `Start Trip`
  String get order_status_action_start {
    return Intl.message(
      'Start Trip',
      name: 'order_status_action_start',
      desc: '',
      args: [],
    );
  }

  /// `Finish`
  String get order_status_action_finished {
    return Intl.message(
      'Finish',
      name: 'order_status_action_finished',
      desc: '',
      args: [],
    );
  }

  /// `Command is not supported`
  String get message_cant_open_url {
    return Intl.message(
      'Command is not supported',
      name: 'message_cant_open_url',
      desc: '',
      args: [],
    );
  }

  /// `Login First`
  String get status_need_login {
    return Intl.message(
      'Login First',
      name: 'status_need_login',
      desc: '',
      args: [],
    );
  }

  /// `Bank Transfer`
  String get enum_driver_recharge_type_bank_transfer {
    return Intl.message(
      'Bank Transfer',
      name: 'enum_driver_recharge_type_bank_transfer',
      desc: '',
      args: [],
    );
  }

  /// `Gift`
  String get enum_driver_recharge_type_gift {
    return Intl.message(
      'Gift',
      name: 'enum_driver_recharge_type_gift',
      desc: '',
      args: [],
    );
  }

  /// `In-App Payment`
  String get enum_driver_recharge_type_in_app_payment {
    return Intl.message(
      'In-App Payment',
      name: 'enum_driver_recharge_type_in_app_payment',
      desc: '',
      args: [],
    );
  }

  /// `Order Fee`
  String get enum_driver_recharge_transaction_type_order_fee {
    return Intl.message(
      'Order Fee',
      name: 'enum_driver_recharge_transaction_type_order_fee',
      desc: '',
      args: [],
    );
  }

  /// `Withdraw`
  String get enum_driver_deduct_transaction_type_withdraw {
    return Intl.message(
      'Withdraw',
      name: 'enum_driver_deduct_transaction_type_withdraw',
      desc: '',
      args: [],
    );
  }

  /// `Correction`
  String get enum_driver_deduct_transaction_type_correction {
    return Intl.message(
      'Correction',
      name: 'enum_driver_deduct_transaction_type_correction',
      desc: '',
      args: [],
    );
  }

  /// `Commission`
  String get enum_driver_deduct_transaction_type_commission {
    return Intl.message(
      'Commission',
      name: 'enum_driver_deduct_transaction_type_commission',
      desc: '',
      args: [],
    );
  }

  /// `Copyright © {company}, All rights reserved.`
  String copyright_notice(Object company) {
    return Intl.message(
      'Copyright © $company, All rights reserved.',
      name: 'copyright_notice',
      desc: '',
      args: [company],
    );
  }

  /// `Activities`
  String get wallet_activities_heading {
    return Intl.message(
      'Activities',
      name: 'wallet_activities_heading',
      desc: '',
      args: [],
    );
  }

  /// `Required field`
  String get form_required_field_error {
    return Intl.message(
      'Required field',
      name: 'form_required_field_error',
      desc: '',
      args: [],
    );
  }

  /// `Chat`
  String get menu_chat {
    return Intl.message(
      'Chat',
      name: 'menu_chat',
      desc: '',
      args: [],
    );
  }

  /// `Canceled`
  String get trip_history_canceled_tab {
    return Intl.message(
      'Canceled',
      name: 'trip_history_canceled_tab',
      desc: '',
      args: [],
    );
  }

  /// `Report an issue`
  String get button_report_issue {
    return Intl.message(
      'Report an issue',
      name: 'button_report_issue',
      desc: '',
      args: [],
    );
  }

  /// `Report an issue`
  String get issue_submit_title {
    return Intl.message(
      'Report an issue',
      name: 'issue_submit_title',
      desc: '',
      args: [],
    );
  }

  /// `Subject`
  String get issue_subject_placeholder {
    return Intl.message(
      'Subject',
      name: 'issue_subject_placeholder',
      desc: '',
      args: [],
    );
  }

  /// `Can not be empty`
  String get error_field_cant_be_empty {
    return Intl.message(
      'Can not be empty',
      name: 'error_field_cant_be_empty',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get issue_description_placeholder {
    return Intl.message(
      'Description',
      name: 'issue_description_placeholder',
      desc: '',
      args: [],
    );
  }

  /// `Complaint is submitted. Please wait for a contact from our support reperesentitive about your inquiry.`
  String get complaint_submit_success_message {
    return Intl.message(
      'Complaint is submitted. Please wait for a contact from our support reperesentitive about your inquiry.',
      name: 'complaint_submit_success_message',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'bn'),
      Locale.fromSubtags(languageCode: 'de'),
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'fa'),
      Locale.fromSubtags(languageCode: 'fr'),
      Locale.fromSubtags(languageCode: 'hi'),
      Locale.fromSubtags(languageCode: 'hy'),
      Locale.fromSubtags(languageCode: 'id'),
      Locale.fromSubtags(languageCode: 'ja'),
      Locale.fromSubtags(languageCode: 'ko'),
      Locale.fromSubtags(languageCode: 'pt'),
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'ur'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
