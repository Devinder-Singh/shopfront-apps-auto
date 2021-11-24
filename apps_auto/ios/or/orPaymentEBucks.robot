*** Variables ***
${txtEBucksRSAID}      chain=**/XCUIElementTypeTable/XCUIElementTypeCell[2]/XCUIElementTypeTextField
${txtEBucksPIN}      chain=**/XCUIElementTypeTable/XCUIElementTypeCell[3]/XCUIElementTypeSecureTextField

${btnEBucksProceed}      chain=**/XCUIElementTypeButton[`label == "Login"`]
${btnEBucksBalance}      chain=**/XCUIElementTypeTable/XCUIElementTypeCell[2]

${txtEBucksAmt}      chain=**/XCUIElementTypeTable/XCUIElementTypeCell[8]/XCUIElementTypeTextField
${btnEBucksRequestOTP}      chain=**/XCUIElementTypeButton[`label == "Request OTP"`]

${txtEBucksOTP}      chain=**/XCUIElementTypeTable/XCUIElementTypeCell[8]/XCUIElementTypeTextField
${btnEBucksPay}      chain=**/XCUIElementTypeButton[`label == "PAY WITH eBUCKS"`]

${txtEBucksUserID}      chain=**/XCUIElementTypeTable/XCUIElementTypeCell[2]/XCUIElementTypeTextField
${txtEBucksPwd}      chain=**/XCUIElementTypeTable/XCUIElementTypeCell[3]/XCUIElementTypeSecureTextField
${btnEBucksLogin}      chain=**/XCUIElementTypeButton[`label == "Login"`]

${lblEBucksAcc}      chain=**/XCUIElementTypeStaticText[`label CONTAINS "Account:"`]

${txtEBucksAmt}      chain=**/XCUIElementTypeTable/XCUIElementTypeCell[8]/XCUIElementTypeTextField
${btnEBucksOTP}      chain=**/XCUIElementTypeButton[`label == "Request OTP"`]

${txtEBucksOTP}      chain=**/XCUIElementTypeTable/XCUIElementTypeCell[8]/XCUIElementTypeTextField
${btnEBucksPay}      chain=**/XCUIElementTypeButton[`label == "PAY WITH eBUCKS"`]
