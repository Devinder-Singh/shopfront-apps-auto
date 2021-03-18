*** Variables ***
${txtEBucksRSAID}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[2]/XCUIElementTypeTextField
${txtEBucksPIN}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[3]/XCUIElementTypeSecureTextField

${btnEBucksProceed}      chain=**/XCUIElementTypeButton[`label == "Login"`]
${btnEBucksBalance}      id=${APP_PACKAGE}:id/checkout_payment_ebucks_accounts_list

${txtEBucksAmt}      id=${APP_PACKAGE}:id/validation_input_text_input_edit_text
${btnEBucksRequestOTP}      id=${APP_PACKAGE}:id/checkout_payment_ebucks_request_otp_button

${txtEBucksOTP}      id=${APP_PACKAGE}:id/checkout_payment_ebucks_payment_input
${btnEBucksPay}      id=${APP_PACKAGE}:id/checkout_payment_ebucks_pay_button
