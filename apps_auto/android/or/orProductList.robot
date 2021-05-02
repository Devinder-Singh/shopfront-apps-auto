*** Variables ***
${imgProductDeals}      xpath=(//android.widget.ImageView[@content-desc="Product Image"])[1]
${imgProductDealsDept}    xpath=(//android.widget.ImageView[@content-desc="Product Image"])[1]

${lblProduct}     android=new UiSelector().textContains("$productText")

${btnProductAppOnlyDeals}      accessibility_id=App Only Deals
${btnProductWineClubDeals}      accessibility_id=Wine Club
${btnProductImage}      xpath=(//android.widget.ImageView[@content-desc="Product Image"])[1]
${btnProductFilter}      id=${APP_PACKAGE}:id/dealsPromotionFilterButton
${btnProductSearchFilter}      id=${APP_PACKAGE}:id/product_listing_filter
${btnProductSearchSort}      id=${APP_PACKAGE}:id/product_listing_sort

${btnProductWishlist}      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[3]/android.view.ViewGroup/android.view.ViewGroup[1]

${btnProductListView}      id=${APP_PACKAGE}:id/productListingRecyclerView
