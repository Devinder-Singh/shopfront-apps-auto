*** Variables ***
${btnWishlistItems}    chain=**/XCUIElementTypeStaticText[`label == "DEFAULT"`]
${btnWishlistAuto}    chain=**/XCUIElementTypeStaticText[`label CONTAINS "AutoTestWishlist"`]

${btnWishListScreen}      ${EMPTY}
${btnWishlistCreate}    chain=**/XCUIElementTypeNavigationBar[`name == "My Lists"`]/XCUIElementTypeButton[2]

${txtWishlistName}    xpath=//XCUIElementTypeApplication[@name="takealot"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTextField
${btnWishlistSAVE}    chain=**/XCUIElementTypeButton[`label CONTAINS "Save"`]
