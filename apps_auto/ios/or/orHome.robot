*** Variables ***
${btnHome}      chain=**/XCUIElementTypeButton[`label == "Home"`]
${btnAddWishlist}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther[3]/XCUIElementTypeButton
${btnSearchIcon}      chain=**/XCUIElementTypeButton[`label == "icon search"`]

${btnMoreOptions}      chain=**/XCUIElementTypeButton[`label == "overflowDots"`]
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

${cntHomeDeptIcons}      ${EMPTY}
${imgHomeWishList}      ${EMPTY}

${btnHomeDeptBlueDot}      chain=**/XCUIElementTypeStaticText[`label == "Blue Dot Countdown"']
${btnHomeDeptChristmas}      chain=**/XCUIElementTypeStaticText[`label == "Christmas"']
${btnHomeDeptSummer}      chain=**/XCUIElementTypeStaticText[`label == "Summer"']
${btnHomeDeptLoadShed}      chain=**/XCUIElementTypeStaticText[`label == "Load-shedding"']
${btnHomeDeptFashion}      chain=**/XCUIElementTypeStaticText[`label == "Fashion Outlet"']
${btnHomeDeptUnboxed}      chain=**/XCUIElementTypeStaticText[`label == "Unboxed Deals"']
${btnHomeDeptBraaiMaster}      chain=**/XCUIElementTypeStaticText[`label == "Ultimate Braai Master"']
${btnHomeDeptExclusive}      chain=**/XCUIElementTypeStaticText[`label == "Exclusive To Takealot"']
${btnHomeDeptNew}      chain=**/XCUIElementTypeStaticText[`label == "New To Takealot"']
${btnHomeDeptLocal}      chain=**/XCUIElementTypeStaticText[`label == "Shop Local"']
${btnHomeDeptBrand}      chain=**/XCUIElementTypeStaticText[`label == "Brand Stores"']
${btnHomeDeptAuto}      chain=**/XCUIElementTypeStaticText[`label == "Auto"']
${btnHomeDeptBaby}      chain=**/XCUIElementTypeStaticText[`label == "Baby & Toddler"']
${btnHomeDeptBeauty}      chain=**/XCUIElementTypeStaticText[`label == "Beauty"']
${btnHomeDeptBooks}      chain=**/XCUIElementTypeStaticText[`label == "Books"']
${btnHomeDeptCamping}      chain=**/XCUIElementTypeStaticText[`label == "Camping"']
${btnHomeDeptCellphones}      chain=**/XCUIElementTypeStaticText[`label == "Cellphones"']
${btnHomeDeptClothing}      chain=**/XCUIElementTypeStaticText[`label == "Clothing"']
${btnHomeDeptComputers}      chain=**/XCUIElementTypeStaticText[`label == "Computers"']
${btnHomeDeptDIY}      chain=**/XCUIElementTypeStaticText[`label == "DIY & Home Improvement"']
${btnHomeDeptGaming}      chain=**/XCUIElementTypeStaticText[`label == "Gaming"']
${btnHomeDeptGarden}      chain=**/XCUIElementTypeStaticText[`label == "Garden, Pool & Patio"']
${btnHomeDeptGrocery}      chain=**/XCUIElementTypeStaticText[`label == "Groceries"']
${btnHomeDeptHealth}      chain=**/XCUIElementTypeStaticText[`label == "Health & Hygiene"']
${btnHomeDeptAppliances}      chain=**/XCUIElementTypeStaticText[`label == "Home & Appliances"']
${btnHomeDeptHousehold}      chain=**/XCUIElementTypeStaticText[`label == "Household Cleaning"']
${btnHomeDeptKitchen}      chain=**/XCUIElementTypeStaticText[`label == "Kitchen & Appliances"']
${btnHomeDeptLiquor}      chain=**/XCUIElementTypeStaticText[`label == "Liquor"']
${btnHomeDeptLuggage}      chain=**/XCUIElementTypeStaticText[`label == "Luggage & Travel"']
${btnHomeDeptMovies}      chain=**/XCUIElementTypeStaticText[`label == "Movies"']
${btnHomeDeptMusic}      chain=**/XCUIElementTypeStaticText[`label == "Music"']
${btnHomeDeptInstruments}      chain=**/XCUIElementTypeStaticText[`label == "Musical Instruments"']
${btnHomeDeptNetwork}      chain=**/XCUIElementTypeStaticText[`label == "Networking"']
${btnHomeDeptOffice}      chain=**/XCUIElementTypeStaticText[`label == "Office"']
${btnHomeDeptPets}      chain=**/XCUIElementTypeStaticText[`label == "Pets"']
${btnHomeDeptPhotography}      chain=**/XCUIElementTypeStaticText[`label == "Photography"']
${btnHomeDeptSports}      chain=**/XCUIElementTypeStaticText[`label == "Sport & Training"']
${btnHomeDeptStationery}      chain=**/XCUIElementTypeStaticText[`label == "Stationery"']
${btnHomeDeptToiletries}      chain=**/XCUIElementTypeStaticText[`label == "Toiletries"']
${btnHomeDeptToys}      chain=**/XCUIElementTypeStaticText[`label == "Toys & Games"']
${btnHomeDeptAudio}      chain=**/XCUIElementTypeStaticText[`label == "TV, Audio & Video"']
${btnHomeDeptWearable}      chain=**/XCUIElementTypeStaticText[`label == "Wearable Tech"']
