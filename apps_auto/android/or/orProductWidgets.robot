*** Variables ***
${btnProductViwAllFirst}      xpath=//*[@text="VIEW ALL"]
${btnProductPreOrder}      xpath=//*[@text="Top Pre-Orders"]

${btnCarouselWidget}      id=${APP_PACKAGE}:id/cmsPageWidgetCarouselViewPagerIndicatorShadow
${btnBannerWidget}      id=${APP_PACKAGE}:id/cmsPageWidgetBannerPairItemImage
${btnProductWidget}      xpath=//*[contains(@text, "OFF")]
${btnImageWidget}      id=${APP_PACKAGE}:id/cmsPageWidgetImageListItemImage
${btnContextWidget}      id=${APP_PACKAGE}:id/cmsPageWidgetCarouselItemImage

${btnWidgetProdTitle}      id=${APP_PACKAGE}:id/cmsPageWidgetProductListItemTitle
${btnWidgetProdPrice}      id=${APP_PACKAGE}:id/cmsPageWidgetProductListItemPrice
${btnWidgetProdRating}      id=${APP_PACKAGE}:id/cmsPageWidgetProductListItemRating
${btnWidgetProdWishlist}      id=${APP_PACKAGE}:id/cmsPageWidgetProductListItemAddToList
${btnWidgetProdImage}      id=${APP_PACKAGE}:id/cmsPageWidgetProductListItemImage

${btnFeaturedWidgetTitle}      id=${APP_PACKAGE}:id/cmsPageWidgetFeaturedCollectionsItemTitle
${btnFeaturedWidgetImage}      id=${APP_PACKAGE}:id/cmsPageWidgetFeaturedCollectionsItemImage
${btnFeaturedWidgetItem}      xpath=(//android.widget.TextView)[1]
