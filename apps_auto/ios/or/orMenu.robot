*** Variables ***
${txtEmail}       id=EMAIL ADDRESS
${btnMenu}        chain=**/XCUIElementTypeNavigationBar[`name == "HomeView"`]/XCUIElementTypeButton[1]
${btnMenuLogin}    chain=**/XCUIElementTypeStaticText[`label == "Login"`]
${txtPassword}    chain=**/XCUIElementTypeSecureTextField[1]
${btnLogin}       chain=**/XCUIElementTypeButton[`label == "Login"`]
${lblUserName}    ${EMPTY}
${btnLogout}      chain=**/XCUIElementTypeStaticText[`label == "Sign out"`]
