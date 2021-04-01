*** Variables ***
${btnMenu}        chain=**/XCUIElementTypeButton[`label == "hamburger menu"`]
${btnMenuLogin}    chain=**/XCUIElementTypeStaticText[`label == "Login"`]
${btnLogout}      chain=**/XCUIElementTypeStaticText[`label == "Sign out"`]
${btnMenuRegister}    chain=**/XCUIElementTypeButton[`label == "Register"`]

${btnMenuDailyDeals}      chain=**/XCUIElementTypeStaticText[`label == "Daily Deals"`][1]
${mnuShopByDepartment}      chain=**/XCUIElementTypeStaticText[`label == "Shop by Department"`]
${mnuSportFitness}      chain=**/XCUIElementTypeStaticText[`label == "Auto"`]
${mnuMyAccount}      chain=**/XCUIElementTypeStaticText[`label == "My Account"`]
${btnMenuAddressBook}      chain=**/XCUIElementTypeStaticText[`label == "Address Book"`]
${btnMenuPersonalDetail}      chain=**/XCUIElementTypeStaticText[`label == "Personal Details"`]

${btnBackMyAcc}      chain=**/XCUIElementTypeButton[`label == "My Account"`][1]
${btnWishlist}      chain=**/XCUIElementTypeButton[`label == "menu btn wishlist"`]
${btnCart}      chain=**/XCUIElementTypeButton[`label == "Cart"`]

${btnMenuOrders}      chain=**/XCUIElementTypeStaticText[`label == "Orders"`][1]
${btnMenuNewToElec}      id=New To Electronics

${cntMenuAccountScroll}    ${EMPTY}
