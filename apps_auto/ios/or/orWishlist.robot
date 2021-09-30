*** Variables ***
${btnWishlistCart}      chain=**/XCUIElementTypeButton[`label == "icon cartButton"`]

${btnWishlistEdit}      chain=**/XCUIElementTypeButton[`label == "Edit"`]
${btnWishlistItemSelect}      chain=**/XCUIElementTypeButton[`label == "Select All"`]
${btnWishlistDelete}      chain=**/XCUIElementTypeButton[`label == "Delete"`]

${btnDeleteWishlist}      chain=**/XCUIElementTypeButton[`label == "Delete"`]
${btnDeleteWishlistConfirm}      chain=**/XCUIElementTypeButton[`label == "Delete"`]
${btnDeleteWishlistCancel}      chain=**/XCUIElementTypeButton[`label == "Cancel"`]

${chkWishlist}      ${EMPTY}

${btnWishlistMove}      chain=**/XCUIElementTypeButton[`label == "Move"`]

${btnWishlistAdd}      chain=**/XCUIElementTypeButton[`label == "icon plus"`]

${btnWishlistContinueShop}      chain=**/XCUIElementTypeButton[`label == "Start Shopping"`]
