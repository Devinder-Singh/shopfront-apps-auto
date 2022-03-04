*** Variables ***
${btnCheckout}      chain=**/XCUIElementTypeButton[`label == "Proceed to Checkout"`]
${btnCheckoutDelete}      chain=**/XCUIElementTypeButton[`name == "Remove"`]
${btnItemPromotion}    chain=**/XCUIElementTypeButton[`label == "1 promotion applied"`]

${btnCheckoutMoveToWishlist}    chain=**/XCUIElementTypeStaticText[`label == "Move to List"`]

${btnCheckoutEdit}    chain=**/XCUIElementTypeButton[`label == "icon pencil"`]
${btnCheckoutSelect}    chain=**/XCUIElementTypeCell/XCUIElementTypeButton

${btnCartQty}    chain=**/XCUIElementTypeTable/XCUIElementTypeCell/XCUIElementTypeButton[2]

${btnCartUndo}    ${EMPTY}
${btnCartTrendingAddToCart}    chain=**/XCUIElementTypeButton[`label == "icon cartButton"`]
${btnCartContinueShopping}    chain=**/XCUIElementTypeButton[`label == "Continue Shopping"`]

${btnCartQtyRoot}    chain=**/XCUIElementTypeNavigationBar[`name == "Shopping Cart"`]
${btnCartAddPromoItems}    chain=**/XCUIElementTypeButton[`label == "Add 1 item to qualify"`]

${lblCheckoutMissedPromotion}      chain=**/XCUIElementTypeStaticText[`label == "ADD 1 ITEM TO QUALIFY"`]

${btnCartCustomersAlsoBought}    ${EMPTY}
${btnCartItemContainer}    ${EMPTY}

${btnDeleteUnderItemCard}    chain=**/XCUIElementTypeButton[`label == "Delete"`]
${qtyPickerWheel}    chain=**/XCUIElementTypePickerWheel
${btnQtyPickerWheelDone}    chain=**/XCUIElementTypeButton[`label == "Done"`]
