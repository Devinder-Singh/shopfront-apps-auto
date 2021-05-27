*** Variables ***
${imgProductDeals}      xpath=(//android.widget.ImageView[@content-desc="Product Image"])[1]
${imgProductDealsDept}    xpath=(//android.widget.ImageView[@content-desc="Product Image"])[1]

${lblProduct}     android=new UiSelector().textContains("$productText")

${btnProductAppOnlyDeals}      accessibility_id=App Only Deals
${btnProductWineClubDeals}      accessibility_id=Wine Club
${btnProductFilter}      xpath=//*[contains(@text, "FILTER")]
${btnProductSearchFilter}      xpath=//*[contains(@text, "FILTER")]
${btnProductSearchSort}      id=${APP_PACKAGE}:id/product_listing_sort

${btnProductWishlist}      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[2]/android.view.ViewGroup/android.view.ViewGroup[1]

${btnProductListView}      id=${APP_PACKAGE}:id/productListingRecyclerView
${btnProductGridView}    id=${APP_PACKAGE}:id/product_listing_layout_button

${lnkPLPSellerDeals}    xpath=(//android.widget.ImageView[@content-desc="Product Image"])[1]

${lblRatingText}      id=${APP_PACKAGE}:id/productListingRatingText
${lblRatingNumber}    id=${APP_PACKAGE}:id/productListingNumberOfRatings
