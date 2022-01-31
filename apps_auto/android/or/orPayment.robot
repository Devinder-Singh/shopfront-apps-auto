*** Variables ***
${btnNoThanks}      id=${APP_PACKAGE}:id/checkout_donation_beautiful_gate_no_thanks_btn
${btnCreditCard}      xpath=//*[@text="PAY WITH CREDIT CARD"]
${btnChange}      id=${APP_PACKAGE}:id/checkout_payment_method_selector_action_text
${btnPayWithFast}      id=${APP_PACKAGE}:id/checkout_order_review_pay

${btnBackPayment}      accessibility_id=Navigate up

${txtChangePaymentDeliveryMethod}    xpath=(//android.widget.TextView[@resource-id="${APP_PACKAGE}:id/checkout_order_review_summary_item_detail_view_action"])[1]
${txtChangePaymentPickup}    id=${APP_PACKAGE}:id/checkout_order_review_summary_item_action

${txtPaymentShowDetails}    id=${APP_PACKAGE}:id/checkout_order_review_courier_items_action
${txtPaymentCancel}    accessibility_id=Navigate up
${txtPaymentEBucks}    id=${APP_PACKAGE}:id/checkout_order_review_earn_ebucks_selector

${txtGiftAdd}      id=${APP_PACKAGE}:id/checkout_order_review_earn_add_gift_message_selector

${lblPaymentDonate}      id=${APP_PACKAGE}:id/checkout_donation_beautiful_gate_donate_btn
${imgPaymentDonation}      xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ImageView
${rdoDonationSelected}      id=${APP_PACKAGE}:id/checkout_donate_checkbox

${lblPaymentDonation}      id=${APP_PACKAGE}:id/checkout_order_review_summary_donation
${lblPaymentR5}      id=${APP_PACKAGE}:id/checkout_order_review_summary_donation_value
${lblPaymentCreditsApplied}      id=${APP_PACKAGE}:id/checkout_order_review_summary_value_item_name
${btnPaymentDonationIcon}      id=${APP_PACKAGE}:id/checkout_donate_info
${btnPaymentDonationOK}      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.appcompat.widget.LinearLayoutCompat/android.widget.ScrollView/android.widget.LinearLayout/android.widget.Button

${btnPayWithCash}      id=${APP_PACKAGE}:id/checkout_order_review_pay
${btnPayWithOzow}      id=${APP_PACKAGE}:id/checkout_order_review_pay
${btnPayWithMobi}      id=${APP_PACKAGE}:id/checkout_order_review_pay
${btnPayWithEBucks}      id=${APP_PACKAGE}:id/checkout_order_review_pay

${txtPaymentVoucher}      id=${APP_PACKAGE}:id/checkout_order_review_gift_voucher_selector

${rdoPaymentUseMyCredit}      id=${APP_PACKAGE}:id/tal_input_selector_field_layout_selector_check_box
${txtPaymentAmount}      id=${APP_PACKAGE}:id/checkout_order_review_summary_price_to_pay_value

${rdoPaymentDonation}      id=${APP_PACKAGE}:id/checkout_donate_checkbox
