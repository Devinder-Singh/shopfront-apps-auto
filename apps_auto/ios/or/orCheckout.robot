*** Variables ***
${btnCheckout}      chain=**/XCUIElementTypeButton[`label == "Checkout"`]
${btnCheckoutDelete}      chain=**/XCUIElementTypeButton[`name == "CartItemDeleteButton"`]
${btnItemPromotion}    chain=**/XCUIElementTypeButton[`label == "1 promotion applied"`]

${btnCheckoutMoveToWishlist}    id=CartItemWishlistButton

${btnCheckoutEdit}    accessibility_id=Edit
${btnCheckoutSelect}    chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell/XCUIElementTypeButton

${btnCartQty}    id=CartItemQuantityButton

${btnCartUndo}    ${EMPTY}
${btnCartTrendingAddToCart}      ${EMPTY}
${btnCartContinueShopping}      ${EMPTY}

${btnCartQtyRoot}    chain=**/XCUIElementTypeNavigationBar[`name == "Shopping Cart"`]
${btnCartAddPromoItems}    chain=**/XCUIElementTypeButton[`label == "Add 1 item to qualify"`]

${lblCheckoutMissedPromotion}      chain=**/XCUIElementTypeStaticText[`label == "ADD 1 ITEM TO QUALIFY"`]
