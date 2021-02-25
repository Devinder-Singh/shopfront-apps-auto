*** Variables ***
${btnNoThanks}      chain=**/XCUIElementTypeButton[`label == "No thanks"`]
${btnCreditCard}      chain=**/XCUIElementTypeButton[`label == "PAY WITH CREDIT CARD"`]
${btnChange}      chain=**/XCUIElementTypeStaticText[`label == "CHANGE"`]
${btnPayWithFast}      chain=**/XCUIElementTypeStaticText[`label == "PAY WITH PAYFAST"`]
${btnBackPayment}      chain=**/XCUIElementTypeNavigationBar[`name == "Payment"`]/XCUIElementTypeButton
${txtChangePaymentDeliveryMethod}      chain=**/XCUIElementTypeStaticText[`label == "CHANGE"`][2]
${txtChangePaymentPickup}      chain=**/XCUIElementTypeStaticText[`label == "CHANGE"`][3]
