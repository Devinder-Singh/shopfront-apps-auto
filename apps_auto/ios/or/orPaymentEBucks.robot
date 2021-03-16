*** Variables ***
${txtEBucksRSAID}      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.EditText
${txtEBucksPIN}      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.EditText

${btnEBucksProceed}      id=${APP_PACKAGE}:id/checkout_payment_ebucks_login_buttons_proceed
${btnEBucksBalance}      id=${APP_PACKAGE}:id/checkout_payment_ebucks_accounts_list

${txtEBucksAmt}      id=${APP_PACKAGE}:id/validation_input_text_input_edit_text
${btnEBucksRequestOTP}      id=${APP_PACKAGE}:id/checkout_payment_ebucks_request_otp_button

${txtEBucksOTP}      id=${APP_PACKAGE}:id/checkout_payment_ebucks_payment_input
${btnEBucksPay}      id=${APP_PACKAGE}:id/checkout_payment_ebucks_pay_button
