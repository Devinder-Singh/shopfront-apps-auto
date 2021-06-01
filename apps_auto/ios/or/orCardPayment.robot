*** Variables ***
${lblCardNumber}      chain=**/XCUIElementTypeStaticText[`label == "Card Number"`]
${navPayCreditCardBack}      chain=**/XCUIElementTypeNavigationBar[`name == "PAY WITH CREDIT CARD"`]/XCUIElementTypeButton
${txtCreditCardNumber}      chain=**/XCUIElementTypeOther[`label == "main"`]/XCUIElementTypeTextField[3]
${txtCreditCardName}      chain=**/XCUIElementTypeOther[`label == "main"`]/XCUIElementTypeTextField[2]
