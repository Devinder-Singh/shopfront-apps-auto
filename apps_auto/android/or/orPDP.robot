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
${btnPDPReview}      id=${APP_PACKAGE}:id/write_reviews_button
${btnPDPReviewsSummary}    id=${APP_PACKAGE}:id/pdp_reviews_distribution_summary
${btnPDPUserReviews}    id=${APP_PACKAGE}:id/pdp_reviews_user_reviews_container
${btnPDPNoReviewsDescription}    id=${APP_PACKAGE}:id/no_reviews_description
${btnPDPReviewSummaryOverallRating}    id=${APP_PACKAGE}:id/overall_rating
${btnPDPReviewBuyboxTitleButton}    id=${APP_PACKAGE}:id/pdp_widget_buy_box_title_review_reviews
${btnPDPReviewShowMoreButton}    id=${APP_PACKAGE}:id/pdp_reviews_show_more_button

${btnPDPScrollRoot}      id=${APP_PACKAGE}:id/pdp_widget_fragment_root
${btnPDPAddBundleToCart}      id=${APP_PACKAGE}:id/pdp_widget_bundle_deals_button

${btnPDPOtherOfferAddToCart}      id=${APP_PACKAGE}:id/pdp_widget_other_offers_item_add_to_cart

${lblPDPShopTheDeal}      xpath=//*[@text="SHOP THE DEAL"]
${lnkPDPShowMore}      xpath=//*[@text="SHOW MORE"]
