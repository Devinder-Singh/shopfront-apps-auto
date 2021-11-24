*** Variables ***
${btnAddress}      chain=**/XCUIElementTypeStaticText[`label == "Test"`]
${btnDeleteAddress}      chain=**/XCUIElementTypeStaticText[`label == "DELETE"`][1]
${btnConfDeleteAddress}      chain=**/XCUIElementTypeButton[`label == "Delete"`]
${btnEditAddress}      chain=**/XCUIElementTypeButton[`label == "EDIT"`]

${txtInfoAddress}      chain=**/XCUIElementTypeStaticText[`label == "INFO"`][1]
${txtFilterProvince}      chain=**/XCUIElementTypeStaticText[`label == "Filter by Province:"`]
${txtGautengProvinceAddress}      chain=**/XCUIElementTypeStaticText[`label == "Gauteng"`]
${txtWCProvinceAddress}      chain=**/XCUIElementTypeStaticText[`label == "Western Cape"`]
${txtAllProvinceAddress}      chain=**/XCUIElementTypeStaticText[`label == "All Available Provinces"`]

${navDeliveryAddressBack}      chain=**/XCUIElementTypeNavigationBar[`name == "Delivery Addresses"`]/XCUIElementTypeButton
${navCollectAddressBack}      chain=**/XCUIElementTypeNavigationBar[`name == "Takealot Pickup Points"`]/XCUIElementTypeButton
