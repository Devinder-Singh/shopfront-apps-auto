*** Variables ***
${btnCheckout}    id=${APP_PACKAGE}:id/cartPriceWidgetCheckout
${btnCheckoutDelete}    accessibility_id=Delete
${btnItemPromotion}    id=${APP_PACKAGE}:id/cartProductItemPromotionText

${btnCheckoutMoveToWishlist}    accessibility_id=Move to List

${btnCheckoutEdit}    accessibility_id=Edit
${btnCheckoutSelect}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.CheckBox

${btnCartQty}    id=${APP_PACKAGE}:id/cartProductItemQuantitySelector
${btnCartUndo}    id=${APP_PACKAGE}:id/snackbar_action

${btnCartTrendingAddToCart}      id=${APP_PACKAGE}:id/widgetProductListItemAddToCart

${btnCartContinueShopping}      xpath=//*[@text="CONTINUE SHOPPING"]

${btnCartQtyRoot}    id=${APP_PACKAGE}:id/cartQuantityItemsRv
${btnCartAddPromoItems}    ${EMPTY}
