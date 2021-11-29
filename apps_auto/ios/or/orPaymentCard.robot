*** Variables ***
${txtCVV}=    xpath=//XCUIElementTypeStaticText[@name='CVV']/parent:: XCUIElementTypeOther/following-sibling::XCUIElementTypeOther/XCUIElementTypeTextField
${btnPay}=    chain=**/XCUIElementTypeButton[`label Contains "PAY"`]