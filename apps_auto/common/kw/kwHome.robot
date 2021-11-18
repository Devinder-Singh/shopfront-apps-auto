*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Home
    Wait Until Element Is Visible    ${btnHome}    ${MIN_TIMEOUT}
    Click Element    ${btnHome}
#    Sleep    2s

Click Home iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnHome}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${btnHome}
#    Sleep    2s

Click Add To Wishlist
    Wait Until Element Is Visible    ${btnAddWishlist}    ${MIN_TIMEOUT}
    Click Element    ${btnAddWishlist}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Item added to Wish List    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Item added to Wish List    ${MIN_TIMEOUT}

#    Sleep    5s
    Check Text On Screen Not    Item added to Wish List

    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnMoreOptions}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnOptionHome}
    Click Continue Shopping Ignore Error

Click Add To Wishlist Only
    Wait Until Element Is Visible    ${btnAddWishlist}    ${MIN_TIMEOUT}
    Click Element    ${btnAddWishlist}
#    Sleep    1s

Click More Options Menu
    Wait Until Element Is Visible    ${btnMoreOptions}    ${MIN_TIMEOUT}
    Click Element    ${btnMoreOptions}

Click More Options Menu Android
    Wait Until Element Is Visible    ${btnMoreOptions}    ${MIN_TIMEOUT}
    Click Element    ${btnMoreOptions}

Click Options Menu Home
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnOptionHome}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnOptionHome}

Click Options Menu Categories
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnOptionCategories}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnOptionCategories}

Click Options Menu Deals
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnOptionDeals}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnOptionDeals}

Click Options Menu Lists
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnOptionLists}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnOptionLists}

Click Options Menu Account
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnOptionAccount}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnOptionAccount}

Click Search Icon
    Wait Until Element Is Visible    ${btnSearchIcon}    ${MIN_TIMEOUT}
    Click Element    ${btnSearchIcon}

    ${btnPresentSearchHistory}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnSearchClearAll}    15s
    Run Keyword If    ${btnPresentSearchHistory}    Click Element    ${btnSearchClearAll}

Click View All Daily Deals
    Wait Until Element Is Visible    ${btnHomeViewAllDailyDeals}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeViewAllDailyDeals}

Click View All Daily Deals If Present
    ${chkElement}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnHomeViewAllDailyDeals}    10s
    Run Keyword If    ${chkElement}==${True}    Click Element    ${btnHomeViewAllDailyDeals}

Click Clear All Recently Viewed

    Wait Until Element Is Visible    ${btnHomeClearAllRecent}    ${MIN_TIMEOUT}

    Click Element On Scroll    ${btnHomeClearAllRecent}    12

Click Clear All Recently Viewed Android

    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnSearchHome}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${btnHomeClearAllRecent}

        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Run Keyword If
            ...    ${PLATFORM_NAME}=='android'
            ...    Exit For Loop

        Swipe Up    ${windowScroll}
        ${index}=    Evaluate    ${index} + 1
    END
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnHomeClearAllRecent}

Click Cancel Clear All Recently Viewed
    Wait Until Element Is Visible    ${btnHomeClearCancelRecent}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeClearCancelRecent}

Confirm Clear All Recently Viewed
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnHomeClearRecent}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${btnHomeClearRecent}

Click Icon Daily Deals
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnMenuCategories}
    Wait Until Element Is Visible    ${btnHomeDeptDailyDeals}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptDailyDeals}

Click Icon App Only Deals
    Wait Until Element Is Visible    ${btnHomeDeptAppOnlyDeals}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptAppOnlyDeals}

Click Icon Home Cook Essentials
    Wait Until Element Is Visible    ${btnHomeDeptHomeCook}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptHomeCook}

Click Icon Health & Personal Care
    Wait Until Element Is Visible    ${btnHomeDeptHealthCare}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptHealthCare}

Click Home Back
    Wait Until Element Is Visible    ${btnHomeBack}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeBack}

Click Home WishList Only
    Wait Until Element Is Visible    ${btnWishListIcon}    ${MIN_TIMEOUT}
    Click Element    ${btnWishListIcon}

Click Home Wishlist Icon
    Wait Until Element Is Visible    ${btnHomeWishListIcon}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeWishListIcon}
#    Sleep    1s

Click Home WishList
    Wait Until Element Is Visible    ${btnWishListIcon}    ${MIN_TIMEOUT}
    Click Element    ${btnWishListIcon}
    Navigate to Wishlist

Verify Home Menu
    Wait Until Element Is Visible    ${btnHome}    ${MIN_TIMEOUT}
    Wait Until Element Is Visible    ${btnWishListIcon}    ${MIN_TIMEOUT}

Verify Add To Wishlist
    Wait Until Element Is Visible    ${btnAddWishlist}    ${MIN_TIMEOUT}

Click Home Icon Wish List
    Wait Until Element Is Visible    ${imgHomeWishList}    ${MIN_TIMEOUT}
    Click Element    ${imgHomeWishList}

Click Home Icon Daily Deals
    Wait Until Element Is Visible    ${btnHomeDeptDailyDeals}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptDailyDeals}

Click Home Icon Blue Dot
    Wait Until Element Is Visible    ${btnHomeDeptBlueDot}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptBlueDot}

Click Home Icon Christmas
    Wait Until Element Is Visible    ${btnHomeDeptChristmas}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptChristmas}

Click Home Icon Summer
    Wait Until Element Is Visible    ${btnHomeDeptSummer}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptSummer}

Click Home Icon Load Shed
    Wait Until Element Is Visible    ${btnHomeDeptLoadShed}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptLoadShed}

Click Home Icon Fashion
    Wait Until Element Is Visible    ${btnHomeDeptFashion}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptFashion}

Click Home Icon Unboxed
    Wait Until Element Is Visible    ${btnHomeDeptUnboxed}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptUnboxed}

Click Home Icon Braai Master
    Wait Until Element Is Visible    ${btnHomeDeptBraaiMaster}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptBraaiMaster}

Click Home Icon Exclusive
    Wait Until Element Is Visible    ${btnHomeDeptExclusive}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptExclusive}

Click Home Icon New To Takealot
    Wait Until Element Is Visible    ${btnHomeDeptNew}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptNew}

Click Home Icon Local
    Wait Until Element Is Visible    ${btnHomeDeptLocal}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptLocal}

Click Home Icon Brand
    Wait Until Element Is Visible    ${btnHomeDeptBrand}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptBrand}

Click Home Icon Auto
    Wait Until Element Is Visible    ${btnHomeDeptAuto}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptAuto}

Click Home Icon Baby
    Wait Until Element Is Visible    ${btnHomeDeptBaby}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptBaby}

Click Home Icon Beauty
    Wait Until Element Is Visible    ${btnHomeDeptBeauty}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptBeauty}

Click Home Icon Books
    Wait Until Element Is Visible    ${btnHomeDeptBooks}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptBooks}

Click Home Icon Camping
    Wait Until Element Is Visible    ${btnHomeDeptCamping}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptCamping}

Click Home Icon Cellphones
    Wait Until Element Is Visible    ${btnHomeDeptCellphones}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptCellphones}

Click Home Icon Clothing
    Wait Until Element Is Visible    ${btnHomeDeptClothing}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptClothing}

Click Home Icon Computers
    Wait Until Element Is Visible    ${btnHomeDeptComputers}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptComputers}

Click Home Icon DIY
    Wait Until Element Is Visible    ${btnHomeDeptDIY}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptDIY}

Click Home Icon Gaming
    Wait Until Element Is Visible    ${btnHomeDeptGaming}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptGaming}

Click Home Icon Garden
    Wait Until Element Is Visible    ${btnHomeDeptGarden}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptGarden}

Click Home Icon Grocery
    Wait Until Element Is Visible    ${btnHomeDeptGrocery}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptGrocery}

Click Home Icon Health
    Wait Until Element Is Visible    ${btnHomeDeptHealth}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptHealth}

Click Home Icon Appliances
    Wait Until Element Is Visible    ${btnHomeDeptAppliances}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptAppliances}

Click Home Icon Household
    Wait Until Element Is Visible    ${btnHomeDeptHousehold}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptHousehold}

Click Home Icon Kitchen
    Wait Until Element Is Visible    ${btnHomeDeptKitchen}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptKitchen}

Click Home Icon Liquor
    Wait Until Element Is Visible    ${btnHomeDeptLiquor}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptLiquor}

Click Home Icon Luggage
    Wait Until Element Is Visible    ${btnHomeDeptLuggage}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptLuggage}

Click Home Icon Movies
    Wait Until Element Is Visible    ${btnHomeDeptMovies}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptMovies}

Click Home Icon Music
    Wait Until Element Is Visible    ${btnHomeDeptMusic}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptMusic}

Click Home Icon Instruments
    Wait Until Element Is Visible    ${btnHomeDeptInstruments}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptInstruments}

Click Home Icon Network
    Wait Until Element Is Visible    ${btnHomeDeptNetwork}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptNetwork}

Click Home Icon Office
    Wait Until Element Is Visible    ${btnHomeDeptOffice}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptOffice}

Click Home Icon Pets
    Wait Until Element Is Visible    ${btnHomeDeptPets}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptPets}

Click Home Icon Photography
    Wait Until Element Is Visible    ${btnHomeDeptPhotography}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptPhotography}

Click Home Icon Sports
    Wait Until Element Is Visible    ${btnHomeDeptSports}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptSports}

Click Home Icon Stationery
    Wait Until Element Is Visible    ${btnHomeDeptStationery}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptStationery}

Click Home Icon Toiletries
    Wait Until Element Is Visible    ${btnHomeDeptToiletries}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptToiletries}

Click Home Icon Toys
    Wait Until Element Is Visible    ${btnHomeDeptToys}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptToys}

Click Home Icon Audio
    Wait Until Element Is Visible    ${btnHomeDeptAudio}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptAudio}

Click Home Icon Wearable
    Wait Until Element Is Visible    ${btnHomeDeptWearable}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeDeptWearable}
