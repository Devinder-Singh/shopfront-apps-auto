*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Item Promotion Text
    Wait Until Element Is Visible    ${btnItemPromotion}    30s
    Click Element    ${btnItemPromotion}

Click Missed Promotion Text
    Wait Until Element Is Visible    ${lblCheckoutMissedPromotion}    30s
    Click Element    ${lblCheckoutMissedPromotion}

Click Checkout
    Wait Until Element Is Visible    ${btnCheckout}    30s
    Click Element    ${btnCheckout}

Click CAB Add To Cart
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnCartCustomersAlsoBought}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnCartCustomersAlsoBought}

Click CAB Add To Cart Scroll
    Wait Until Element Is Visible    ${btnCheckout}    30s

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    50
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${btnCartCustomersAlsoBought}

        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${windowScroll}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${btnCartCustomersAlsoBought}

Click Checkout Android
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnCheckout}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnCheckout}

Verify Toolbar iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnHome}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnCart}    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnWishListIcon}    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${mnuMyAccount}    1s

Wait for Checkout
    Wait Until Element Is Visible    ${btnCheckout}    30s

Click Checkout Delete First Item
    Wait Until Element Is Visible    ${btnCheckout}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnCheckoutEdit}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnCheckoutSelect}    15s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnCheckoutSelect}
    Click Element    ${btnCheckoutDelete}

Click Checkout Move To Wishlist First Item
    Wait Until Element Is Visible    ${btnCheckout}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnCheckoutEdit}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnCheckoutSelect}    15s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnCheckoutSelect}
    Click Element    ${btnCheckoutMoveToWishlist}

Click Checkout Move To Wishlist Swipe
    Wait Until Element Is Visible    ${btnCheckout}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnCartItemContainer}

Verify Checkout Delete And Wishlist
    Wait Until Element Is Visible    ${btnCheckout}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnCheckoutEdit}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnCheckoutSelect}    15s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnCheckoutSelect}
    Verify Element On Screen    ${btnCheckoutDelete}    5s
    Verify Element On Screen    ${btnCheckoutMoveToWishlist}    1s

Change Cart Quantity Android
    [Arguments]    ${qty}

    Wait Until Element Is Visible    ${btnCartQty}    30s
    Click Element    ${btnCartQty}

    ${txtCartQty}=    Set Variable If    '${PLATFORM_NAME}'=='android'    xpath=//*[@text="${qty}"]    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label == "${qty}"`]

    Wait Until Element Is Visible    ${txtCartQty}    1s
    Click Element    ${txtCartQty}

#    Sleep    3s

Click Add Items to Qualify iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnCartAddPromoItems}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${btnCartAddPromoItems}

Click Checkout Cart Undo
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnCartUndo}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnCartUndo}

Add To Cart Trending First Item
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnCartTrendingAddToCart}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnCartTrendingAddToCart}
