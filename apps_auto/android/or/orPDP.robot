*** Variables ***
${btnAddToCart}      id=${APP_PACKAGE}:id/pdpWidgetButtonContainerAddToCart
${lblDeliverySurcharge}      id=${APP_PACKAGE}:id/pdp_widget_buy_box_price_delivery
${btnContinueShopping}      id=${APP_PACKAGE}:id/pdpAddToCartContinueShopping
${lblAirtimeValue}      xpath=//*[@text="R5"]
${lblTenKgValue}      xpath=//*[@text="10.0 kg"]
${btnGoToCart}      xpath=//*[@text="GO TO CART"]

${btnPDPSelectOption}      id=${APP_PACKAGE}:id/pdpWidgetButtonContainerVariantsCallToAction
${btnPDPCartItemIncrease}      id=${APP_PACKAGE}:id/pdpAddToCartIncreaseButton

${navBackPDP}    accessibility_id=Navigate up
${navCartScr}    ${EMPTY}

${btnPDPSellerName}      id=${APP_PACKAGE}:id/pdp_widget_buy_box_sub_title_action_button
${lblBlueValue}      xpath=//*[@text="Blue"]
${btnPDPReview}      xpath=//*[contains(@text, "WRITE REVIEW")]
${btnPDPReviewsSummary}    id=${APP_PACKAGE}:id/pdp_reviews_distribution_summary
${btnPDPUserReviews}    id=${APP_PACKAGE}:id/pdp_reviews_user_reviews_container
${btnPDPReviewBuyboxTitleButton}    id=${APP_PACKAGE}:id/pdp_widget_buy_box_title_review_reviews
${btnPDPReviewShowMoreButton}    id=${APP_PACKAGE}:id/pdp_reviews_show_more_button

${btnPDPScrollRoot}      id=${APP_PACKAGE}:id/pdp_widget_fragment_root
${btnPDPAddBundleToCart}      id=${APP_PACKAGE}:id/pdp_widget_bundle_deals_button

${btnPDPOtherOfferAddToCart}      id=${APP_PACKAGE}:id/pdp_widget_other_offers_item_add_to_cart

${lblPDPShopTheDeal}      xpath=//*[@text="SHOP THE DEAL"]
${lnkPDPShowMore}      xpath=//*[@text="SHOW MORE"]
${lnkPDPCOD}    xpath=//*[contains(@text, "Eligible for Cash on Delivery")]

${txtPDPWarehouseOK}      xpath=//*[@text="OK"]

${btnPDPListPrice}      id=${APP_PACKAGE}:id/pdp_widget_buy_box_price_price_previous
${btnPDPListPriceCancel}      xpath=//*[@text="CANCEL"]
${lnkPDPShopTheDealTCs}    xpath=//*[contains(@text, "Bundle Deals expire when stock runs out")]

${lnkPDPWhatIsThis}    xpath=//*[contains(@text, "WHAT IS THIS")]
${lnkPDPSelectOption}    xpath=//*[@text="SELECT AN OPTION"]

${btnVariantShowMore}    id=fi.android.takealot.debug:id/pdp_widget_variants_selector_show_all

${btnPDPShowAllOffers}    xpath=//*[contains(@text, "SHOW ALL OFFERS")]
${btnPDPShowAllOffersCart}    id=${APP_PACKAGE}:id/pdp_widget_other_offers_item_add_to_cart

${btnPDPShowAllColours}    xpath=//*[contains(@text, "SHOW ALL")]

${lblPDPExchAndReturn}    xpath=//*[contains(@text, "Hassle-Free Exchanges & Returns for 30 Days")]
${lblPDPNonrefundable}    xpath=//*[contains(@text, "Non-Returnable")]

${btnPDPWhenDoIGet}    xpath=//*[@text="When do I get it?"]
${btnPDPOnCreditInfoTwo}    xpath=//*[contains(@text, "On Credit: R")]
${btnPDPOnCreditInfo}    xpath=//*[contains(@text, "On Credit: R")]

${btnPDPPreOrder}    xpath=//*[contains(@text, "Pre-order")]

${btnPDPInStockJHB}    xpath=//*[@text="JHB"]
${btnPDPInStockCPT}    xpath=//*[@text="CPT"]

${btnPDPInStockClose}    xpath=//*[@text="Close"]

${lblPDPWishListSave}    xpath=//*[@text="Wish List"]
${lblPDPAutoTestWishListSave}    xpath=//*[@text="AutoTestWishlist"]

${btnPDPShowAllReviews}    xpath=//*[contains(@text, "SHOW ALL REVIEWS")]

${lblPDPRelatedProdSponsored}    xpath=//*[@text="Sponsored"]
${lblPDPRelatedProdSponsoredOK}    xpath=//*[@text="OK"]

${lblPDPWishlistChange}    xpath=//*[@text="CHANGE"]

${btnPDPCloseAd}    ${EMPTY}

${btnPDPWishListSave}    chain=**/XCUIElementTypeButton[`label == "Save"`]
