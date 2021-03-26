*** Variables ***
${btnProductDailyDeals}    chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther
${lblProduct}     id=$productText

${btnProductAppOnlyDeals}      id=App Only Deals
${btnProductWineClubDeals}      id=Wine Club

${btnProductImage}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeImage
${btnProductFilter}      chain=**/XCUIElementTypeButton[`label == "Filter"`]
${btnProductSearchFilter}      chain=**/XCUIElementTypeButton[`label == "Filter"`]
${btnProductSearchSort}      chain=**/XCUIElementTypeButton[`label == "Sort"`]

${btnProductTitle}      id=Fitbit Inspire 2 Fitness Tracker - Black
