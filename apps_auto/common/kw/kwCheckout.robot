*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Item Promotion Text
    Wait Until Element Is Visible    ${btnItemPromotion}    30s
    Click Element    ${btnItemPromotion}

Click Checkout
    Wait Until Element Is Visible    ${btnCheckout}    30s
    Click Element    ${btnCheckout}

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

Change Cart Quantity
    [Arguments]    ${qty}

    Wait Until Element Is Visible    ${btnCartQty}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnCartQty}

    ${txtCartQty}=    Set Variable    xpath=//*[@text="${qty}"]

    Wait Until Element Is Visible    ${btnCartQtyRoot}    10s
    Swipe Down    ${btnCartQtyRoot}

    Wait Until Element Is Visible    ${txtCartQty}    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtCartQty}

Click Checkout Cart Undo
    Wait Until Element Is Visible    ${btnCartUndo}    30s
    Click Element    ${btnCartUndo}

Add To Cart Trending First Item
    Wait Until Element Is Visible    ${btnCartTrendingAddToCart}    30s
    Click Element    ${btnCartTrendingAddToCart}

Verify Checkout Text
    [Arguments]    ${verifyText}

    Wait Until Page Contains    ${verifyText}    10s
