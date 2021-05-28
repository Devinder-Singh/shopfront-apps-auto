*** Variables ***
${imgProductDeals}    chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]
${imgProductDealsDept}    chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[3]

${lblProduct}     id=$productText

${btnProductAppOnlyDeals}      id=App Only Deals
${btnProductWineClubDeals}      chain=**/XCUIElementTypeStaticText[`label == "Gaming & Tech "`]

${btnProductFilter}      chain=**/XCUIElementTypeButton[`label CONTAINS "Filter"`]
${btnProductSearchFilter}      chain=**/XCUIElementTypeButton[`label CONTAINS "Filter"`]
${btnProductSearchSort}      chain=**/XCUIElementTypeButton[`label == "Sort"`]

${btnProductWishlist}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[5]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeButton

${btnProductListView}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView

${lnkPLPSellerDeals}    chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[3]

${btnProductGridView}      chain=**/XCUIElementTypeButton[`label == "icon list"`]
${btnProductIconClose}      chain=**/XCUIElementTypeButton[`label == "icon close"`]

${lblRatingText}      ${EMPTY}
${lblRatingNumber}    ${EMPTY}

${btnProductWLSave}      chain=**/XCUIElementTypeButton[`label == "Save"`]
