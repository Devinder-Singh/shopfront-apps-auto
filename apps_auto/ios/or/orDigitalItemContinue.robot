*** Variables ***
${btnContinueAirtime}      chain=**/XCUIElementTypeStaticText[`label == "CONTINUE"`]
${btnCancel}      chain=**/XCUIElementTypeButton[`label == "Cancel"`]

${lblChangeRecepient}      xpath=//XCUIElementTypeStaticText[contain(@name,"CHANGE GIFT RECIPENT")]
${txtDigitalItem}      id=Digital Items Sent upon payment
