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

    Wait Until Element Is Visible    ${btnSearchHome}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${btnHomeClearAllRecent}

        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${windowScroll}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${btnHomeClearAllRecent}

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
