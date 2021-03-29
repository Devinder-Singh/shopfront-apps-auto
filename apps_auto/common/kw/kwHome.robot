*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Home
    Wait Until Element Is Visible    ${btnHome}    30s
    Click Element    ${btnHome}

Click Add To Wishlist
    Wait Until Element Is Visible    ${btnAddWishlist}    30s
    Click Element    ${btnAddWishlist}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnMoreOptions}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnOptionHome}

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

Click View All Daily Deals
    Wait Until Element Is Visible    ${btnHomeViewAllDailyDeals}    30s
    Click Element    ${btnHomeViewAllDailyDeals}

Click Clear All Recently Viewed
    Wait Until Element Is Visible    ${btnHomeClearAllRecent}    30s
    Click Element    ${btnHomeClearAllRecent}

Click Cancel Clear All Recently Viewed
    Wait Until Element Is Visible    ${btnHomeClearCancelRecent}    30s
    Click Element    ${btnHomeClearCancelRecent}

Confirm Clear All Recently Viewed
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnHomeClearRecent}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${btnHomeClearRecent}

Verify Home Screen Text
    [Arguments]    ${verifyText}
    Wait Until Page Contains    ${verifyText}    30s

Verify Home Screen Text Not
    [Arguments]    ${verifyText}
    Wait Until Page Does Not Contain    ${verifyText}    30s

Click Icon Daily Deals
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
    Wait Until Element Is Visible    ${btnHomeWishlist}    30s
    Click Element    ${btnHomeWishlist}

Verify Home Menu
    Wait Until Element Is Visible    ${btnHome}    30s
    Wait Until Element Is Visible    ${btnHomeWishlist}    30s

Verify Add To Wishlist
    Wait Until Element Is Visible    ${btnAddWishlist}    30s
