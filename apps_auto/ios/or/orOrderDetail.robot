*** Variables ***
${btnPayNow}=    chain=**/XCUIElementTypeButton[`label == "Pay Now"`]
${btnTrack}=    chain=**/XCUIElementTypeButton[`label == "Track"`]
${btnViewQRCode}    chain=**/XCUIElementTypeButton[`label == "View QR Code"`]
${btnDirections}    chain=**/XCUIElementTypeButton[`label == "Directions"`]
${txtCollectDisclaimer}    chain=**/XCUIElementTypeStaticText[$type == 'XCUIElementTypeStaticText' AND value CONTAINS 'Note: You have until Friday 21 January 2022 to collect your order'$]
${btnGotItThanks}    id=Got it, thanks!
${txtVerifyCollectDisclaimerHeader}    chain=**/XCUIElementTypeStaticText[`label == "Please note"`]
${txtVerifyCollectDisclaimerBody}    id=If not collected, your order will be returned to Takealot and your account credited with the value of the items