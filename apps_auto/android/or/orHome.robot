*** Variables ***
${btnHome}      id=${APP_PACKAGE}:id/app_root_home
${btnAddWishlist}      id=${APP_PACKAGE}:id/pdpWidgetButtonContainerAddToWishlist
${btnSearchIcon}      xpath=//android.widget.TextView[@content-desc="Search"]

${btnMoreOptions}      xpath=//android.widget.ImageView[@content-desc="More options"]
${btnOptionHome}      xpath=//*[@text="Home"]
${btnOptionCategories}      xpath=//*[@text="Categories"]
${btnOptionDeals}      xpath=//*[@text="Deals"]
${btnOptionLists}      xpath=//*[@text="Lists"]
${btnOptionAccount}      xpath=//*[@text="Account"]

${btnHomeViewAllDailyDeals}      id=${APP_PACKAGE}:id/cmsPageWidgetProductListViewAllText
${btnHomeClearAllRecent}      xpath=//*[@text="CLEAR ALL"]

${btnHomeClearCancelRecent}      id=${APP_PACKAGE}:id/snackbar_action
${btnHomeClearRecent}      ${EMPTY}

${btnHomeDeptDailyDeals}      xpath=//*[@text="Daily Deals"]
${btnHomeDeptAppOnlyDeals}      xpath=//*[@text="App Only Deals"]
${btnHomeDeptHomeCook}      xpath=//*[@text="Home Cook Essentials"]
${btnHomeDeptHealthCare}      xpath=//*[@text="Health & Personal Care"]
${btnHomeBack}      accessibility_id=Navigate up

${btnHomeWishlist}      id=${APP_PACKAGE}:id/cmsPageWidgetProductListSingleItemAddToList
${btnWishListIcon}      accessibility_id=Lists

${btnHomeWishListIcon}      id=${APP_PACKAGE}:id/cmsPageWidgetProductListItemAddToList

${cntHomeDeptIcons}      id=${APP_PACKAGE}:id/shopByDepartmentContainer
${imgHomeWishList}      id=${APP_PACKAGE}:id/cmsPageWidgetProductListItemAddToList

${btnHomeDeptBlueDot}      xpath=//*[@text="Blue Dot Countdown"]
${btnHomeDeptChristmas}      xpath=//*[@text="Christmas"]
${btnHomeDeptSummer}      xpath=//*[@text="Summer"]
${btnHomeDeptLoadShed}      xpath=//*[@text="Load-shedding"]
${btnHomeDeptFashion}      xpath=//*[@text="Fashion Outlet"]
${btnHomeDeptUnboxed}      xpath=//*[@text="Unboxed Deals"]
${btnHomeDeptBraaiMaster}      xpath=//*[@text="Ultimate Braai Master"]
${btnHomeDeptExclusive}      xpath=//*[@text="Exclusive To Takealot"]
${btnHomeDeptNew}      xpath=//*[@text="New To Takealot"]
${btnHomeDeptLocal}      xpath=//*[@text="Shop Local"]
${btnHomeDeptBrand}      xpath=//*[@text="Brand Stores"]
${btnHomeDeptAuto}      xpath=//*[@text="Auto"]
${btnHomeDeptBaby}      xpath=//*[@text="Baby & Toddler"]
${btnHomeDeptBeauty}      xpath=//*[@text="Beauty"]
${btnHomeDeptBooks}      xpath=//*[@text="Books"]
${btnHomeDeptCamping}      xpath=//*[@text="Camping"]
${btnHomeDeptCellphones}      xpath=//*[@text="Cellphones"]
${btnHomeDeptClothing}      xpath=//*[@text="Clothing"]
${btnHomeDeptComputers}      xpath=//*[@text="Computers"]
${btnHomeDeptDIY}      xpath=//*[@text="DIY & Home Improvement"]
${btnHomeDeptGaming}      xpath=//*[@text="Gaming"]
${btnHomeDeptGarden}      xpath=//*[@text="Garden, Pool & Patio"]
${btnHomeDeptGrocery}      xpath=//*[@text="Groceries"]
${btnHomeDeptHealth}      xpath=//*[@text="Health & Hygiene"]
${btnHomeDeptAppliances}      xpath=//*[@text="Home & Appliances"]
${btnHomeDeptHousehold}      xpath=//*[@text="Household Cleaning"]
${btnHomeDeptKitchen}      xpath=//*[@text="Kitchen & Appliances"]
${btnHomeDeptLiquor}      xpath=//*[@text="Liquor"]
${btnHomeDeptLuggage}      xpath=//*[@text="Luggage & Travel"]
${btnHomeDeptMovies}      xpath=//*[@text="Movies"]
${btnHomeDeptMusic}      xpath=//*[@text="Music"]
${btnHomeDeptInstruments}      xpath=//*[@text="Musical Instruments"]
${btnHomeDeptNetwork}      xpath=//*[@text="Networking"]
${btnHomeDeptOffice}      xpath=//*[@text="Office"]
${btnHomeDeptPets}      xpath=//*[@text="Pets"]
${btnHomeDeptPhotography}      xpath=//*[@text="Photography"]
${btnHomeDeptSports}      xpath=//*[@text="Sport & Training"]
${btnHomeDeptStationery}      xpath=//*[@text="Stationery"]
${btnHomeDeptToiletries}      xpath=//*[@text="Toiletries"]
${btnHomeDeptToys}      xpath=//*[@text="Toys & Games"]
${btnHomeDeptAudio}      xpath=//*[@text="TV, Audio & Video"]
${btnHomeDeptWearable}      xpath=//*[@text="Wearable Tech"]
