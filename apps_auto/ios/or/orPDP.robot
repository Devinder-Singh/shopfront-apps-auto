*** Variables ***
${btnAddToCart}    chain=**/XCUIElementTypeButton[`label CONTAINS "Add to Cart"`]
${lblDeliverySurcharge}    chain=**/XCUIElementTypeStaticText[`label == "+ R 200 Delivery Surcharge"`]
${btnContinueShopping}    chain=**/XCUIElementTypeButton[`label == "Continue Shopping"`]
${lblAirtimeValue}    chain=**/XCUIElementTypeStaticText[`label == "R5"`]
${lblTenKgValue}    id=10.0 kg
${btnGoToCart}    chain=**/XCUIElementTypeButton[`label == "Go to Cart"`]
${btnPDPSelectOption}    nsp=label == "Select an option" AND name == "Select an option" AND value == "Select an option"

${btnPDPCartItemIncrease}      chain=**/XCUIElementTypeButton[`label == "Button"`][1]

${navBackPDP}    id=Deals
${navCartScr}    chain=**/XCUIElementTypeNavigationBar[`name == "Shopping Cart"`]

${btnPDPSellerName}      chain=**/XCUIElementTypeLink[`label == "Sophie Moda"`][1]
${lblBlueValue}      chain=**/XCUIElementTypeStaticText[`label == "Blue"`]
${btnPDPReview}      chain=**/XCUIElementTypeButton[`label == "Write a Review"`]

${btnPDPScrollRoot}      chain=**/XCUIElementTypeWindow[1]
${btnPDPAddBundleToCart}      chain=**/XCUIElementTypeButton[`label CONTAINS "Add Bundle to Cart"`]
${btnPDPOtherOfferAddToCart}      chain=**/XCUIElementTypeButton[`label == "icon cartButton"`]
${lblPDPShopTheDeal}      chain=**/XCUIElementTypeButton[`label == "Shop the Deal"`]

${lnkPDPShowMore}      chain=**/XCUIElementTypeButton[`label == "Show More Description"`]

${lnkPDPCOD}    chain=**/XCUIElementTypeStaticText[`label CONTAINS "Eligible for Cash on Delivery"`]

${txtPDPJHB}      chain=**/XCUIElementTypeStaticText[`label == "JHB"`]
${txtPDPCPT}      chain=**/XCUIElementTypeStaticText[`label == "CPT"`]
${txtPDPWarehouseOK}      chain=**/XCUIElementTypeButton[`label == "Close"`]

${btnPDPListPrice}      chain=**/XCUIElementTypeButton[`label == "icon info"`][1]
${btnPDPListPriceCancel}      chain=**/XCUIElementTypeButton[`label == "Close"`]
${lnkPDPShopTheDealTCs}    chain=**/XCUIElementTypeButton[`label CONTAINS "Bundle Deals expire when stock runs out"`]

${lnkPDPWhatIsThis}    chain=**/XCUIElementTypeStaticText[`label CONTAINS "What is this"`]
${lnkPDPSelectOption}    chain=**/XCUIElementTypeButton[`label == "Select an option"`]

${btnVariantShowMore}    chain=**/XCUIElementTypeButton[`label == "Show All"`]

${btnPDPShowAllOffers}    chain=**/XCUIElementTypeButton[`label CONTAINS "Show All Offers"`]
${btnPDPShowAllOffersCart}    chain=**/XCUIElementTypeButton[`label == "icon cartButton"`][1]

${btnPDPShowAllColours}    chain=**/XCUIElementTypeButton[`label == "Show All"`]
