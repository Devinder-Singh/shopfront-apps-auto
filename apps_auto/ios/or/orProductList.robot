*** Variables ***
${imgProductDeals}    chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[3]/XCUIElementTypeOther
${imgProductDealsDept}    chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[3]

${lblProduct}     id=$productText

${btnProductAppOnlyDeals}      id=App Only Deals
${btnProductWineClubDeals}      chain=**/XCUIElementTypeStaticText[`label == "Gaming & Tech "`]

${btnProductFilter}      chain=**/XCUIElementTypeButton[`label CONTAINS "Filter"`]
${btnProductSearchFilter}      chain=**/XCUIElementTypeButton[`label CONTAINS "Filter"`]
${btnProductSearchSort}      chain=**/XCUIElementTypeButton[`label == "Sort"`]

${btnProductWishlist}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[3]/XCUIElementTypeOther/XCUIElementTypeOther[2]

${btnProductListView}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView

${lnkPLPSellerDeals}    chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[3]

${btnProductGridView}      chain=**/XCUIElementTypeButton[`label == "icon list"`]
${btnProductIconClose}      chain=**/XCUIElementTypeButton[`label == "icon close"`]

${lblRatingText}      ${EMPTY}
${lblRatingNumber}    ${EMPTY}

${btnProductWLSave}      chain=**/XCUIElementTypeButton[`label == "Save"`]

${lblTermsCond}      chain=**/XCUIElementTypeStaticText[`label CONTAINS "This is our List Price. Find out what this means in our T&C"`]
${lblPLPInStock}      chain=**/XCUIElementTypeStaticText[`label == "In stock"`][1]

${btnProductLeft}      chain=**/XCUIElementTypeStaticText[`label CONTAINS "left"`]
