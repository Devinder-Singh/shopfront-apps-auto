*** Variables ***
${txtEmail}       chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]/XCUIElementTypeTextField
${txtPassword}    chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[2]/XCUIElementTypeSecureTextField
${btnLogin}       chain=**/XCUIElementTypeButton[`label == "Login"`]
${lblUserName}    ${EMPTY}

${btnForgotPwd}       chain=**/XCUIElementTypeButton[`label == "Forgot your password?"`]
${txtEmailResetPwd}       chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]/XCUIElementTypeTextField
${btnRequestResetPwd}       chain=**/XCUIElementTypeButton[`label == "Reset"`]
