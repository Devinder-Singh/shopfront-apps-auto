*** Variables ***
${btnAddToCart}      id=${APP_PACKAGE}:id/pdpWidgetButtonContainerAddToCart
${lblDeliverySurcharge}      id=${APP_PACKAGE}:id/pdp_widget_buy_box_price_delivery
${btnContinueShopping}      id=${APP_PACKAGE}:id/pdpAddToCartContinueShopping
${lblAirtimeValue}      xpath=//*[@text="R5"]
${lblTenKgValue}      xpath=//*[@text="10.0 kg"]
${btnGoToCart}      id=${APP_PACKAGE}:id/pdpAddToCartGoToCart

${btnPDPSelectOption}      id=${APP_PACKAGE}:id/pdpWidgetButtonContainerVariantsCallToAction
${btnPDPCartItemIncrease}      id=${APP_PACKAGE}:id/pdpAddToCartIncreaseButton

${navBackPDP}    accessibility_id=Navigate up
${navCartScr}    xpath=//android.widget.ImageView[@content-desc="Cart"]

${btnPDPSellerName}      id=${APP_PACKAGE}:id/pdp_widget_buy_box_sub_title_action_button
${lblBlueValue}      xpath=//*[@text="Blue"]
${btnPDPReview}      id=${APP_PACKAGE}:id/pdp_widget_review_rating_button
