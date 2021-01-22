*** Variables ***
${btnMenu}        chain=**/XCUIElementTypeNavigationBar[`name == "HomeView"`]/XCUIElementTypeButton[1]
${btnMenuLogin}    chain=**/XCUIElementTypeStaticText[`label == "Login"`]
${btnLogout}      chain=**/XCUIElementTypeStaticText[`label == "Sign out"`]

${btnMenuDailyDeals}      chain=**/XCUIElementTypeStaticText[`label == "Daily Deals"`][1]
${mnuShopByDepartment}      chain=**/XCUIElementTypeStaticText[`label == "Shop by Department"`]
${mnuSportFitness}      chain=**/XCUIElementTypeStaticText[`label == "Sport and Fitness Sale"`]
${mnuMyAccount}      chain=**/XCUIElementTypeStaticText[`label == "My Account"`]
${btnMenuAddressBook}      chain=**/XCUIElementTypeStaticText[`label == "Address Book"`]
${btnMenuPersonalDetail}      chain=**/XCUIElementTypeStaticText[`label == "Personal Details"`]

${btnBackMyAcc}      chain=**/XCUIElementTypeButton[`label == "My Account"`][1]
${btnWishlist}      chain=**/XCUIElementTypeButton[`label == "menu btn wishlist"`]
${btnCart}      chain=**/XCUIElementTypeButton[`label == "Cart"`]
