*** Variables ***
${btnAddToCart}    chain=**/XCUIElementTypeButton[`label CONTAINS "Add to Cart"`]
${lblDeliverySurcharge}    chain=**/XCUIElementTypeStaticText[`label == "+ R 200 Delivery Surcharge"`]
${btnContinueShopping}    chain=**/XCUIElementTypeButton[`label == "Continue Shopping"`]
${lblAirtimeValue}    chain=**/XCUIElementTypeStaticText[`label == "R5"`]
${lblTenKgValue}    id=10.0 kg
${btnGoToCart}    chain=**/XCUIElementTypeButton[`label == "Go to Cart"`]
# ${btnPDPSelectOption}    nsp=label == "Select an option" AND name == "Select an option" AND value == "Select an option"
${btnPDPSelectOption}    chain=**/XCUIElementTypeButton[`label == "Select an option"`]

${btnPDPCartItemIncrease}      chain=**/XCUIElementTypeButton[`label == "Button"`][1]

${navBackPDP}    id=Deals
${navCartScr}    chain=**/XCUIElementTypeNavigationBar[`name == "Shopping Cart"`]

${btnPDPSellerName}      chain=**/XCUIElementTypeLink[`label == "Sophie Moda"`][1]
${lblBlueValue}      chain=**/XCUIElementTypeStaticText[`label == "Blue"`]
${btnPDPReview}      chain=**/XCUIElementTypeButton[`label == "Write Review"`]
${btnPDPReviewsSummary}    ${EMPTY}
${btnPDPUserReviews}    chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[22]/XCUIElementTypeTable/XCUIElementTypeCell[2]
${btnPDPReviewBuyboxTitleButton}     id=btnPDPReviewBuyboxTitleButton
${btnPDPReviewShowMoreButton}    chain=**/XCUIElementTypeButton[`label CONTAINS "Show All Reviews"`]

${btnPDPScrollRoot}      chain=**/XCUIElementTypeWindow[1]
${btnPDPAddBundleToCart}      chain=**/XCUIElementTypeButton[`label CONTAINS "Add Bundle to Cart"`]
${btnPDPOtherOfferAddToCart}      chain=**/XCUIElementTypeButton[`label == "icon cartButton"`]
${lblPDPShopTheDeal}      chain=**/XCUIElementTypeButton[`label == "Shop the Deal"`]

${lnkPDPShowMore}      chain=**/XCUIElementTypeButton[`label == "Show More Description"`]

${lnkPDPCOD}    chain=**/XCUIElementTypeStaticText[`label CONTAINS "Eligible for Cash on Delivery"`]

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

${lblPDPExchAndReturn}    chain=**/XCUIElementTypeStaticText[`label CONTAINS "Hassle-Free Exchanges & Returns for 30 Days"`]
${lblPDPNonrefundable}    chain=**/XCUIElementTypeStaticText[`label CONTAINS "Non-Returnable"`]

${btnPDPWhenDoIGet}    chain=**/XCUIElementTypeButton[`label == "When do I get it?"`]
${btnPDPOnCreditInfoTwo}    chain=**/XCUIElementTypeButton[`label == "icon info"`][2]
${btnPDPOnCreditInfo}    chain=**/XCUIElementTypeButton[`label == "icon info"`]

${btnPDPPreOrder}    chain=**/XCUIElementTypeButton[`label CONTAINS "Pre-order"`]

${btnPDPInStockJHB}    chain=**/XCUIElementTypeStaticText[`label == "JHB"`]
${btnPDPInStockCPT}    chain=**/XCUIElementTypeStaticText[`label == "CPT"`]

${btnPDPInStockClose}    chain=**/XCUIElementTypeButton[`label == "Close"`]

${lblPDPWishListSave}    chain=**/XCUIElementTypeStaticText[`label == "Wish List"`]
${lblPDPAutoTestWishListSave}    chain=**/XCUIElementTypeStaticText[`label == "'AutoTestWishlist'"`]

${btnPDPShowAllReviews}    chain=**/XCUIElementTypeButton[`label CONTAINS "Show All Reviews"`]

${lblPDPRelatedProdSponsored}    chain=**/XCUIElementTypeStaticText[`label == "Sponsored"`]
${lblPDPRelatedProdSponsoredOK}    chain=**/XCUIElementTypeStaticText[`label == "OK"`]

${lblPDPWishlistChange}    chain=**/XCUIElementTypeStaticText[`label == "CHANGE"`]

${btnPDPCloseAd}    id=close_button

${btnPDPWishListSave}    chain=**/XCUIElementTypeButton[`label == "Save"`]
