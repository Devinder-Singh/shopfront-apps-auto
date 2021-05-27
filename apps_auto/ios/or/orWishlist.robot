*** Variables ***
${btnWishlistCart}      chain=**/XCUIElementTypeButton[`label == "icon cartButton"`]

${btnWishlistEdit}      chain=**/XCUIElementTypeButton[`label == "Edit"`]
${btnWishlistItemSelect}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell/XCUIElementTypeButton[1]
${btnWishlistDelete}      chain=**/XCUIElementTypeButton[`label == "Delete"`]

${btnDeleteWishlist}      ${EMPTY}
