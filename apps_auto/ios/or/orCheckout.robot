*** Variables ***
${btnCheckout}      chain=**/XCUIElementTypeButton[`label == "Checkout"`]
${btnCheckoutDelete}      chain=**/XCUIElementTypeButton[`name == "CartItemDeleteButton"`][1]
${btnItemPromotion}    chain=**/XCUIElementTypeButton[`label == "1 promotion applied"`]

${btnCheckoutMoveToWishlist}    id=CartItemWishlistButton
