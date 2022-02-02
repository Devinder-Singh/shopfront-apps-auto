*** Variables ***
${navMobi}      chain=**/XCUIElementTypeNavigationBar[`name == "PAY WITH MOBICRED"`]
${lblUserMobi}      chain=**/XCUIElementTypeStaticText[`label == "Mobicred Username"`]

${txtUserMobi}      id=email
${txtPwdMobi}      id=password
${btnLoginMobi}      id=loginButt
