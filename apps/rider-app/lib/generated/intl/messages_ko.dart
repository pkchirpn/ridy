// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ko locale. All the
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
  String get localeName => 'ko';

  static String m0(company) => "Copyright © ${company}, All rights reserved.";

  static String m1(time) => " 예약 ${time}";

  static String m2(count) => "및 ${count} 기타 통화";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "action_add_photo": MessageLookupByLibrary.simpleMessage("Add Photo"),
        "action_apply": MessageLookupByLibrary.simpleMessage("적용하다"),
        "action_cancel": MessageLookupByLibrary.simpleMessage("취소"),
        "action_confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "action_confirm_and_pay":
            MessageLookupByLibrary.simpleMessage("Confirm & Pay"),
        "action_confirm_and_reserve_ride":
            MessageLookupByLibrary.simpleMessage("Confirm & Reserve ride"),
        "action_delete": MessageLookupByLibrary.simpleMessage("삭제"),
        "action_next": MessageLookupByLibrary.simpleMessage("다음"),
        "action_ok": MessageLookupByLibrary.simpleMessage("OK"),
        "action_pay_for_ride":
            MessageLookupByLibrary.simpleMessage("Pay for ride"),
        "action_save": MessageLookupByLibrary.simpleMessage("구하다"),
        "addresses_empty_state_message":
            MessageLookupByLibrary.simpleMessage("여기를 참조하십시오."),
        "announcements_empty_state_message":
            MessageLookupByLibrary.simpleMessage("여기는 볼게 없다."),
        "complaint_submit_success_message": MessageLookupByLibrary.simpleMessage(
            "Complaint is submitted. Please wait for a contact from our support reperesentitive about your inquiry."),
        "copyright_notice": m0,
        "coupon_heading":
            MessageLookupByLibrary.simpleMessage("아래 쿠폰 코드를 입력하세요."),
        "coupon_textfield_hint": MessageLookupByLibrary.simpleMessage("쿠폰 코드"),
        "create_address_details_empty_error":
            MessageLookupByLibrary.simpleMessage("주소에 대한 세부정보를 입력하세요."),
        "create_address_details_textfield_hint":
            MessageLookupByLibrary.simpleMessage("세부"),
        "create_address_name_empty_error":
            MessageLookupByLibrary.simpleMessage("위치 이름을 입력하세요."),
        "create_address_title_textfield_hint":
            MessageLookupByLibrary.simpleMessage("제목"),
        "driver_info_card_call": MessageLookupByLibrary.simpleMessage("부르다"),
        "driver_info_card_message": MessageLookupByLibrary.simpleMessage("메세지"),
        "enum_address_type_home": MessageLookupByLibrary.simpleMessage("Home"),
        "enum_address_type_other":
            MessageLookupByLibrary.simpleMessage("Other"),
        "enum_address_type_partner":
            MessageLookupByLibrary.simpleMessage("Partner"),
        "enum_address_type_work": MessageLookupByLibrary.simpleMessage("Work"),
        "enum_gender_female": MessageLookupByLibrary.simpleMessage("여자"),
        "enum_gender_male": MessageLookupByLibrary.simpleMessage("남성"),
        "enum_gender_unknown": MessageLookupByLibrary.simpleMessage("Unknown"),
        "enum_rider_transaction_deduct_correction":
            MessageLookupByLibrary.simpleMessage("보정"),
        "enum_rider_transaction_deduct_order_fee":
            MessageLookupByLibrary.simpleMessage("무료 주문"),
        "enum_rider_transaction_deduct_withdraw":
            MessageLookupByLibrary.simpleMessage("철회하다"),
        "enum_rider_transaction_recharge_bank_transfer":
            MessageLookupByLibrary.simpleMessage("은행 송금"),
        "enum_rider_transaction_recharge_correction":
            MessageLookupByLibrary.simpleMessage("보정"),
        "enum_rider_transaction_recharge_gift":
            MessageLookupByLibrary.simpleMessage("선물"),
        "enum_rider_transaction_recharge_in_app_payment":
            MessageLookupByLibrary.simpleMessage("인앱 결제"),
        "enum_unknown": MessageLookupByLibrary.simpleMessage("불명"),
        "error_field_cant_be_empty":
            MessageLookupByLibrary.simpleMessage("Can not be empty"),
        "error_region_unsupported":
            MessageLookupByLibrary.simpleMessage("Region is not supported."),
        "history_payment_method_cash":
            MessageLookupByLibrary.simpleMessage("현금"),
        "invoice_apply_coupon_action":
            MessageLookupByLibrary.simpleMessage("쿠폰 적용"),
        "invoice_coupon_discount":
            MessageLookupByLibrary.simpleMessage("쿠폰 할인"),
        "invoice_pay_online_action":
            MessageLookupByLibrary.simpleMessage("온라인 지불"),
        "invoice_service_fee": MessageLookupByLibrary.simpleMessage("서비스 요금"),
        "invoice_subtotal": MessageLookupByLibrary.simpleMessage("소계"),
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
        "loading": MessageLookupByLibrary.simpleMessage("로딩 중"),
        "login_cell_number_empty_error":
            MessageLookupByLibrary.simpleMessage("전화번호를 올바른 형식으로 입력하세요."),
        "login_cell_number_textfield_hint":
            MessageLookupByLibrary.simpleMessage("셀 번호"),
        "login_heading_first_line": MessageLookupByLibrary.simpleMessage("귀하의"),
        "login_heading_second_line":
            MessageLookupByLibrary.simpleMessage("휴대폰 번호"),
        "login_heading_third_line":
            MessageLookupByLibrary.simpleMessage("확인 코드를 보내드립니다"),
        "looking_cancel_request": MessageLookupByLibrary.simpleMessage("요청 취소"),
        "looking_heading": MessageLookupByLibrary.simpleMessage(
            "라이드를 찾고 있습니다. 잠시만 기다려 주십시오..."),
        "menu_about": MessageLookupByLibrary.simpleMessage("에 대한"),
        "menu_announcements": MessageLookupByLibrary.simpleMessage("공지사항"),
        "menu_chat": MessageLookupByLibrary.simpleMessage("Chat"),
        "menu_login": MessageLookupByLibrary.simpleMessage("로그인"),
        "menu_logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "menu_profile": MessageLookupByLibrary.simpleMessage("프로필"),
        "menu_saved_locations": MessageLookupByLibrary.simpleMessage("저장된 위치"),
        "menu_trip_history": MessageLookupByLibrary.simpleMessage("여행 이력"),
        "menu_wallet": MessageLookupByLibrary.simpleMessage("지갑"),
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
            MessageLookupByLibrary.simpleMessage("위치의 키워드를 입력하십시오"),
        "point_selection_add_destination":
            MessageLookupByLibrary.simpleMessage("Add Destination"),
        "point_selection_confirm_pickup":
            MessageLookupByLibrary.simpleMessage("픽업 장소 확인"),
        "point_selection_final_destination":
            MessageLookupByLibrary.simpleMessage("Final Destination"),
        "profile_email": MessageLookupByLibrary.simpleMessage("이메일"),
        "profile_firstname": MessageLookupByLibrary.simpleMessage("이름"),
        "profile_gender": MessageLookupByLibrary.simpleMessage("성별"),
        "profile_lastname": MessageLookupByLibrary.simpleMessage("성"),
        "profile_mobilenumber": MessageLookupByLibrary.simpleMessage("휴대폰 번호"),
        "review_action_submit_review":
            MessageLookupByLibrary.simpleMessage("검토 제출"),
        "review_text_heading":
            MessageLookupByLibrary.simpleMessage("귀하의 경험을 어떻게 평가하시겠습니까?"),
        "review_textfield_hint": MessageLookupByLibrary.simpleMessage("댓글 추가"),
        "service_selection_book_later": m1,
        "service_selection_book_now":
            MessageLookupByLibrary.simpleMessage("지금 예약"),
        "title_add_credit": MessageLookupByLibrary.simpleMessage("Add Credit"),
        "title_reserve_ride":
            MessageLookupByLibrary.simpleMessage("Reserve Ride"),
        "title_wait_time": MessageLookupByLibrary.simpleMessage("Wait time"),
        "top_up_sheet_pay_button": MessageLookupByLibrary.simpleMessage("지불"),
        "top_up_sheet_textfield_hint":
            MessageLookupByLibrary.simpleMessage("충전할 금액 입력"),
        "trip_history_canceled_tab":
            MessageLookupByLibrary.simpleMessage("취소 된"),
        "trip_history_completed_tab":
            MessageLookupByLibrary.simpleMessage("완전한"),
        "trip_history_empty_state_message":
            MessageLookupByLibrary.simpleMessage("기록된 과거 주문이 없습니다."),
        "trip_information_title":
            MessageLookupByLibrary.simpleMessage("Trip Information"),
        "verify_phone_code_empty_message":
            MessageLookupByLibrary.simpleMessage("인증 코드가 입력되지 않았습니다."),
        "verify_phone_heading_first_line":
            MessageLookupByLibrary.simpleMessage("전송된 코드 입력"),
        "verify_phone_heading_second_line":
            MessageLookupByLibrary.simpleMessage("당신의 전화에"),
        "verify_phone_heading_third_line":
            MessageLookupByLibrary.simpleMessage("확인 코드를 보내드립니다"),
        "wallet_activities_heading":
            MessageLookupByLibrary.simpleMessage("Activities"),
        "wallet_add_credit": MessageLookupByLibrary.simpleMessage("크레딧 추가"),
        "wallet_empty_state_message":
            MessageLookupByLibrary.simpleMessage("기록된 기록이 없습니다."),
        "wallet_gateway_empty_state":
            MessageLookupByLibrary.simpleMessage("사용 가능한 게이트웨이가 없습니다."),
        "wallet_other_currencies_available": m2,
        "wallet_select_currency":
            MessageLookupByLibrary.simpleMessage("통화 선택:"),
        "wallet_select_payment_method":
            MessageLookupByLibrary.simpleMessage("지불 방법 선택:"),
        "wallet_switch_currency": MessageLookupByLibrary.simpleMessage("스위치")
      };
}
