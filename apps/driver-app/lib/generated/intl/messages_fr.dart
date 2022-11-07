// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr locale. All the
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
  String get localeName => 'fr';

  static String m0(company) => "Copyright © ${company}, tout droit réservé.";

  static String m1(count) => "& ${count} autres devises";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "account_number":
            MessageLookupByLibrary.simpleMessage("Numéro de compte"),
        "action_cancel": MessageLookupByLibrary.simpleMessage("Annuler"),
        "action_ok": MessageLookupByLibrary.simpleMessage("d\'accord"),
        "action_upload_document":
            MessageLookupByLibrary.simpleMessage("Télécharger le document"),
        "address": MessageLookupByLibrary.simpleMessage("Adresse"),
        "available_order_action_accept":
            MessageLookupByLibrary.simpleMessage("Accepter la commande"),
        "available_order_cost": MessageLookupByLibrary.simpleMessage("Coût"),
        "available_order_dropoff_location":
            MessageLookupByLibrary.simpleMessage("Point de chute"),
        "available_order_pickup_location":
            MessageLookupByLibrary.simpleMessage("Lieu de ramassage"),
        "bankRoutingNumber": MessageLookupByLibrary.simpleMessage(
            "Numéro d\'acheminement bancaire"),
        "bank_name": MessageLookupByLibrary.simpleMessage("Nom de banque"),
        "bank_routing_numbe": MessageLookupByLibrary.simpleMessage(
            "Numéro d\'acheminement bancaire"),
        "bank_swift": MessageLookupByLibrary.simpleMessage("Banque Swift"),
        "button_report_issue":
            MessageLookupByLibrary.simpleMessage("Report an issue"),
        "car_color":
            MessageLookupByLibrary.simpleMessage("Couleur de la voiture"),
        "car_model": MessageLookupByLibrary.simpleMessage("Modèle de voiture"),
        "car_production_year":
            MessageLookupByLibrary.simpleMessage("Année de production"),
        "cell_number":
            MessageLookupByLibrary.simpleMessage("Numéro de téléphone"),
        "certificate_number":
            MessageLookupByLibrary.simpleMessage("Numéro de certificat"),
        "complaint_submit_success_message": MessageLookupByLibrary.simpleMessage(
            "Complaint is submitted. Please wait for a contact from our support reperesentitive about your inquiry."),
        "copyright_notice": m0,
        "driver_register_contact_details_title":
            MessageLookupByLibrary.simpleMessage("Détails du contact"),
        "driver_register_document_first":
            MessageLookupByLibrary.simpleMessage("1-ID"),
        "driver_register_document_second":
            MessageLookupByLibrary.simpleMessage("2-Permis de conduire"),
        "driver_register_document_third": MessageLookupByLibrary.simpleMessage(
            "3-Document de propriété de Ride"),
        "driver_register_profile_submitted_message":
            MessageLookupByLibrary.simpleMessage(
                "Votre profil est soumis à l\'approbation de l\'administrateur. Vous pouvez revenir plus tard pour voir l\'état de votre soumission."),
        "driver_register_ride_details_step_title":
            MessageLookupByLibrary.simpleMessage("Détails du trajet"),
        "driver_register_step_documents_heading":
            MessageLookupByLibrary.simpleMessage(
                "Afin de vérifier les documents ci-dessus, nous avons besoin des documents ci-dessous téléchargés"),
        "driver_register_step_documents_title":
            MessageLookupByLibrary.simpleMessage("Documents"),
        "driver_register_step_payout_details_title":
            MessageLookupByLibrary.simpleMessage("Détails du paiement"),
        "driver_register_title": MessageLookupByLibrary.simpleMessage(
            "Enregistrement du conducteur"),
        "driver_register_verification_code_textfield_hint":
            MessageLookupByLibrary.simpleMessage("Le code de vérification"),
        "driver_registration_approved_demo_mode":
            MessageLookupByLibrary.simpleMessage(
                "Normalement, à ce stade, l\'administrateur doit approuver la soumission du pilote à partir du panneau d\'administration. Cependant, à des fins de démonstration, votre profil est maintenant automatiquement approuvé et prêt à être utilisé."),
        "driver_registration_step_verify_number_title":
            MessageLookupByLibrary.simpleMessage("Vérifier le numéro"),
        "email": MessageLookupByLibrary.simpleMessage("E-mail"),
        "enum_driver_deduct_transaction_type_commission":
            MessageLookupByLibrary.simpleMessage("Commission"),
        "enum_driver_deduct_transaction_type_correction":
            MessageLookupByLibrary.simpleMessage("Correction"),
        "enum_driver_deduct_transaction_type_withdraw":
            MessageLookupByLibrary.simpleMessage("Se désister"),
        "enum_driver_recharge_transaction_type_order_fee":
            MessageLookupByLibrary.simpleMessage("Frais de commande"),
        "enum_driver_recharge_type_bank_transfer":
            MessageLookupByLibrary.simpleMessage("Virement"),
        "enum_driver_recharge_type_gift":
            MessageLookupByLibrary.simpleMessage("Cadeau"),
        "enum_driver_recharge_type_in_app_payment":
            MessageLookupByLibrary.simpleMessage("Paiement In-App"),
        "enum_unknown": MessageLookupByLibrary.simpleMessage("Inconnu"),
        "error_field_cant_be_empty":
            MessageLookupByLibrary.simpleMessage("Can not be empty"),
        "firstname": MessageLookupByLibrary.simpleMessage("Prénom"),
        "form_required_field_error":
            MessageLookupByLibrary.simpleMessage("Required field"),
        "gender": MessageLookupByLibrary.simpleMessage("Genre"),
        "gender_female": MessageLookupByLibrary.simpleMessage("Femelle"),
        "gender_male": MessageLookupByLibrary.simpleMessage("Homme"),
        "issue_description_placeholder":
            MessageLookupByLibrary.simpleMessage("Description"),
        "issue_subject_placeholder":
            MessageLookupByLibrary.simpleMessage("Subject"),
        "issue_submit_title":
            MessageLookupByLibrary.simpleMessage("Report an issue"),
        "lastname": MessageLookupByLibrary.simpleMessage("Nom de famille"),
        "loading": MessageLookupByLibrary.simpleMessage("CHARGEMENT EN COURS"),
        "menu_about": MessageLookupByLibrary.simpleMessage("Sur"),
        "menu_announcement_empty_state": MessageLookupByLibrary.simpleMessage(
            "Aucune annonce pour le moment."),
        "menu_announcements": MessageLookupByLibrary.simpleMessage("Annonces"),
        "menu_chat": MessageLookupByLibrary.simpleMessage("Chat"),
        "menu_logout": MessageLookupByLibrary.simpleMessage("Se déconnecter"),
        "menu_trip_history":
            MessageLookupByLibrary.simpleMessage("Historique de voyage"),
        "menu_wallet": MessageLookupByLibrary.simpleMessage("Portefeuille"),
        "message_cant_open_url": MessageLookupByLibrary.simpleMessage(
            "La commande n\'est pas prise en charge"),
        "message_notification_permission_denined_message":
            MessageLookupByLibrary.simpleMessage(
                "L\'autorisation de notification a été refusée précédemment. Afin d\'obtenir les notifications de nouvelle commande, vous pouvez activer l\'autorisation à partir des paramètres de l\'application."),
        "message_notification_permission_title":
            MessageLookupByLibrary.simpleMessage(
                "Autorisation de notification"),
        "message_unknown_error":
            MessageLookupByLibrary.simpleMessage("Erreur inconnue"),
        "message_verification_completed":
            MessageLookupByLibrary.simpleMessage("Vérification terminée"),
        "order_status_action_arrived":
            MessageLookupByLibrary.simpleMessage("Arrivée"),
        "order_status_action_finished":
            MessageLookupByLibrary.simpleMessage("Finir"),
        "order_status_action_navigate":
            MessageLookupByLibrary.simpleMessage("Naviguer"),
        "order_status_action_received_cash":
            MessageLookupByLibrary.simpleMessage("Paiement en espèces reçu"),
        "order_status_action_start":
            MessageLookupByLibrary.simpleMessage("Commencer le voyage"),
        "order_status_expected_in":
            MessageLookupByLibrary.simpleMessage("Attendu dans :"),
        "order_status_expected_soon":
            MessageLookupByLibrary.simpleMessage("Bientôt"),
        "order_status_fee_paid": MessageLookupByLibrary.simpleMessage("Payé"),
        "order_status_fee_unpaid":
            MessageLookupByLibrary.simpleMessage("Non payé"),
        "phone_number_empty": MessageLookupByLibrary.simpleMessage(
            "Veuillez entrer le numéro de téléphone"),
        "plate_number":
            MessageLookupByLibrary.simpleMessage("Numéro de la plaque"),
        "statusOffline": MessageLookupByLibrary.simpleMessage("Hors ligne"),
        "statusOnline": MessageLookupByLibrary.simpleMessage("En ligne"),
        "status_need_login":
            MessageLookupByLibrary.simpleMessage("S\'enregistrer d\'abord"),
        "title_important": MessageLookupByLibrary.simpleMessage("IMPORTANT!"),
        "title_success": MessageLookupByLibrary.simpleMessage("Succès"),
        "top_up_sheet_pay_button":
            MessageLookupByLibrary.simpleMessage("Payer"),
        "top_up_sheet_textfield_hint": MessageLookupByLibrary.simpleMessage(
            "Saisir le montant à recharger"),
        "trip_history_canceled_tab":
            MessageLookupByLibrary.simpleMessage("Canceled"),
        "trip_history_completed_tab":
            MessageLookupByLibrary.simpleMessage("Complété"),
        "trip_history_empty_state": MessageLookupByLibrary.simpleMessage(
            "Aucune commande passée n\'a été enregistrée."),
        "wallet_activities_heading":
            MessageLookupByLibrary.simpleMessage("Activities"),
        "wallet_add_credit":
            MessageLookupByLibrary.simpleMessage("Ajouter un crédit"),
        "wallet_empty_state_message": MessageLookupByLibrary.simpleMessage(
            "Aucun historique enregistré."),
        "wallet_gateway_empty_state": MessageLookupByLibrary.simpleMessage(
            "Aucune passerelle n\'est disponible."),
        "wallet_other_currencies_available": m1,
        "wallet_select_currency":
            MessageLookupByLibrary.simpleMessage("Sélectionnez la devise:"),
        "wallet_select_payment_method": MessageLookupByLibrary.simpleMessage(
            "Sélectionnez le mode de paiement:"),
        "wallet_switch_currency":
            MessageLookupByLibrary.simpleMessage("Changer")
      };
}
