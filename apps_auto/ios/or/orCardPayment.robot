*** Variables ***
${lblCardNumber}      chain=**/XCUIElementTypeStaticText[`label == "Card Number"`]
${navPayCreditCardBack}      chain=**/XCUIElementTypeNavigationBar[`name == "PAY WITH CREDIT CARD"`]/XCUIElementTypeButton
${txtCreditCardNumber}      chain=**/XCUIElementTypeOther[`label == "main"`]/XCUIElementTypeTextField[3]
${txtCreditCardName}      chain=**/XCUIElementTypeOther[`label == "main"`]/XCUIElementTypeTextField[2]

${txtCardDescPaygate}      id=cardDesc
${txtCardHolderPaygate}      id=cardHolder
${txtCreditCardNumberPaygate}      id=cardFormattedNumber
${txtCreditCardExpMonPaygate}      id=expMon
${txtCreditCardExpYrPaygate}      id=expYr
${txtCreditCardCVVPaygate}      id=cvvNew
${btnCreditCardPayPaygate}      id=paySecure

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
