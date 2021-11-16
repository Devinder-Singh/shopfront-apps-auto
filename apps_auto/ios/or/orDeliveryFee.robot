*** Variables ***
${btnFree}      chain=**/XCUIElementTypeStaticText[`label == "Free"`]
#${btnFree}      id=Standard Delivery
${txtStandardCollect}      id=Standard Collect
${txtStandardDelivery}    id=Standard Delivery
${txtSurchargeDelivery}      chain=**/XCUIElementTypeStaticText[`label == "Standard Delivery + Delivery Surcharge"`]
${txtEstimatedCollection}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[6]
${txtCollectionFee}      chain=**/XCUIElementTypeStaticText[`label == "R 25"`]
${navDeliveryOptBack}      chain=**/XCUIElementTypeNavigationBar[`name == "Delivery Options"`]/XCUIElementTypeButton

${navCollectOptBack}      chain=**/XCUIElementTypeNavigationBar[`name == "Collect Options"`]/XCUIElementTypeButton
${btnStdDeliveryFee}      chain=**/XCUIElementTypeStaticText[`label == "R 60"`]

${scrDeliveryFeeAndroid}      ${EMPTY}

${btnWhyTheWait}      chain=**/XCUIElementTypeButton[`label == "Why the wait?"`]
${btnGotItThanks}      chain=**/XCUIElementTypeButton[`label == "Got it, thanks!"`]
${btnPlusTwo}      id=+ 2

${imgDelOptionsOne}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[4]/XCUIElementTypeImage
${imgDelOptionsTwo}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[5]/XCUIElementTypeImage
${imgDelOptionsThree}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[6]/XCUIElementTypeImage
${imgDelOptionsFour}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[7]/XCUIElementTypeImage
${imgDelOptionsFive}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[8]/XCUIElementTypeImage
