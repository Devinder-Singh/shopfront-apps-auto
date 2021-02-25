*** Variables ***
${btnFree}      chain=**/XCUIElementTypeStaticText[`label == "Free"`]
${txtSurchargeDelivery}      chain=**/XCUIElementTypeStaticText[`label == "Standard Delivery + Delivery Surcharge"`]
${txtEstimatedCollection}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[6]
${txtCollectionFee}      chain=**/XCUIElementTypeStaticText[`label == "R 25"`]
