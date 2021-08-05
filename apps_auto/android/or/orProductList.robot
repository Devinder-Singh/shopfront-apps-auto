*** Variables ***
${imgProductDeals}      id=${APP_PACKAGE}:id/productListingImage
${imgProductDealsDept}    id=${APP_PACKAGE}:id/productListingTitle

${lblProduct}     android=new UiSelector().textContains("$productText")

${btnProductAppOnlyDeals}      accessibility_id=App Only Deals
${btnProductWineClubDeals}      accessibility_id=Wine Club
${btnProductFilter}      xpath=//*[contains(@text, "FILTER")]
${btnProductSearchFilter}      xpath=//*[contains(@text, "FILTER")]
${btnProductSearchSort}      xpath=//*[contains(@text, "SORT")]

${btnProductWishlist}      id=${APP_PACKAGE}:id/productListingAddToFavouritesWidget

${btnProductListView}      id=${APP_PACKAGE}:id/productListingRecyclerView
${btnProductGridView}    id=${APP_PACKAGE}:id/product_listing_layout_button

${lnkPLPSellerDeals}    xpath=(//android.widget.ImageView[@content-desc="Product Image"])[1]

${lblRatingText}      id=${APP_PACKAGE}:id/productListingRatingText
${lblRatingNumber}    id=${APP_PACKAGE}:id/productListingNumberOfRatings

${btnProductWLSave}      xpath=//*[@text="SAVE"]

${lblTermsCond}      xpath=//*[contains(@text,"This is our List Price. Find out what this means in our Terms & Conditions")]
${lblPLPInStock}      xpath=//*[@text="In stock"]
