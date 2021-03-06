*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Home
    Click Home Screen Close Ad
    Wait Until Element Is Visible    ${btnHome}    ${MIN_TIMEOUT}
    Click Element    ${btnHome}

Click Home iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnHome}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${btnHome}

Click Add To Wishlist
    Wait Until Element Is Visible    ${btnAddWishlist}    ${MAX_TIMEOUT}
    Click Element    ${btnAddWishlist}
    Verify Text On Screen    Item added to Wish List    ${MAX_TIMEOUT}
    Verify Text Not On Screen    Item added to Wish List    ${MAX_TIMEOUT}
    IF    '${PLATFORM_NAME}' == 'android'
        Click Element    ${btnMoreOptions}
        Click Element    ${btnOptionHome}
    END
    Click Continue Shopping Ignore Error

Click Add To Wishlist Only
    Wait Until Element Is Visible    ${btnAddWishlist}    ${MIN_TIMEOUT}
    Click Element    ${btnAddWishlist}

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

Click Home Screen Close Ad

    ${btnAdClose}=    Set Variable    ${False}
#    ${btnAdClose}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnHomeAdClose}    ${MIN_TIMEOUT}
#    IF    ${btnAdClose} == ${True}
#        Click Element    ${btnHomeAdClose}
#    END

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
    [Arguments]    ${sleepBeforeAction}=1s
    Sleep    ${sleepBeforeAction}
    Wait Until Element Is Visible    ${btnHomeClearCancelRecent}    ${MIN_TIMEOUT}
    Click Element    ${btnHomeClearCancelRecent}

Confirm Clear All Recently Viewed
    IF    '${PLATFORM_NAME}' == 'ios'
        Wait Until Element Is Visible    ${btnHomeClearRecent}    ${MAX_TIMEOUT}
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

Click Home Icon
    [Arguments]    ${iconText}

    IF    '${PLATFORM_NAME}' == 'ios'
        ${txtProduct}=    Set Variable    chain=**/XCUIElementTypeStaticText[`label CONTAINS "${iconText}"`]
    ELSE IF    '${PLATFORM_NAME}' == 'android'
        ${txtProduct}=    Set Variable    xpath=//*[contains(@text, "${iconText}")]
    END
    Wait Until Element Is Visible    ${txtProduct}    ${MIN_TIMEOUT}
    Click Element    ${txtProduct}
