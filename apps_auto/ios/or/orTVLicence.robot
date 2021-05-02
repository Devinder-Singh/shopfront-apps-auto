*** Variables ***
${btnDomestic}      chain=**/XCUIElementTypeStaticText[`label == "Domestic"`]
${txtLicence}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[2]/XCUIElementTypeTextField
${btnVerify}      chain=**/XCUIElementTypeStaticText[`label == "Verify"`]

${btnTvLicBusiness}      chain=**/XCUIElementTypeStaticText[`label == "Business"`]
${btnTvLicHoliday}      chain=**/XCUIElementTypeStaticText[`label == "Holiday Home"`]

${btnTvLicBack}      chain=**/XCUIElementTypeNavigationBar[`name == "TV Licence"`]/XCUIElementTypeButton

${navTvLicVerification}      chain=**/XCUIElementTypeStaticText[`label == "Verification"`]

${scrTvLicType}      ${EMPTY}
