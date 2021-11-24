*** Variables ***
${btnBackOzow}      chain=**/XCUIElementTypeNavigationBar[`name == "PAY WITH OZOW"`]/XCUIElementTypeButton
${navOzow}      chain=**/XCUIElementTypeNavigationBar[`name == "PAY WITH OZOW"`]

${btnOzowBank}      chain=**/XCUIElementTypeStaticText[`name == "DEMO BANK"`]

${txtOzowUsername}      chain=**/XCUIElementTypeOther[`label == "main"`]/XCUIElementTypeTextField
${txtOzowPassword}      chain=**/XCUIElementTypeOther[`label == "main"`]/XCUIElementTypeSecureTextField
${btnOzowSubmitUser}      id=main-form-submit

${btnOzowAccNo}      chain=**/XCUIElementTypeStaticText[`label CONTAINS "Cheque -"`]
${btnOzowSubmitAcc}      id=main-form-submit

${txtOzowOTP}      chain=**/XCUIElementTypeOther[`label == "main"`]/XCUIElementTypeTextField
${btnOzowSubmitOTP}      id=main-form-submit
