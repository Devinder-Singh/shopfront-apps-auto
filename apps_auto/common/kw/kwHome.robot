*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Home
    Wait Until Element Is Visible    ${btnHome}    30s
    Click Element    ${btnHome}

Click Home iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnHome}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${btnHome}
    Sleep    2s

Click Add To Wishlist
    Wait Until Element Is Visible    ${btnAddWishlist}    30s
    Click Element    ${btnAddWishlist}
    Verify Text On Screen iOS    Item added to Wishlist    30s
    Verify Text On Screen Android    Item added to Wish List    30s
    Sleep    5s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnMoreOptions}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnOptionHome}
    Click Continue Shopping Ignore Error

Click Add To Wishlist Only
    Wait Until Element Is Visible    ${btnAddWishlist}    30s
    Click Element    ${btnAddWishlist}
    Sleep    1s

Click More Options Menu
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnMoreOptions}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnMoreOptions}

Click Options Menu Home
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnOptionHome}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnOptionHome}

Click Options Menu Categories
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnOptionCategories}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnOptionCategories}

Click Options Menu Deals
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnOptionDeals}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnOptionDeals}

Click Options Menu Lists
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnOptionLists}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnOptionLists}

Click Options Menu Account
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnOptionAccount}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnOptionAccount}

Click Search Icon
    Wait Until Element Is Visible    ${btnSearchIcon}    30s
    Click Element    ${btnSearchIcon}

    ${btnPresentSearchHistory}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnSearchClearAll}    15s
    Run Keyword If    ${btnPresentSearchHistory}    Click Element    ${btnSearchClearAll}

Click View All Daily Deals
    Wait Until Element Is Visible    ${btnHomeViewAllDailyDeals}    30s
    Click Element    ${btnHomeViewAllDailyDeals}

Click View All Daily Deals If Present
    ${chkElement}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnHomeViewAllDailyDeals}    10s
    Run Keyword If    ${chkElement}==True    Click Element    ${btnHomeViewAllDailyDeals}

Click Clear All Recently Viewed

    Wait Until Element Is Visible    ${btnSearchHome}    30s

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${btnHomeClearAllRecent}

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Swipe Up    ${windowScroll}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${btnHomeClearAllRecent}

Click Cancel Clear All Recently Viewed
    Wait Until Element Is Visible    ${btnHomeClearCancelRecent}    30s
    Click Element    ${btnHomeClearCancelRecent}

Confirm Clear All Recently Viewed
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnHomeClearRecent}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${btnHomeClearRecent}

Click Icon Daily Deals
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnMenuCategories}
    Wait Until Element Is Visible    ${btnHomeDeptDailyDeals}    30s
    Click Element    ${btnHomeDeptDailyDeals}

Click Icon App Only Deals
    Wait Until Element Is Visible    ${btnHomeDeptAppOnlyDeals}    30s
    Click Element    ${btnHomeDeptAppOnlyDeals}

Click Icon Home Cook Essentials
    Wait Until Element Is Visible    ${btnHomeDeptHomeCook}    30s
    Click Element    ${btnHomeDeptHomeCook}

Click Icon Health & Personal Care
    Wait Until Element Is Visible    ${btnHomeDeptHealthCare}    30s
    Click Element    ${btnHomeDeptHealthCare}

Click Home Back
    Wait Until Element Is Visible    ${btnHomeBack}    30s
    Click Element    ${btnHomeBack}

Click Home WishList
    Wait Until Element Is Visible    ${btnWishListIcon}    30s
    Click Element    ${btnWishListIcon}
    Navigate to Wishlist

Verify Home Menu
    Wait Until Element Is Visible    ${btnHome}    30s
    Wait Until Element Is Visible    ${btnWishListIcon}    30s

Verify Add To Wishlist
    Wait Until Element Is Visible    ${btnAddWishlist}    30s
