*** Variables ***
${txtLicence}      chain=**/XCUIElementTypeTable/XCUIElementTypeCell[2]/XCUIElementTypeTextField
${btnVerify}      chain=**/XCUIElementTypeStaticText[`label == "Verify"`]

${btnTvLicBack}      chain=**/XCUIElementTypeNavigationBar[`name == "TV Licence"`]/XCUIElementTypeButton

${navTvLicVerification}      chain=**/XCUIElementTypeStaticText[`label == "Verification"`]

${scrTvLicType}      ${EMPTY}

${txtLicenceHolidayHome}      chain=**/XCUIElementTypeTable/XCUIElementTypeCell[2]/XCUIElementTypeTextField

${txtLicenceCompReg}      chain=**/XCUIElementTypeTable/XCUIElementTypeCell[2]/XCUIElementTypeTextField
${txtLicenceBusiness}      chain=**/XCUIElementTypeTable/XCUIElementTypeCell[3]/XCUIElementTypeTextField

${txtLicenceCompRegDealer}      chain=**/XCUIElementTypeTable/XCUIElementTypeCell[2]/XCUIElementTypeTextField
${txtLicenceDealer}      chain=**/XCUIElementTypeTable/XCUIElementTypeCell[3]/XCUIElementTypeTextField

${btnLicenceCancel}      id=Cancel
