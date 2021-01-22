*** Variables ***
${txtEmail}       id=EMAIL ADDRESS
${txtPassword}    chain=**/XCUIElementTypeSecureTextField[1]
${btnLogin}       chain=**/XCUIElementTypeButton[`label == "Login"`]
${lblUserName}    ${EMPTY}
