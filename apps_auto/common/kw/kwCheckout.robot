*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Item Promotion Text
    Wait Until Element Is Visible    ${btnItemPromotion}    30s
    Click Element    ${btnItemPromotion}

Click Checkout
    Wait Until Element Is Visible    ${btnCheckout}    30s
    Click Element    ${btnCheckout}

Click Checkout Android
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnCheckout}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnCheckout}

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

Change Cart Quantity Android
    [Arguments]    ${qty}

    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnCartQty}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnCartQty}

    ${txtCartQty}=    Set Variable If    '${PLATFORM_NAME}'=='android'    xpath=//*[@text="${qty}"]    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label CONTAINS "${qty}"`]

    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${txtCartQty}    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtCartQty}

    Sleep    2s

Click Add Items to Qualify iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnCartAddPromoItems}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${btnCartAddPromoItems}

Click Checkout Cart Undo
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnCartUndo}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnCartUndo}

Add To Cart Trending First Item
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnCartTrendingAddToCart}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnCartTrendingAddToCart}
