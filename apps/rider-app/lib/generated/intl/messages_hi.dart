// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a hi locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'hi';

  static String m0(company) => "कॉपीराइट © ${company}, ठीक है सुरक्षित।";

  static String m1(time) => "${time} के लिए बुक करें";

  static String m2(count) => "और ${count} अन्य मुद्राएं";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "action_add_photo": MessageLookupByLibrary.simpleMessage("Add Photo"),
        "action_apply": MessageLookupByLibrary.simpleMessage("लागू करना"),
        "action_cancel": MessageLookupByLibrary.simpleMessage("रद्द करें"),
        "action_confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "action_confirm_and_pay":
            MessageLookupByLibrary.simpleMessage("Confirm & Pay"),
        "action_confirm_and_reserve_ride":
            MessageLookupByLibrary.simpleMessage("Confirm & Reserve ride"),
        "action_delete": MessageLookupByLibrary.simpleMessage("हटाएं"),
        "action_next": MessageLookupByLibrary.simpleMessage("अगला"),
        "action_ok": MessageLookupByLibrary.simpleMessage("OK"),
        "action_pay_for_ride":
            MessageLookupByLibrary.simpleMessage("Pay for ride"),
        "action_save": MessageLookupByLibrary.simpleMessage("सहेजें"),
        "addresses_empty_state_message": MessageLookupByLibrary.simpleMessage(
            "यहां देखने के लिए ध्यान दें।"),
        "announcements_empty_state_message":
            MessageLookupByLibrary.simpleMessage(
                "यहाँ देखने के लिए कुछ नही है।"),
        "complaint_submit_success_message": MessageLookupByLibrary.simpleMessage(
            "Complaint is submitted. Please wait for a contact from our support reperesentitive about your inquiry."),
        "copyright_notice": m0,
        "coupon_heading":
            MessageLookupByLibrary.simpleMessage("नीचे कूपन कोड दर्ज करें:"),
        "coupon_textfield_hint":
            MessageLookupByLibrary.simpleMessage("कूपन कोड"),
        "create_address_details_empty_error":
            MessageLookupByLibrary.simpleMessage(
                "कृपया पते के बारे में विवरण दर्ज करें"),
        "create_address_details_textfield_hint":
            MessageLookupByLibrary.simpleMessage("विवरण"),
        "create_address_name_empty_error": MessageLookupByLibrary.simpleMessage(
            "कृपया स्थान का नाम दर्ज करें"),
        "create_address_title_textfield_hint":
            MessageLookupByLibrary.simpleMessage("शीर्षक"),
        "driver_info_card_call": MessageLookupByLibrary.simpleMessage("बुलाना"),
        "driver_info_card_message":
            MessageLookupByLibrary.simpleMessage("संदेश"),
        "enum_address_type_home": MessageLookupByLibrary.simpleMessage("Home"),
        "enum_address_type_other":
            MessageLookupByLibrary.simpleMessage("Other"),
        "enum_address_type_partner":
            MessageLookupByLibrary.simpleMessage("Partner"),
        "enum_address_type_work": MessageLookupByLibrary.simpleMessage("Work"),
        "enum_gender_female": MessageLookupByLibrary.simpleMessage("महिला"),
        "enum_gender_male": MessageLookupByLibrary.simpleMessage("पुरुष"),
        "enum_gender_unknown": MessageLookupByLibrary.simpleMessage("Unknown"),
        "enum_rider_transaction_deduct_correction":
            MessageLookupByLibrary.simpleMessage("सुधार"),
        "enum_rider_transaction_deduct_order_fee":
            MessageLookupByLibrary.simpleMessage("ऑर्डर फ्री"),
        "enum_rider_transaction_deduct_withdraw":
            MessageLookupByLibrary.simpleMessage("निकालना"),
        "enum_rider_transaction_recharge_bank_transfer":
            MessageLookupByLibrary.simpleMessage("बैंक ट्रांसफर"),
        "enum_rider_transaction_recharge_correction":
            MessageLookupByLibrary.simpleMessage("सुधार"),
        "enum_rider_transaction_recharge_gift":
            MessageLookupByLibrary.simpleMessage("उपहार"),
        "enum_rider_transaction_recharge_in_app_payment":
            MessageLookupByLibrary.simpleMessage("इन-ऐप भुगतान"),
        "enum_unknown": MessageLookupByLibrary.simpleMessage("अनजान"),
        "error_field_cant_be_empty":
            MessageLookupByLibrary.simpleMessage("Can not be empty"),
        "error_region_unsupported":
            MessageLookupByLibrary.simpleMessage("Region is not supported."),
        "history_payment_method_cash":
            MessageLookupByLibrary.simpleMessage("नकद"),
        "invoice_apply_coupon_action":
            MessageLookupByLibrary.simpleMessage("कूपन लागू करें"),
        "invoice_coupon_discount":
            MessageLookupByLibrary.simpleMessage("कूपन छूट"),
        "invoice_pay_online_action":
            MessageLookupByLibrary.simpleMessage("ऑनलाइन भुगतान करें"),
        "invoice_service_fee":
            MessageLookupByLibrary.simpleMessage("सेवा शुल्क"),
        "invoice_subtotal": MessageLookupByLibrary.simpleMessage("उप-योग"),
        "issue_description_placeholder": MessageLookupByLibrary.simpleMessage(
            "Write a description of your issue..."),
        "issue_subject_placeholder":
            MessageLookupByLibrary.simpleMessage("Subject"),
        "issue_submit_button":
            MessageLookupByLibrary.simpleMessage("Report issue"),
        "issue_submit_description": MessageLookupByLibrary.simpleMessage(
            "You can report any issue you had with your ride ,we will help you with the issue within a call."),
        "issue_submit_title":
            MessageLookupByLibrary.simpleMessage("Report an issue"),
        "loading": MessageLookupByLibrary.simpleMessage("लोड हो रहा है"),
        "login_cell_number_empty_error": MessageLookupByLibrary.simpleMessage(
            "कृपया फ़ोन नंबर सही प्रारूप में दर्ज करें"),
        "login_cell_number_textfield_hint":
            MessageLookupByLibrary.simpleMessage("मोबाइल नम्बर"),
        "login_heading_first_line":
            MessageLookupByLibrary.simpleMessage("अपना भरें"),
        "login_heading_second_line":
            MessageLookupByLibrary.simpleMessage("मोबाइल नंबर"),
        "login_heading_third_line": MessageLookupByLibrary.simpleMessage(
            "हम आपको पुष्टिकरण कोड भेजेंगे"),
        "looking_cancel_request":
            MessageLookupByLibrary.simpleMessage("निवेदन अस्विकार"),
        "looking_heading": MessageLookupByLibrary.simpleMessage(
            "सवारी ढूंढ रहे हैं, कृपया प्रतीक्षा करें..."),
        "menu_about": MessageLookupByLibrary.simpleMessage("के बारे में"),
        "menu_announcements": MessageLookupByLibrary.simpleMessage("घोषणाओं"),
        "menu_chat": MessageLookupByLibrary.simpleMessage("Chat"),
        "menu_login": MessageLookupByLibrary.simpleMessage("लॉग इन करें"),
        "menu_logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "menu_profile": MessageLookupByLibrary.simpleMessage("प्रोफ़ाइल"),
        "menu_saved_locations":
            MessageLookupByLibrary.simpleMessage("सहेजे गए स्थान"),
        "menu_trip_history":
            MessageLookupByLibrary.simpleMessage("यात्रा इतिहास"),
        "menu_wallet": MessageLookupByLibrary.simpleMessage("बटुआ"),
        "menu_website": MessageLookupByLibrary.simpleMessage("Website"),
        "message_notification_permission_denined_message":
            MessageLookupByLibrary.simpleMessage(
                "Notification permission was denied previously. In order to get new order\\\'s notifications you can enable the permission from app settings."),
        "message_notification_permission_title":
            MessageLookupByLibrary.simpleMessage("Notification Permission"),
        "notice_tip_description": MessageLookupByLibrary.simpleMessage(
            "Adding tip is optional, You can add any amount you like as tip for the driver."),
        "notice_tip_title":
            MessageLookupByLibrary.simpleMessage("Would you like to add tip?"),
        "payment_in_cash": MessageLookupByLibrary.simpleMessage("Cash"),
        "payment_method_title":
            MessageLookupByLibrary.simpleMessage("Payment Method"),
        "place_search_hint":
            MessageLookupByLibrary.simpleMessage("स्थान के कीवर्ड दर्ज करें"),
        "point_selection_add_destination":
            MessageLookupByLibrary.simpleMessage("Add Destination"),
        "point_selection_confirm_pickup":
            MessageLookupByLibrary.simpleMessage("पिकअप स्थान की पुष्टि करें"),
        "point_selection_final_destination":
            MessageLookupByLibrary.simpleMessage("Final Destination"),
        "profile_email": MessageLookupByLibrary.simpleMessage("ईमेल"),
        "profile_firstname": MessageLookupByLibrary.simpleMessage("पहला नाम"),
        "profile_gender": MessageLookupByLibrary.simpleMessage("लिंग"),
        "profile_lastname": MessageLookupByLibrary.simpleMessage("उपनाम"),
        "profile_mobilenumber":
            MessageLookupByLibrary.simpleMessage("मोबाइल नंबर"),
        "review_action_submit_review":
            MessageLookupByLibrary.simpleMessage("समीक्षा जमा करें"),
        "review_text_heading": MessageLookupByLibrary.simpleMessage(
            "आपके द्वारा आपके अनुभव का मूल्यांकन किस तरह किया जाएगा?"),
        "review_textfield_hint":
            MessageLookupByLibrary.simpleMessage("टिप्पणी जोड़ें"),
        "service_selection_book_later": m1,
        "service_selection_book_now":
            MessageLookupByLibrary.simpleMessage("अभी बुक करें"),
        "title_add_credit": MessageLookupByLibrary.simpleMessage("Add Credit"),
        "title_reserve_ride":
            MessageLookupByLibrary.simpleMessage("Reserve Ride"),
        "title_wait_time": MessageLookupByLibrary.simpleMessage("Wait time"),
        "top_up_sheet_pay_button": MessageLookupByLibrary.simpleMessage("वेतन"),
        "top_up_sheet_textfield_hint": MessageLookupByLibrary.simpleMessage(
            "रिचार्ज करने के लिए इनपुट राशि"),
        "trip_history_canceled_tab":
            MessageLookupByLibrary.simpleMessage("रद्द"),
        "trip_history_completed_tab":
            MessageLookupByLibrary.simpleMessage("पूरा हुआ"),
        "trip_history_empty_state_message":
            MessageLookupByLibrary.simpleMessage(
                "पिछले कोई आदेश दर्ज नहीं किया गया है।"),
        "trip_information_title":
            MessageLookupByLibrary.simpleMessage("Trip Information"),
        "verify_phone_code_empty_message": MessageLookupByLibrary.simpleMessage(
            "सत्यापन कोड दर्ज नहीं किया गया है।"),
        "verify_phone_heading_first_line":
            MessageLookupByLibrary.simpleMessage("भेजा गया कोड दर्ज करें"),
        "verify_phone_heading_second_line":
            MessageLookupByLibrary.simpleMessage("आपके फोन पर"),
        "verify_phone_heading_third_line": MessageLookupByLibrary.simpleMessage(
            "हम आपको पुष्टिकरण कोड भेजेंगे"),
        "wallet_activities_heading":
            MessageLookupByLibrary.simpleMessage("Activities"),
        "wallet_add_credit":
            MessageLookupByLibrary.simpleMessage("क्रेडिट जोड़ने"),
        "wallet_empty_state_message":
            MessageLookupByLibrary.simpleMessage("कोई इतिहास दर्ज नहीं है।"),
        "wallet_gateway_empty_state":
            MessageLookupByLibrary.simpleMessage("कोई गेटवे उपलब्ध नहीं है।"),
        "wallet_other_currencies_available": m2,
        "wallet_select_currency":
            MessageLookupByLibrary.simpleMessage("मुद्रा चुनें:"),
        "wallet_select_payment_method":
            MessageLookupByLibrary.simpleMessage("भुगतान का तरीका चुनें:"),
        "wallet_switch_currency": MessageLookupByLibrary.simpleMessage("स्विच")
      };
}
