*** Variables ***
${btnHome}      chain=**/XCUIElementTypeButton[`label == "Home"`]
${btnAddWishlist}      chain=**/XCUIElementTypeButton[`label == "icon wishListButton"`]
${btnSearchIcon}      chain=**/XCUIElementTypeButton[`label == "icon search"`]

${btnMoreOptions}      ${EMPTY}
${btnOptionHome}      ${EMPTY}
${btnOptionCategories}      ${EMPTY}
${btnOptionDeals}      ${EMPTY}
${btnOptionLists}      ${EMPTY}
${btnOptionAccount}      ${EMPTY}

${btnHomeViewAllDailyDeals}      chain=**/XCUIElementTypeButton[`label == "View All"`][1]

${btnHomeClearAllRecent}      chain=**/XCUIElementTypeStaticText[`label == "Clear All"`]
${btnHomeClearCancelRecent}      chain=**/XCUIElementTypeButton[`label == "Cancel"`]
${btnHomeClearRecent}      id=Clear

${btnHomeDeptDailyDeals}      chain=**/XCUIElementTypeStaticText[`label == "Daily Deals"`]
${btnHomeDeptAppOnlyDeals}      id=App Only Deals
${btnHomeDeptHomeCook}      chain=**/XCUIElementTypeStaticText[`label == "Gaming & Tech "`]
${btnHomeDeptHealthCare}      id=Health & Personal Care
${btnHomeBack}      id=Back

${btnHomeWishlist}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]/XCUIElementTypeButton[1]
${btnWishListIcon}      chain=**/XCUIElementTypeButton[`label == "Wish list"`]
