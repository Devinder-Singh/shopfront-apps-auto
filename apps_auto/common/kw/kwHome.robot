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
    Verify Text On Screen    Item added to Wish List    ${MAX_TIMEOUT}

    #Sleep    5s
    Wait Until Page Does Not Contain    Item added to Wish List    ${MAX_TIMEOUT}

    IF    '${PLATFORM_NAME}' == 'android'
        Click Element    ${btnMoreOptions}
        Click Element    ${btnOptionHome}
    END
   
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
    IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Element Is Visible    ${btnOptionHome}    ${MIN_TIMEOUT}
        Click Element    ${btnOptionHome}
    END

Click Options Menu Categories
    IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Element Is Visible    ${btnOptionCategories}    ${MIN_TIMEOUT}
        Click Element    ${btnOptionCategories}
    END
    
Click Options Menu Deals
    IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Element Is Visible    ${btnOptionDeals}    ${MIN_TIMEOUT}
        Click Element    ${btnOptionDeals}
    END
    
Click Options Menu Lists
    IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Element Is Visible    ${btnOptionLists}    ${MIN_TIMEOUT}
        Click Element    ${btnOptionLists}
    END
    
Click Options Menu Account
    IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Element Is Visible    ${btnOptionAccount}    ${MIN_TIMEOUT}
        Click Element    ${btnOptionAccount}
    END

Click Search Icon
    Wait Until Element Is Visible    ${btnSearchIcon}    ${MIN_TIMEOUT}
    Click Element    ${btnSearchIcon}

    ${btnPresentSearchHistory}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnSearchClearAll}    ${MIN_TIMEOUT}
    IF    ${btnPresentSearchHistory} == ${True}
        Click Element    ${btnSearchClearAll}
    END    

Click View All Daily Deals
    Wait Until Element Is Visible    ${btnHomeViewAllDailyDeals}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeViewAllDailyDeals}

Click View All Daily Deals If Present
    ${chkElement}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnHomeViewAllDailyDeals}    ${MIN_TIMEOUT}
    IF    ${chkElement} == ${True}
        Click Element    ${btnHomeViewAllDailyDeals}
    END    

Click Clear All Recently Viewed
    Click Element On Scroll    ${btnHomeClearAllRecent}    12

Click Clear All Recently Viewed Android
    IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Element Is Visible    ${btnSearchHome}    ${MIN_TIMEOUT}
    END

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${btnHomeClearAllRecent}
        
        IF    ${chkProdVisible} == ${True}
            Exit For Loop
        END
        
        IF    '${PLATFORM_NAME}' == 'android'
            Exit For Loop
        END 

        Swipe Up    ${windowScroll}
        ${index}=    Evaluate    ${index} + 1
    END
    IF    '${PLATFORM_NAME}' == 'android'
        Click Element    ${btnHomeClearAllRecent}
    END

Click Cancel Clear All Recently Viewed
    Wait Until Element Is Visible    ${btnHomeClearCancelRecent}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeClearCancelRecent}

Confirm Clear All Recently Viewed
    IF    '${PLATFORM_NAME}' == 'ios'
        Wait Until Element Is Visible    ${btnHomeClearRecent}    ${MIN_TIMEOUT}
        Click Element    ${btnHomeClearRecent}
    END

Click Icon Daily Deals
    IF    '${PLATFORM_NAME}' == 'android'
         Click Element    ${btnMenuCategories}
    END
    
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
