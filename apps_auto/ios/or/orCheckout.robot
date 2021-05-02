*** Variables ***
${btnCheckout}      chain=**/XCUIElementTypeButton[`label == "Checkout"`]
${btnCheckoutDelete}      chain=**/XCUIElementTypeButton[`name == "CartItemDeleteButton"`][1]
${btnItemPromotion}    chain=**/XCUIElementTypeButton[`label == "1 promotion applied"`]

${btnCheckoutMoveToWishlist}    id=CartItemWishlistButton

${btnCheckoutEdit}    accessibility_id=Edit
${btnCheckoutSelect}    chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell/XCUIElementTypeButton

${btnCartQty}    accessibility_id=CartItemQuantityButton

${btnCartUndo}    ${EMPTY}
${btnCartTrendingAddToCart}      ${EMPTY}
${btnCartContinueShopping}      ${EMPTY}

${btnCartQtyRoot}    chain=**/XCUIElementTypeNavigationBar[`name == "Shopping Cart"`]
