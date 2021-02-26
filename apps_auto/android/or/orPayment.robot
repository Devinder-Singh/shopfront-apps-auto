*** Variables ***
${btnNoThanks}      id=${APP_PACKAGE}:id/checkout_donation_beautiful_gate_no_thanks_btn
${btnCreditCard}      id=${APP_PACKAGE}:id/checkout_order_review_pay
${btnChange}      id=${APP_PACKAGE}:id/checkout_payment_method_selector_action_text
${btnPayWithFast}      id=${APP_PACKAGE}:id/checkout_order_review_pay

${btnBackPayment}      accessibility_id=Navigate up

${txtChangePaymentDeliveryMethod}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView[3]
${txtChangePaymentPickup}    id=${APP_PACKAGE}:id/checkout_order_review_summary_item_action

${txtPaymentShowDetails}    id=${APP_PACKAGE}:id/checkout_order_review_courier_items_action
${txtPaymentCancel}    accessibility_id=Navigate up
${txtPaymentEBucks}    id=${APP_PACKAGE}:id/checkout_order_review_earn_ebucks_selector
