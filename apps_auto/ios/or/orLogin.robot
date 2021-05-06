*** Variables ***
${txtEmail}       id=EMAIL ADDRESS
${txtPassword}    chain=**/XCUIElementTypeSecureTextField[1]
${btnLogin}       chain=**/XCUIElementTypeButton[`label == "Login"`]
${btnLogout}       chain=**/XCUIElementTypeButton[`label == "Sign out"`]
${lblUserName}    ${EMPTY}

${btnForgotPwd}       chain=**/XCUIElementTypeButton[`label == "Forgot your password?"`]
${txtEmailResetPwd}       chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[2]/XCUIElementTypeTextField
${btnRequestResetPwd}       chain=**/XCUIElementTypeButton[`label == "Reset"`]
