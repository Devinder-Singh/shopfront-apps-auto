*** Variables ***
${btnWishlistCart}      chain=**/XCUIElementTypeButton[`label == "icon cartButton"`]

${btnWishlistEdit}      chain=**/XCUIElementTypeButton[`label == "Edit"`]
${btnWishlistItemSelect}      chain=**/XCUIElementTypeButton[`label == "Select All"`]
${btnWishlistDelete}      chain=**/XCUIElementTypeButton[`label == "Delete"`]

${btnDeleteWishlist}      ${EMPTY}

${chkWishlist}      ${EMPTY}

${btnWishlistMove}      chain=**/XCUIElementTypeButton[`label == "Move"`]

${btnWishlistAdd}      chain=**/XCUIElementTypeButton[`label == "icon plus"`]
