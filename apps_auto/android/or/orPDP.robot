*** Variables ***
${btnAddToCart}      id=${APP_PACKAGE}:id/pdpWidgetButtonContainerAddToCart
${lblDeliverySurcharge}      id=${APP_PACKAGE}:id/pdp_widget_buy_box_price_delivery
${btnContinueShopping}      id=${APP_PACKAGE}:id/pdpAddToCartContinueShopping
${lblAirtimeValue}      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.widget.FrameLayout[3]/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[1]
${lblTenKgValue}      xpath=//*[@text="10.0 kg"]
${btnGoToCart}      id=${APP_PACKAGE}:id/pdpAddToCartGoToCart

${btnPDPSelectOption}      id=${APP_PACKAGE}:id/pdpWidgetButtonContainerVariantsCallToAction
${btnPDPCartItemIncrease}      id=${APP_PACKAGE}:id/pdpAddToCartIncreaseButton

${navBackPDP}    accessibility_id=Navigate up
${navCartScr}    xpath=//android.widget.ImageView[@content-desc="Cart"]

${btnPDPSellerName}      id=${APP_PACKAGE}:id/pdp_widget_buy_box_sub_title_action_button
${lblBlueValue}      xpath=//*[@text="Blue"]
${btnPDPReview}      id=${APP_PACKAGE}:id/pdp_widget_review_rating_button
