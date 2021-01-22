*** Variables ***
${lblPersonalDetailName}      chain=**/XCUIElementTypeStaticText[`label == "Your Name"`]
${txtFirstName}      xpath=//XCUIElementTypeApplication[@name="takealot"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[2]/XCUIElementTypeTextField
${btnSaveDetail}      chain=**/XCUIElementTypeStaticText[`label == "Save"`]
