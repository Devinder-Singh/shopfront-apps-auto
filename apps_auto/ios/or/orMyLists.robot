*** Variables ***
${btnWishlistItems}    chain=**/XCUIElementTypeStaticText[`label == "DEFAULT"`]
${btnWishlistAuto}    ${EMPTY}

${btnWishListScreen}      ${EMPTY}
${btnWishlistCreate}    chain=**/XCUIElementTypeNavigationBar[`name == "My Lists"`]/XCUIElementTypeButton[2]

${txtWishlistName}    xpath=//XCUIElementTypeApplication[@name="takealot"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTextField
${btnWishlistSave}    chain=**/XCUIElementTypeButton[`label == "Save"`]
