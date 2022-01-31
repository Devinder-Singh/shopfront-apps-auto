*** Variables ***
${lblPayFastEFT}      chain=**/XCUIElementTypeStaticText[`label == "EFT with PayFast"`]
${lblCreditCardEFT}      chain=**/XCUIElementTypeStaticText[`label == "Credit & Debit Card"`]
${lblSecurePaymentPayFast}      chain=**/XCUIElementTypeImage[`label == "Secure payments by PayFast"`]
${lbleBucksEFT}      chain=**/XCUIElementTypeStaticText[`label == "eBucks"`]
${btneBucksEFTInfo}      chain=**/XCUIElementTypeButton[`label == "order detail product leadtime "`][2]
${lblOzowEFT}      chain=**/XCUIElementTypeStaticText[`label == "EFT with Ozow"`]
${lblMobicredEFT}      chain=**/XCUIElementTypeStaticText[`label == "Mobicred"`]
${lblCash}      chain=**/XCUIElementTypeStaticText[`label == "Cash on Delivery"`]
${btnCODInfo}      chain=**/XCUIElementTypeButton[`label == "order detail product leadtime "`][1]
${btnMobicredEFTInfo}      chain=**/XCUIElementTypeButton[`label == "order detail product leadtime "`][2]
${btnGotItThanks}      chain=**/XCUIElementTypeButton[`label == "Got it, thanks!"`]
${btnChgPaymentOK}      chain=**/XCUIElementTypeButton[`label == "OK"`]

${lblCODInfo}      chain=**/XCUIElementTypeStaticText[`label == "Cash on Delivery is not available for this order"`]
${lblMobicredInfo}      chain=**/XCUIElementTypeStaticText[`label == "Mobicred is not available for this order"`]

${scrPaymentMethodAndroid}      ${EMPTY}
