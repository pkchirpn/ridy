// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh locale. All the
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
  String get localeName => 'zh';

  static String m0(company) => "版权所有 © ${company}，保留所有权利。";

  static String m1(time) => "预订${time}";

  static String m2(count) => "和 ${count} 种其他货币";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "action_add_photo": MessageLookupByLibrary.simpleMessage("Add Photo"),
        "action_apply": MessageLookupByLibrary.simpleMessage("申请"),
        "action_cancel": MessageLookupByLibrary.simpleMessage("取消"),
        "action_confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "action_confirm_and_pay":
            MessageLookupByLibrary.simpleMessage("Confirm & Pay"),
        "action_confirm_and_reserve_ride":
            MessageLookupByLibrary.simpleMessage("Confirm & Reserve ride"),
        "action_delete": MessageLookupByLibrary.simpleMessage("删除"),
        "action_next": MessageLookupByLibrary.simpleMessage("下一个"),
        "action_ok": MessageLookupByLibrary.simpleMessage("OK"),
        "action_pay_for_ride":
            MessageLookupByLibrary.simpleMessage("Pay for ride"),
        "action_save": MessageLookupByLibrary.simpleMessage("节省"),
        "addresses_empty_state_message":
            MessageLookupByLibrary.simpleMessage("注意看这里。"),
        "announcements_empty_state_message":
            MessageLookupByLibrary.simpleMessage("这没东西看。"),
        "complaint_submit_success_message": MessageLookupByLibrary.simpleMessage(
            "Complaint is submitted. Please wait for a contact from our support reperesentitive about your inquiry."),
        "copyright_notice": m0,
        "coupon_heading": MessageLookupByLibrary.simpleMessage("输入下面的优惠券代码："),
        "coupon_textfield_hint": MessageLookupByLibrary.simpleMessage("优惠卷号码"),
        "create_address_details_empty_error":
            MessageLookupByLibrary.simpleMessage("请输入有关地址的详细信息"),
        "create_address_details_textfield_hint":
            MessageLookupByLibrary.simpleMessage("细节"),
        "create_address_name_empty_error":
            MessageLookupByLibrary.simpleMessage("请输入地点名称"),
        "create_address_title_textfield_hint":
            MessageLookupByLibrary.simpleMessage("标题"),
        "driver_info_card_call": MessageLookupByLibrary.simpleMessage("称呼"),
        "driver_info_card_message": MessageLookupByLibrary.simpleMessage("信息"),
        "enum_address_type_home": MessageLookupByLibrary.simpleMessage("Home"),
        "enum_address_type_other":
            MessageLookupByLibrary.simpleMessage("Other"),
        "enum_address_type_partner":
            MessageLookupByLibrary.simpleMessage("Partner"),
        "enum_address_type_work": MessageLookupByLibrary.simpleMessage("Work"),
        "enum_gender_female": MessageLookupByLibrary.simpleMessage("女性"),
        "enum_gender_male": MessageLookupByLibrary.simpleMessage("男性"),
        "enum_gender_unknown": MessageLookupByLibrary.simpleMessage("Unknown"),
        "enum_rider_transaction_deduct_correction":
            MessageLookupByLibrary.simpleMessage("更正"),
        "enum_rider_transaction_deduct_order_fee":
            MessageLookupByLibrary.simpleMessage("免费订购"),
        "enum_rider_transaction_deduct_withdraw":
            MessageLookupByLibrary.simpleMessage("提取"),
        "enum_rider_transaction_recharge_bank_transfer":
            MessageLookupByLibrary.simpleMessage("银行转帐"),
        "enum_rider_transaction_recharge_correction":
            MessageLookupByLibrary.simpleMessage("更正"),
        "enum_rider_transaction_recharge_gift":
            MessageLookupByLibrary.simpleMessage("礼物"),
        "enum_rider_transaction_recharge_in_app_payment":
            MessageLookupByLibrary.simpleMessage("应用内支付"),
        "enum_unknown": MessageLookupByLibrary.simpleMessage("未知"),
        "error_field_cant_be_empty":
            MessageLookupByLibrary.simpleMessage("Can not be empty"),
        "error_region_unsupported":
            MessageLookupByLibrary.simpleMessage("Region is not supported."),
        "history_payment_method_cash":
            MessageLookupByLibrary.simpleMessage("现金"),
        "invoice_apply_coupon_action":
            MessageLookupByLibrary.simpleMessage("申请优惠券"),
        "invoice_coupon_discount":
            MessageLookupByLibrary.simpleMessage("优惠券折扣"),
        "invoice_pay_online_action":
            MessageLookupByLibrary.simpleMessage("在线支付"),
        "invoice_service_fee": MessageLookupByLibrary.simpleMessage("服务费"),
        "invoice_subtotal": MessageLookupByLibrary.simpleMessage("小计"),
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
        "loading": MessageLookupByLibrary.simpleMessage("加载中"),
        "login_cell_number_empty_error":
            MessageLookupByLibrary.simpleMessage("请以正确的格式输入电话号码"),
        "login_cell_number_textfield_hint":
            MessageLookupByLibrary.simpleMessage("细胞数量"),
        "login_heading_first_line":
            MessageLookupByLibrary.simpleMessage("输入您的"),
        "login_heading_second_line":
            MessageLookupByLibrary.simpleMessage("手机号码"),
        "login_heading_third_line":
            MessageLookupByLibrary.simpleMessage("我们将向您发送确认码"),
        "looking_cancel_request": MessageLookupByLibrary.simpleMessage("取消请求"),
        "looking_heading":
            MessageLookupByLibrary.simpleMessage("正在寻找乘车，请稍候..."),
        "menu_about": MessageLookupByLibrary.simpleMessage("关于"),
        "menu_announcements": MessageLookupByLibrary.simpleMessage("公告"),
        "menu_chat": MessageLookupByLibrary.simpleMessage("Chat"),
        "menu_login": MessageLookupByLibrary.simpleMessage("登录"),
        "menu_logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "menu_profile": MessageLookupByLibrary.simpleMessage("轮廓"),
        "menu_saved_locations": MessageLookupByLibrary.simpleMessage("保存的位置"),
        "menu_trip_history": MessageLookupByLibrary.simpleMessage("旅行历史"),
        "menu_wallet": MessageLookupByLibrary.simpleMessage("钱包"),
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
        "place_search_hint": MessageLookupByLibrary.simpleMessage("输入位置关键字"),
        "point_selection_add_destination":
            MessageLookupByLibrary.simpleMessage("Add Destination"),
        "point_selection_confirm_pickup":
            MessageLookupByLibrary.simpleMessage("确认取件地点"),
        "point_selection_final_destination":
            MessageLookupByLibrary.simpleMessage("Final Destination"),
        "profile_email": MessageLookupByLibrary.simpleMessage("电子邮件"),
        "profile_firstname": MessageLookupByLibrary.simpleMessage("名"),
        "profile_gender": MessageLookupByLibrary.simpleMessage("性别"),
        "profile_lastname": MessageLookupByLibrary.simpleMessage("姓"),
        "profile_mobilenumber": MessageLookupByLibrary.simpleMessage("手机号码"),
        "review_action_submit_review":
            MessageLookupByLibrary.simpleMessage("提交评论"),
        "review_text_heading":
            MessageLookupByLibrary.simpleMessage("您如何评价您的经验？"),
        "review_textfield_hint": MessageLookupByLibrary.simpleMessage("添加评论"),
        "service_selection_book_later": m1,
        "service_selection_book_now":
            MessageLookupByLibrary.simpleMessage("现在预订"),
        "title_add_credit": MessageLookupByLibrary.simpleMessage("Add Credit"),
        "title_reserve_ride":
            MessageLookupByLibrary.simpleMessage("Reserve Ride"),
        "title_wait_time": MessageLookupByLibrary.simpleMessage("Wait time"),
        "top_up_sheet_pay_button": MessageLookupByLibrary.simpleMessage("支付"),
        "top_up_sheet_textfield_hint":
            MessageLookupByLibrary.simpleMessage("输入充值金额"),
        "trip_history_canceled_tab": MessageLookupByLibrary.simpleMessage("取消"),
        "trip_history_completed_tab":
            MessageLookupByLibrary.simpleMessage("完全的"),
        "trip_history_empty_state_message":
            MessageLookupByLibrary.simpleMessage("没有记录过去的订单。"),
        "trip_information_title":
            MessageLookupByLibrary.simpleMessage("Trip Information"),
        "verify_phone_code_empty_message":
            MessageLookupByLibrary.simpleMessage("未输入验证码。"),
        "verify_phone_heading_first_line":
            MessageLookupByLibrary.simpleMessage("输入发送的代码"),
        "verify_phone_heading_second_line":
            MessageLookupByLibrary.simpleMessage("到你的手机"),
        "verify_phone_heading_third_line":
            MessageLookupByLibrary.simpleMessage("我们将向您发送确认码"),
        "wallet_activities_heading":
            MessageLookupByLibrary.simpleMessage("Activities"),
        "wallet_add_credit": MessageLookupByLibrary.simpleMessage("添加信用"),
        "wallet_empty_state_message":
            MessageLookupByLibrary.simpleMessage("没有记录历史。"),
        "wallet_gateway_empty_state":
            MessageLookupByLibrary.simpleMessage("没有网关可用。"),
        "wallet_other_currencies_available": m2,
        "wallet_select_currency": MessageLookupByLibrary.simpleMessage("选择货币："),
        "wallet_select_payment_method":
            MessageLookupByLibrary.simpleMessage("选择付款方式："),
        "wallet_switch_currency": MessageLookupByLibrary.simpleMessage("转变")
      };
}
