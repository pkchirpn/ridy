// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
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
  String get localeName => 'ru';

  static String m0(company) => "Copyright © ${company}, Все права защищены.";

  static String m1(time) => "Забронировать для ${time}";

  static String m2(count) => "& ${count} другие валюты";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "action_add_photo": MessageLookupByLibrary.simpleMessage("Add Photo"),
        "action_apply":
            MessageLookupByLibrary.simpleMessage("Подать заявление"),
        "action_cancel": MessageLookupByLibrary.simpleMessage("Отмена"),
        "action_confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "action_confirm_and_pay":
            MessageLookupByLibrary.simpleMessage("Confirm & Pay"),
        "action_confirm_and_reserve_ride":
            MessageLookupByLibrary.simpleMessage("Confirm & Reserve ride"),
        "action_delete": MessageLookupByLibrary.simpleMessage("Удалить"),
        "action_next": MessageLookupByLibrary.simpleMessage("Следующий"),
        "action_ok": MessageLookupByLibrary.simpleMessage("OK"),
        "action_pay_for_ride":
            MessageLookupByLibrary.simpleMessage("Pay for ride"),
        "action_save": MessageLookupByLibrary.simpleMessage("Сохранить"),
        "addresses_empty_state_message": MessageLookupByLibrary.simpleMessage(
            "Обратите внимание на то, чтобы увидеть здесь."),
        "announcements_empty_state_message":
            MessageLookupByLibrary.simpleMessage("Здесь ничего нет."),
        "complaint_submit_success_message": MessageLookupByLibrary.simpleMessage(
            "Complaint is submitted. Please wait for a contact from our support reperesentitive about your inquiry."),
        "copyright_notice": m0,
        "coupon_heading":
            MessageLookupByLibrary.simpleMessage("Введите код купона ниже:"),
        "coupon_textfield_hint":
            MessageLookupByLibrary.simpleMessage("Код купона"),
        "create_address_details_empty_error":
            MessageLookupByLibrary.simpleMessage(
                "Пожалуйста, введите данные об адресе"),
        "create_address_details_textfield_hint":
            MessageLookupByLibrary.simpleMessage("Подробности"),
        "create_address_name_empty_error": MessageLookupByLibrary.simpleMessage(
            "Пожалуйста, введите название места"),
        "create_address_title_textfield_hint":
            MessageLookupByLibrary.simpleMessage("Заголовок"),
        "driver_info_card_call": MessageLookupByLibrary.simpleMessage("Вызов"),
        "driver_info_card_message":
            MessageLookupByLibrary.simpleMessage("Сообщение"),
        "enum_address_type_home": MessageLookupByLibrary.simpleMessage("Home"),
        "enum_address_type_other":
            MessageLookupByLibrary.simpleMessage("Other"),
        "enum_address_type_partner":
            MessageLookupByLibrary.simpleMessage("Partner"),
        "enum_address_type_work": MessageLookupByLibrary.simpleMessage("Work"),
        "enum_gender_female": MessageLookupByLibrary.simpleMessage("женский"),
        "enum_gender_male": MessageLookupByLibrary.simpleMessage("Мужчина"),
        "enum_gender_unknown": MessageLookupByLibrary.simpleMessage("Unknown"),
        "enum_rider_transaction_deduct_correction":
            MessageLookupByLibrary.simpleMessage("Исправление"),
        "enum_rider_transaction_deduct_order_fee":
            MessageLookupByLibrary.simpleMessage("Заказать бесплатно"),
        "enum_rider_transaction_deduct_withdraw":
            MessageLookupByLibrary.simpleMessage("Снять со счета"),
        "enum_rider_transaction_recharge_bank_transfer":
            MessageLookupByLibrary.simpleMessage("Банковский перевод"),
        "enum_rider_transaction_recharge_correction":
            MessageLookupByLibrary.simpleMessage("Исправление"),
        "enum_rider_transaction_recharge_gift":
            MessageLookupByLibrary.simpleMessage("Подарок"),
        "enum_rider_transaction_recharge_in_app_payment":
            MessageLookupByLibrary.simpleMessage("Оплата в приложении"),
        "enum_unknown": MessageLookupByLibrary.simpleMessage("Unkonwn"),
        "error_field_cant_be_empty":
            MessageLookupByLibrary.simpleMessage("Can not be empty"),
        "error_region_unsupported":
            MessageLookupByLibrary.simpleMessage("Region is not supported."),
        "history_payment_method_cash":
            MessageLookupByLibrary.simpleMessage("Наличные"),
        "invoice_apply_coupon_action":
            MessageLookupByLibrary.simpleMessage("Применить купон"),
        "invoice_coupon_discount":
            MessageLookupByLibrary.simpleMessage("Скидка по купону"),
        "invoice_pay_online_action":
            MessageLookupByLibrary.simpleMessage("Оплатить онлайн"),
        "invoice_service_fee":
            MessageLookupByLibrary.simpleMessage("Плата за обслуживание"),
        "invoice_subtotal":
            MessageLookupByLibrary.simpleMessage("Промежуточный итог"),
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
        "loading": MessageLookupByLibrary.simpleMessage("Загрузка"),
        "login_cell_number_empty_error": MessageLookupByLibrary.simpleMessage(
            "Пожалуйста, введите номер телефона в правильном формате"),
        "login_cell_number_textfield_hint":
            MessageLookupByLibrary.simpleMessage("Сотовый номер"),
        "login_heading_first_line":
            MessageLookupByLibrary.simpleMessage("Введите ваш"),
        "login_heading_second_line":
            MessageLookupByLibrary.simpleMessage("номер мобильного"),
        "login_heading_third_line": MessageLookupByLibrary.simpleMessage(
            "Мы отправим вам код подтверждения"),
        "looking_cancel_request":
            MessageLookupByLibrary.simpleMessage("Отменить запрос"),
        "looking_heading": MessageLookupByLibrary.simpleMessage(
            "Ищете поездку, подождите ..."),
        "menu_about": MessageLookupByLibrary.simpleMessage("О"),
        "menu_announcements": MessageLookupByLibrary.simpleMessage("Анонсы"),
        "menu_chat": MessageLookupByLibrary.simpleMessage("Chat"),
        "menu_login": MessageLookupByLibrary.simpleMessage("Авторизоваться"),
        "menu_logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "menu_profile": MessageLookupByLibrary.simpleMessage("Профиль"),
        "menu_saved_locations":
            MessageLookupByLibrary.simpleMessage("Сохраненные локации"),
        "menu_trip_history":
            MessageLookupByLibrary.simpleMessage("История поездки"),
        "menu_wallet": MessageLookupByLibrary.simpleMessage("Кошелек"),
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
        "place_search_hint": MessageLookupByLibrary.simpleMessage(
            "Введите ключевые слова местоположения"),
        "point_selection_add_destination":
            MessageLookupByLibrary.simpleMessage("Add Destination"),
        "point_selection_confirm_pickup":
            MessageLookupByLibrary.simpleMessage("Подтвердите место получения"),
        "point_selection_final_destination":
            MessageLookupByLibrary.simpleMessage("Final Destination"),
        "profile_email": MessageLookupByLibrary.simpleMessage("Эл. почта"),
        "profile_firstname": MessageLookupByLibrary.simpleMessage("Имя"),
        "profile_gender": MessageLookupByLibrary.simpleMessage("Пол"),
        "profile_lastname": MessageLookupByLibrary.simpleMessage("Фамилия"),
        "profile_mobilenumber":
            MessageLookupByLibrary.simpleMessage("Номер мобильного"),
        "review_action_submit_review":
            MessageLookupByLibrary.simpleMessage("добавить отзыв"),
        "review_text_heading":
            MessageLookupByLibrary.simpleMessage("Как вы оцените свой опыт?"),
        "review_textfield_hint":
            MessageLookupByLibrary.simpleMessage("Добавить комментарий"),
        "service_selection_book_later": m1,
        "service_selection_book_now":
            MessageLookupByLibrary.simpleMessage("Заказать сейчас"),
        "title_add_credit": MessageLookupByLibrary.simpleMessage("Add Credit"),
        "title_reserve_ride":
            MessageLookupByLibrary.simpleMessage("Reserve Ride"),
        "title_wait_time": MessageLookupByLibrary.simpleMessage("Wait time"),
        "top_up_sheet_pay_button":
            MessageLookupByLibrary.simpleMessage("Платить"),
        "top_up_sheet_textfield_hint": MessageLookupByLibrary.simpleMessage(
            "Введите сумму для пополнения"),
        "trip_history_canceled_tab":
            MessageLookupByLibrary.simpleMessage("Отменено"),
        "trip_history_completed_tab":
            MessageLookupByLibrary.simpleMessage("Завершенный"),
        "trip_history_empty_state_message":
            MessageLookupByLibrary.simpleMessage(
                "Предыдущий заказ не зарегистрирован."),
        "trip_information_title":
            MessageLookupByLibrary.simpleMessage("Trip Information"),
        "verify_phone_code_empty_message": MessageLookupByLibrary.simpleMessage(
            "Код подтверждения не введен."),
        "verify_phone_heading_first_line":
            MessageLookupByLibrary.simpleMessage("Введите отправленный код"),
        "verify_phone_heading_second_line":
            MessageLookupByLibrary.simpleMessage("на свой телефон"),
        "verify_phone_heading_third_line": MessageLookupByLibrary.simpleMessage(
            "Мы отправим вам код подтверждения"),
        "wallet_activities_heading":
            MessageLookupByLibrary.simpleMessage("Activities"),
        "wallet_add_credit":
            MessageLookupByLibrary.simpleMessage("Добавить кредит"),
        "wallet_empty_state_message":
            MessageLookupByLibrary.simpleMessage("История не записана."),
        "wallet_gateway_empty_state":
            MessageLookupByLibrary.simpleMessage("Шлюз недоступен."),
        "wallet_other_currencies_available": m2,
        "wallet_select_currency":
            MessageLookupByLibrary.simpleMessage("Выберите валюту:"),
        "wallet_select_payment_method":
            MessageLookupByLibrary.simpleMessage("Выберите способ оплаты:"),
        "wallet_switch_currency":
            MessageLookupByLibrary.simpleMessage("Выключатель")
      };
}
