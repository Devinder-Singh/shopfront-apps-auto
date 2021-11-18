*** Variables ***
${btnAddress}      chain=**/XCUIElementTypeStaticText[`label == "Test"`]
${btnPickupPoint}      chain=**/XCUIElementTypeStaticText[`label == "Takealot Cape Town Warehouse Cape Town, Western Cape"`]
${btnDeleteAddress}      chain=**/XCUIElementTypeStaticText[`label == "DELETE"`][1]
${btnConfDeleteAddress}      chain=**/XCUIElementTypeButton[`label == "Delete"`]
${btnEditAddress}      chain=**/XCUIElementTypeButton[`label == "EDIT"`]

${txtInfoAddress}      chain=**/XCUIElementTypeStaticText[`label == "INFO"`][1]
${txtFilterProvince}      chain=**/XCUIElementTypeStaticText[`label == "Filter by Province:"`]
${txtGautengProvinceAddress}      chain=**/XCUIElementTypeStaticText[`label == "Gauteng"`]
${txtWCProvinceAddress}      chain=**/XCUIElementTypeStaticText[`label == "Western Cape"`]
${txtAllProvinceAddress}      chain=**/XCUIElementTypeStaticText[`label == "All Available Provinces"`]

${btnPickupPointBrackenfell}      chain=**/XCUIElementTypeStaticText[`label == "Brackenfell Cape Town, Western Cape"`]
${navDeliveryAddressBack}      chain=**/XCUIElementTypeNavigationBar[`name == "Delivery Addresses"`]/XCUIElementTypeButton
${navCollectAddressBack}      chain=**/XCUIElementTypeNavigationBar[`name == "Takealot Pickup Points"`]/XCUIElementTypeButton
${btnPickupPointGauteng}      id=Benoni Benoni, Gauteng
