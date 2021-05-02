*** Variables ***
${btnAddToCart}    chain=**/XCUIElementTypeButton[`label CONTAINS "Add to Cart"`]
${lblDeliverySurcharge}    chain=**/XCUIElementTypeStaticText[`label == "+ R 200 Delivery Surcharge"`]
${btnContinueShopping}    chain=**/XCUIElementTypeButton[`label == "Continue Shopping"`]
${lblAirtimeValue}    chain=**/XCUIElementTypeStaticText[`label == "R10"`]
${lblTenKgValue}    id=10.0 kg
${btnGoToCart}    chain=**/XCUIElementTypeButton[`label == "Go to Cart"`]
${btnPDPSelectOption}    nsp=label == "Select an option" AND name == "Select an option" AND value == "Select an option"

${btnPDPCartItemIncrease}      chain=**/XCUIElementTypeButton[`label == "Button"`][1]

${navBackPDP}    id=Deals
${navCartScr}    chain=**/XCUIElementTypeNavigationBar[`name == "Shopping Cart"`]

${btnPDPSellerName}      chain=**/XCUIElementTypeLink[`label == "Sophie Moda"`][1]
${lblBlueValue}      chain=**/XCUIElementTypeStaticText[`label == "Blue"`]
${btnPDPReview}      chain=**/XCUIElementTypeButton[`label == "Write a Review"`]

${btnPDPScrollRoot}      xpath=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable
${btnPDPAddBundleToCart}      chain=**/XCUIElementTypeButton[`label CONTAINS "Add Bundle to Cart"`]
${btnPDPOtherOfferAddToCart}      id=icon cartButton
${lblPDPShopTheDeal}      chain=**/XCUIElementTypeButton[`label == "Shop the Deal"`]
