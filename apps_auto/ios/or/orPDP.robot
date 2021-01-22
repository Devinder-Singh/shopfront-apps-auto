*** Variables ***
${btnAddToCart}      chain=**/XCUIElementTypeButton[`label CONTAINS "Add to Cart"`]
${lblDeliverySurcharge}      chain=**/XCUIElementTypeStaticText[`label == "+ R 200 Delivery Surcharge"`]
${btnContinueShopping}      chain=**/XCUIElementTypeButton[`label == "Continue Shopping"`]
${lblAirtimeValue}      chain=**/XCUIElementTypeStaticText[`label == "R10"`]
${lblTenKgValue}      chain=**/XCUIElementTypeStaticText[`label == "10.0 kg"`]
${btnGoToCart}      chain=**/XCUIElementTypeButton[`label == "Go to Cart"`]
