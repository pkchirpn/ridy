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

  /// `Loading`
  String get loading {
    return Intl.message(
      'Loading',
      name: 'loading',
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

  /// `Order Fee`
  String get enum_rider_transaction_deduct_order_fee {
    return Intl.message(
      'Order Fee',
      name: 'enum_rider_transaction_deduct_order_fee',
      desc: '',
      args: [],
    );
  }

  /// `Withdraw`
  String get enum_rider_transaction_deduct_withdraw {
    return Intl.message(
      'Withdraw',
      name: 'enum_rider_transaction_deduct_withdraw',
      desc: '',
      args: [],
    );
  }

  /// `Correction`
  String get enum_rider_transaction_deduct_correction {
    return Intl.message(
      'Correction',
      name: 'enum_rider_transaction_deduct_correction',
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

  /// `In-app Payment`
  String get enum_rider_transaction_recharge_in_app_payment {
    return Intl.message(
      'In-app Payment',
      name: 'enum_rider_transaction_recharge_in_app_payment',
      desc: '',
      args: [],
    );
  }

  /// `Gift`
  String get enum_rider_transaction_recharge_gift {
    return Intl.message(
      'Gift',
      name: 'enum_rider_transaction_recharge_gift',
      desc: '',
      args: [],
    );
  }

  /// `Correction`
  String get enum_rider_transaction_recharge_correction {
    return Intl.message(
      'Correction',
      name: 'enum_rider_transaction_recharge_correction',
      desc: '',
      args: [],
    );
  }

  /// `Bank Transfer`
  String get enum_rider_transaction_recharge_bank_transfer {
    return Intl.message(
      'Bank Transfer',
      name: 'enum_rider_transaction_recharge_bank_transfer',
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

  /// `Confirm Pickup Location`
  String get point_selection_confirm_pickup {
    return Intl.message(
      'Confirm Pickup Location',
      name: 'point_selection_confirm_pickup',
      desc: '',
      args: [],
    );
  }

  /// `Book Now`
  String get service_selection_book_now {
    return Intl.message(
      'Book Now',
      name: 'service_selection_book_now',
      desc: '',
      args: [],
    );
  }

  /// `Book for {time}`
  String service_selection_book_later(Object time) {
    return Intl.message(
      'Book for $time',
      name: 'service_selection_book_later',
      desc: '',
      args: [time],
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

  /// `Enter keywords of the location`
  String get place_search_hint {
    return Intl.message(
      'Enter keywords of the location',
      name: 'place_search_hint',
      desc: '',
      args: [],
    );
  }

  /// `Submit Review`
  String get review_action_submit_review {
    return Intl.message(
      'Submit Review',
      name: 'review_action_submit_review',
      desc: '',
      args: [],
    );
  }

  /// `Add Comment`
  String get review_textfield_hint {
    return Intl.message(
      'Add Comment',
      name: 'review_textfield_hint',
      desc: '',
      args: [],
    );
  }

  /// `How would you rate your experience?`
  String get review_text_heading {
    return Intl.message(
      'How would you rate your experience?',
      name: 'review_text_heading',
      desc: '',
      args: [],
    );
  }

  /// `Subtotal`
  String get invoice_subtotal {
    return Intl.message(
      'Subtotal',
      name: 'invoice_subtotal',
      desc: '',
      args: [],
    );
  }

  /// `Coupon discount`
  String get invoice_coupon_discount {
    return Intl.message(
      'Coupon discount',
      name: 'invoice_coupon_discount',
      desc: '',
      args: [],
    );
  }

  /// `Service Fee`
  String get invoice_service_fee {
    return Intl.message(
      'Service Fee',
      name: 'invoice_service_fee',
      desc: '',
      args: [],
    );
  }

  /// `Apply Coupon`
  String get invoice_apply_coupon_action {
    return Intl.message(
      'Apply Coupon',
      name: 'invoice_apply_coupon_action',
      desc: '',
      args: [],
    );
  }

  /// `Pay Online`
  String get invoice_pay_online_action {
    return Intl.message(
      'Pay Online',
      name: 'invoice_pay_online_action',
      desc: '',
      args: [],
    );
  }

  /// `Looking for ride, please wait...`
  String get looking_heading {
    return Intl.message(
      'Looking for ride, please wait...',
      name: 'looking_heading',
      desc: '',
      args: [],
    );
  }

  /// `Cancel Request`
  String get looking_cancel_request {
    return Intl.message(
      'Cancel Request',
      name: 'looking_cancel_request',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get driver_info_card_message {
    return Intl.message(
      'Message',
      name: 'driver_info_card_message',
      desc: '',
      args: [],
    );
  }

  /// `Call`
  String get driver_info_card_call {
    return Intl.message(
      'Call',
      name: 'driver_info_card_call',
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

  /// `About`
  String get menu_about {
    return Intl.message(
      'About',
      name: 'menu_about',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get menu_login {
    return Intl.message(
      'Login',
      name: 'menu_login',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get menu_profile {
    return Intl.message(
      'Profile',
      name: 'menu_profile',
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

  /// `Saved Locations`
  String get menu_saved_locations {
    return Intl.message(
      'Saved Locations',
      name: 'menu_saved_locations',
      desc: '',
      args: [],
    );
  }

  /// `Enter the coupon code below:`
  String get coupon_heading {
    return Intl.message(
      'Enter the coupon code below:',
      name: 'coupon_heading',
      desc: '',
      args: [],
    );
  }

  /// `Coupon code`
  String get coupon_textfield_hint {
    return Intl.message(
      'Coupon code',
      name: 'coupon_textfield_hint',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get action_apply {
    return Intl.message(
      'Apply',
      name: 'action_apply',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get action_save {
    return Intl.message(
      'Save',
      name: 'action_save',
      desc: '',
      args: [],
    );
  }

  /// `Please enter name of location`
  String get create_address_name_empty_error {
    return Intl.message(
      'Please enter name of location',
      name: 'create_address_name_empty_error',
      desc: '',
      args: [],
    );
  }

  /// `Please enter details about the address`
  String get create_address_details_empty_error {
    return Intl.message(
      'Please enter details about the address',
      name: 'create_address_details_empty_error',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get create_address_details_textfield_hint {
    return Intl.message(
      'Details',
      name: 'create_address_details_textfield_hint',
      desc: '',
      args: [],
    );
  }

  /// `Title`
  String get create_address_title_textfield_hint {
    return Intl.message(
      'Title',
      name: 'create_address_title_textfield_hint',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get action_delete {
    return Intl.message(
      'Delete',
      name: 'action_delete',
      desc: '',
      args: [],
    );
  }

  /// `Noting To See Here.`
  String get addresses_empty_state_message {
    return Intl.message(
      'Noting To See Here.',
      name: 'addresses_empty_state_message',
      desc: '',
      args: [],
    );
  }

  /// `Nothing to see here.`
  String get announcements_empty_state_message {
    return Intl.message(
      'Nothing to see here.',
      name: 'announcements_empty_state_message',
      desc: '',
      args: [],
    );
  }

  /// `Cash`
  String get history_payment_method_cash {
    return Intl.message(
      'Cash',
      name: 'history_payment_method_cash',
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

  /// `Canceled`
  String get trip_history_canceled_tab {
    return Intl.message(
      'Canceled',
      name: 'trip_history_canceled_tab',
      desc: '',
      args: [],
    );
  }

  /// `No past order has been recorded.`
  String get trip_history_empty_state_message {
    return Intl.message(
      'No past order has been recorded.',
      name: 'trip_history_empty_state_message',
      desc: '',
      args: [],
    );
  }

  /// `Mobile Number`
  String get profile_mobilenumber {
    return Intl.message(
      'Mobile Number',
      name: 'profile_mobilenumber',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get profile_firstname {
    return Intl.message(
      'First Name',
      name: 'profile_firstname',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get profile_lastname {
    return Intl.message(
      'Last Name',
      name: 'profile_lastname',
      desc: '',
      args: [],
    );
  }

  /// `E-Mail`
  String get profile_email {
    return Intl.message(
      'E-Mail',
      name: 'profile_email',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get profile_gender {
    return Intl.message(
      'Gender',
      name: 'profile_gender',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get enum_gender_male {
    return Intl.message(
      'Male',
      name: 'enum_gender_male',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get enum_gender_female {
    return Intl.message(
      'Female',
      name: 'enum_gender_female',
      desc: '',
      args: [],
    );
  }

  /// `Enter your`
  String get login_heading_first_line {
    return Intl.message(
      'Enter your',
      name: 'login_heading_first_line',
      desc: '',
      args: [],
    );
  }

  /// `mobile number`
  String get login_heading_second_line {
    return Intl.message(
      'mobile number',
      name: 'login_heading_second_line',
      desc: '',
      args: [],
    );
  }

  /// `We will send you confirmation code`
  String get login_heading_third_line {
    return Intl.message(
      'We will send you confirmation code',
      name: 'login_heading_third_line',
      desc: '',
      args: [],
    );
  }

  /// `Cell Number`
  String get login_cell_number_textfield_hint {
    return Intl.message(
      'Cell Number',
      name: 'login_cell_number_textfield_hint',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the phone number in correct format`
  String get login_cell_number_empty_error {
    return Intl.message(
      'Please enter the phone number in correct format',
      name: 'login_cell_number_empty_error',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get action_next {
    return Intl.message(
      'Next',
      name: 'action_next',
      desc: '',
      args: [],
    );
  }

  /// `Enter code sent`
  String get verify_phone_heading_first_line {
    return Intl.message(
      'Enter code sent',
      name: 'verify_phone_heading_first_line',
      desc: '',
      args: [],
    );
  }

  /// `to your phone`
  String get verify_phone_heading_second_line {
    return Intl.message(
      'to your phone',
      name: 'verify_phone_heading_second_line',
      desc: '',
      args: [],
    );
  }

  /// `We will send you the confirmation code`
  String get verify_phone_heading_third_line {
    return Intl.message(
      'We will send you the confirmation code',
      name: 'verify_phone_heading_third_line',
      desc: '',
      args: [],
    );
  }

  /// `Verification code is not entered.`
  String get verify_phone_code_empty_message {
    return Intl.message(
      'Verification code is not entered.',
      name: 'verify_phone_code_empty_message',
      desc: '',
      args: [],
    );
  }

  /// `Activity`
  String get wallet_activities_heading {
    return Intl.message(
      'Activity',
      name: 'wallet_activities_heading',
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

  /// `Final Destination`
  String get point_selection_final_destination {
    return Intl.message(
      'Final Destination',
      name: 'point_selection_final_destination',
      desc: '',
      args: [],
    );
  }

  /// `Add Destination`
  String get point_selection_add_destination {
    return Intl.message(
      'Add Destination',
      name: 'point_selection_add_destination',
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

  /// `Unknown`
  String get enum_gender_unknown {
    return Intl.message(
      'Unknown',
      name: 'enum_gender_unknown',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get enum_address_type_home {
    return Intl.message(
      'Home',
      name: 'enum_address_type_home',
      desc: '',
      args: [],
    );
  }

  /// `Work`
  String get enum_address_type_work {
    return Intl.message(
      'Work',
      name: 'enum_address_type_work',
      desc: '',
      args: [],
    );
  }

  /// `Partner`
  String get enum_address_type_partner {
    return Intl.message(
      'Partner',
      name: 'enum_address_type_partner',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get enum_address_type_other {
    return Intl.message(
      'Other',
      name: 'enum_address_type_other',
      desc: '',
      args: [],
    );
  }

  /// `Notification permission was denied previously. In order to get new order\'s notifications you can enable the permission from app settings.`
  String get message_notification_permission_denined_message {
    return Intl.message(
      'Notification permission was denied previously. In order to get new order\\\'s notifications you can enable the permission from app settings.',
      name: 'message_notification_permission_denined_message',
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

  /// `OK`
  String get action_ok {
    return Intl.message(
      'OK',
      name: 'action_ok',
      desc: '',
      args: [],
    );
  }

  /// `Website`
  String get menu_website {
    return Intl.message(
      'Website',
      name: 'menu_website',
      desc: '',
      args: [],
    );
  }

  /// `Confirm & Reserve ride`
  String get action_confirm_and_reserve_ride {
    return Intl.message(
      'Confirm & Reserve ride',
      name: 'action_confirm_and_reserve_ride',
      desc: '',
      args: [],
    );
  }

  /// `Reserve Ride`
  String get title_reserve_ride {
    return Intl.message(
      'Reserve Ride',
      name: 'title_reserve_ride',
      desc: '',
      args: [],
    );
  }

  /// `Region is not supported.`
  String get error_region_unsupported {
    return Intl.message(
      'Region is not supported.',
      name: 'error_region_unsupported',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get action_confirm {
    return Intl.message(
      'Confirm',
      name: 'action_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Wait time`
  String get title_wait_time {
    return Intl.message(
      'Wait time',
      name: 'title_wait_time',
      desc: '',
      args: [],
    );
  }

  /// `Add Credit`
  String get title_add_credit {
    return Intl.message(
      'Add Credit',
      name: 'title_add_credit',
      desc: '',
      args: [],
    );
  }

  /// `Would you like to add tip?`
  String get notice_tip_title {
    return Intl.message(
      'Would you like to add tip?',
      name: 'notice_tip_title',
      desc: '',
      args: [],
    );
  }

  /// `Adding tip is optional, You can add any amount you like as tip for the driver.`
  String get notice_tip_description {
    return Intl.message(
      'Adding tip is optional, You can add any amount you like as tip for the driver.',
      name: 'notice_tip_description',
      desc: '',
      args: [],
    );
  }

  /// `Pay for ride`
  String get action_pay_for_ride {
    return Intl.message(
      'Pay for ride',
      name: 'action_pay_for_ride',
      desc: '',
      args: [],
    );
  }

  /// `Confirm & Pay`
  String get action_confirm_and_pay {
    return Intl.message(
      'Confirm & Pay',
      name: 'action_confirm_and_pay',
      desc: '',
      args: [],
    );
  }

  /// `Add Photo`
  String get action_add_photo {
    return Intl.message(
      'Add Photo',
      name: 'action_add_photo',
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

  /// `Can not be empty`
  String get error_field_cant_be_empty {
    return Intl.message(
      'Can not be empty',
      name: 'error_field_cant_be_empty',
      desc: '',
      args: [],
    );
  }

  /// `Write a description of your issue...`
  String get issue_description_placeholder {
    return Intl.message(
      'Write a description of your issue...',
      name: 'issue_description_placeholder',
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

  /// `You can report any issue you had with your ride ,we will help you with the issue within a call.`
  String get issue_submit_description {
    return Intl.message(
      'You can report any issue you had with your ride ,we will help you with the issue within a call.',
      name: 'issue_submit_description',
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

  /// `Report issue`
  String get issue_submit_button {
    return Intl.message(
      'Report issue',
      name: 'issue_submit_button',
      desc: '',
      args: [],
    );
  }

  /// `Trip Information`
  String get trip_information_title {
    return Intl.message(
      'Trip Information',
      name: 'trip_information_title',
      desc: '',
      args: [],
    );
  }

  /// `Cash`
  String get payment_in_cash {
    return Intl.message(
      'Cash',
      name: 'payment_in_cash',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method`
  String get payment_method_title {
    return Intl.message(
      'Payment Method',
      name: 'payment_method_title',
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
