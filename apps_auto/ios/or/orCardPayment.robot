*** Variables ***
${lblCardNumber}      chain=**/XCUIElementTypeStaticText[`label == "Card Number"`]
${navPayCreditCardBack}      chain=**/XCUIElementTypeNavigationBar[`name == "PAY WITH CREDIT CARD"`]/XCUIElementTypeButton
${txtCreditCardNumber}      chain=**/XCUIElementTypeOther[`label == "main"`]/XCUIElementTypeTextField[3]
${txtCreditCardName}      chain=**/XCUIElementTypeOther[`label == "main"`]/XCUIElementTypeTextField[2]

${txtCardDescPaygate}      chain=**/XCUIElementTypeOther[`label == "main"`]/XCUIElementTypeTextField[1]
${txtCardHolderPaygate}      chain=**/XCUIElementTypeOther[`label == "main"`]/XCUIElementTypeTextField[2]
${txtCreditCardNumberPaygate}      chain=**/XCUIElementTypeOther[`label == "main"`]/XCUIElementTypeTextField[3]
${txtCreditCardExpMonPaygate}      chain=**/XCUIElementTypeTextField[`value == "MM"`]
${txtCreditCardExpYrPaygate}      chain=**/XCUIElementTypeTextField[`value == "YYYY"`]
${txtCreditCardCVVPaygate}      chain=**/XCUIElementTypeOther[`label == "main"`]/XCUIElementTypeOther[8]/XCUIElementTypeOther[2]/XCUIElementTypeTextField
${btnCreditCardPayPaygate}      chain=**/XCUIElementTypeButton[`label CONTAINS "PAY"`]

${lblCreditCardSavePaygate}      chain=**/XCUIElementTypeStaticText[`label == "Use as my default card"`]
${btnCreditCardRetry}      id=retry
${btnCreditCardNewCard}      id=payNew

${lblCreditCardDeletePaygate}      chain=**/XCUIElementTypeStaticText[`label == "Delete"`]
${btnCreditCardDeleteConfirmPaygate}      id=modal-delete-btn

${txtCardNumberPAYU}      id=0_cardNumber
${txtCardNamePAYU}      id=0_nameOnCard
${txtCardExpMonthPAYU}      id=0_expMonth
${txtCardExpYearhPAYU}      id=0_expYear
${lblCreditCardSavePAYU}      id=0_save
${txtCreditCardSubmitPAYU}      id=tokenSubmit
