*** Variables ***
${btnDelivery}      chain=**/XCUIElementTypeStaticText[`label == "Delivery"`]
${btnCollect}      chain=**/XCUIElementTypeStaticText[`label == "Collect"`]
${btnDeliveryAddress}      chain=**/XCUIElementTypeStaticText[`label == "Add Delivery Address"`]
${btnCollectNotAvailable}      chain=**/XCUIElementTypeStaticText[`label == "Collect Not Available"`]
${btnBackDelivery}      chain=**/XCUIElementTypeNavigationBar[`name == "Delivery Method"`]/XCUIElementTypeButton
