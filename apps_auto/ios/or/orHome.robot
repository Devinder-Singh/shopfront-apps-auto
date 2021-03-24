*** Variables ***
${btnHome}      chain=**/XCUIElementTypeButton[`value == "1"`]
${btnAddWishlist}      chain=**/XCUIElementTypeButton[`label == "icon wishListButton"`]
${btnSearchIcon}      chain=**/XCUIElementTypeButton[`label == "icon search"`]

${btnHomeViewAllDailyDeals}      chain=**/XCUIElementTypeButton[`label == "View All"`][1]

${btnHomeClearAllRecent}      chain=**/XCUIElementTypeButton[`label == "Clear All"`]
${btnHomeClearCancelRecent}      id=Cancel
${btnHomeClearRecent}      id=Clear

${btnHomeDeptDailyDeals}      chain=**/XCUIElementTypeStaticText[`label == "Daily Deals"`][2]
${btnHomeDeptAppOnlyDeals}      id=App Only Deals
${btnHomeDeptHomeCook}      id=Home Cook Essentials
${btnHomeDeptHealthCare}      id=Health & Personal Care
${btnHomeBack}      id=Back

${btnHomeWishlist}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]/XCUIElementTypeButton[1]
