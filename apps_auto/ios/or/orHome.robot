*** Variables ***
${btnHome}      chain=**/XCUIElementTypeButton[`label == "Home"`]
${btnAddWishlist}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther[3]/XCUIElementTypeButton
${btnSearchIcon}      chain=**/XCUIElementTypeButton[`label == "icon search"`]

${btnMoreOptions}      chain=**/XCUIElementTypeButton[`label == "icon overflowDots"`]
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
${btnHomeDeptAppOnlyDeals}      id=App Only
${btnHomeDeptHomeCook}      chain=**/XCUIElementTypeStaticText[`label == "Gaming & Tech "`]
${btnHomeDeptHealthCare}      id=Health & Personal Care
${btnHomeBack}      id=Back

${btnHomeWishlist}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]/XCUIElementTypeButton[1]
${btnWishListIcon}      chain=**/XCUIElementTypeButton[`label == "My Lists"`]

${btnHomeWishListIcon}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]/XCUIElementTypeButton[1]

${cntHomeDeptIcons}    chain=**/XCUIElementTypeOther[`name == "NavController"`]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[2]
${imgHomeWishList}      ${EMPTY}

${btnHomeAdClose}      id=Close
