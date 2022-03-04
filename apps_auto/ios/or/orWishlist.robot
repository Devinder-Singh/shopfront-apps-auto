*** Variables ***
${btnWishlistCart}      id=icon cartButton

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

${btnWishlistMoveToList}      accessibility_id=Move to List
${btnWishlistPlusIcon}      accessibility_id=Option action

${btnWishlistDeleteUndo}    ${EMPTY}

${btnDeleteWishlistItemsCancel}      chain=**/XCUIElementTypeButton[`label == "Cancel"`]

${btnRenameWishlist}      chain=**/XCUIElementTypeButton[`label == "Rename"`]
${btnMoreOptionsShare}    chain=**/XCUIElementTypeButton[`label == "Share"`]
${btnMoreOptionsEdit}    chain=**/XCUIElementTypeButton[`label == "Edit"`]