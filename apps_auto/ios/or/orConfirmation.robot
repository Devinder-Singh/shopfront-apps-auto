*** Variables ***
${btnTrackOrder}      chain=**/XCUIElementTypeButton[`label == "Track Order"`]
${lblShareAndWin}      chain=**/XCUIElementTypeStaticText[`label == "SHARE & WIN"`]

${btnPayFastCancel}      chain=**/XCUIElementTypeButton[`label == "Cancel"`]
${btnNotnow}        chain=**/XCUIElementTypeButton[`label == "Not Now"`]
${lblRatingsNotNowConfirmationPopup}    chain=**/XCUIElementTypeButton[`label == "Not Now"`]
${txtOrderConfirmation}    chain=**/XCUIElementTypeStaticText[`label == "Thanks, we’ve received your order."`]