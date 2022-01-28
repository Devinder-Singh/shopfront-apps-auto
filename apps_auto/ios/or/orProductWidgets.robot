*** Variables ***
${btnProductViwAllFirst}      chain=**/XCUIElementTypeButton[`label == "View All"`][1]
${btnProductPreOrder}      chain=**/XCUIElementTypeStaticText[`label == "Top Pre-Orders"`][1]

${btnCarouselWidget}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]/XCUIElementTypeOther[1]
${btnBannerWidget}      chain=**/XCUIElementTypeButton[1]

${btnProductWidget}      chain=**/XCUIElementTypeStaticText[`label CONTAINS "% OFF"`]
${btnImageWidget}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[3]
${btnContextWidget}      chain=**/XCUIElementTypeCell[`name == "sharedTitleTableViewCell"`][1]
${btnFeaturedWidget}    id=Tote Bags

${btnWidgetProdTitle}      ${EMPTY}
${btnWidgetProdPrice}      ${EMPTY}
${btnWidgetProdRating}      ${EMPTY}
${btnWidgetProdWishlist}      ${EMPTY}
${btnWidgetProdImage}      ${EMPTY}

${btnFeaturedWidgetTitle}      ${EMPTY}
${btnFeaturedWidgetImage}      chain=**/XCUIElementTypeButton[1]
${btnFeaturedWidgetItem}      chain=**/XCUIElementTypeCell[`name == "sharedTitleTableViewCell"`][1]
