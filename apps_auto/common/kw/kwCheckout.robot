*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Item Promotion Text
    Wait Until Element Is Visible    ${btnItemPromotion}    ${MIN_TIMEOUT}
    Click Element    ${btnItemPromotion}

Click Missed Promotion Text
    Wait Until Element Is Visible    ${lblCheckoutMissedPromotion}    ${MIN_TIMEOUT}
    Click Element    ${lblCheckoutMissedPromotion}

Click Checkout
    Wait Until Element Is Visible    ${btnCheckout}    ${MIN_TIMEOUT}
    Click Element    ${btnCheckout}

Click CAB Add To Cart
    IF    ${PLATFORM_NAME} == 'android'
        Wait Until Element Is Visible    ${btnCartCustomersAlsoBought}    ${MIN_TIMEOUT}
        Click Element    ${btnCartCustomersAlsoBought}
    END

Click CAB Add To Cart Scroll
    Wait Until Element Is Visible    ${btnCheckout}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    50
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${btnCartCustomersAlsoBought}

        IF    ${chkProdVisible} == ${True}
            Exit For Loop
        END

         Swipe Up    ${windowScroll}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${btnCartCustomersAlsoBought}

Click Checkout Android
    IF    ${PLATFORM_NAME} == 'android'
        Wait Until Element Is Visible    ${btnCheckout}    ${MIN_TIMEOUT}
        Click Element    ${btnCheckout}
    END

Verify Toolbar iOS
    IF    ${PLATFORM_NAME} == 'ios'
        Wait Until Element Is Visible    ${btnHome}    ${MIN_TIMEOUT}
        Wait Until Element Is Visible    ${btnCart}    ${MIN_TIMEOUT}
        Wait Until Element Is Visible    ${btnWishListIcon}    ${MIN_TIMEOUT}
        Wait Until Element Is Visible    ${mnuMyAccount}    ${MIN_TIMEOUT}
    END
    

Wait for Checkout
    Wait Until Element Is Visible    ${btnCheckout}    ${MIN_TIMEOUT}

Click Checkout Delete First Item
    Wait Until Element Is Visible    ${btnCheckout}    ${MIN_TIMEOUT}

    IF    ${PLATFORM_NAME} == 'android'
        Click Element    ${btnCheckoutEdit}
        Wait Until Element Is Visible    ${btnCheckoutSelect}    ${MIN_TIMEOUT}
        Click Element    ${btnCheckoutSelect}    
    END
    
    Click Element    ${btnCheckoutDelete}

Click Checkout Move To Wishlist First Item
    Wait Until Element Is Visible    ${btnCheckout}    ${MIN_TIMEOUT}
    
    IF    ${PLATFORM_NAME} == 'android'
        Click Element    ${btnCheckoutEdit}
        Wait Until Element Is Visible    ${btnCheckoutSelect}    ${MIN_TIMEOUT}
        Click Element    ${btnCheckoutSelect}
    END
    
    Click Element    ${btnCheckoutMoveToWishlist}

Click Checkout Move To Wishlist Swipe
    Wait Until Element Is Visible    ${btnCheckout}    ${MIN_TIMEOUT}
    
    IF    ${PLATFORM_NAME} == 'android'
        Click Element    ${btnCartItemContainer}
    END
        

Verify Checkout Delete And Wishlist
    Wait Until Element Is Visible    ${btnCheckout}    ${MIN_TIMEOUT}
    
    IF    ${PLATFORM_NAME} == 'android'
        Click Element    ${btnCheckoutEdit}
        Wait Until Element Is Visible    ${btnCheckoutSelect}    ${MIN_TIMEOUT}
        Click Element    ${btnCheckoutSelect}    
    END
    
    Verify Element On Screen    ${btnCheckoutDelete}    ${MIN_TIMEOUT}
    Verify Element On Screen    ${btnCheckoutMoveToWishlist}    ${MIN_TIMEOUT}

Change Cart Quantity Android
    [Arguments]    ${qty}

    Wait Until Element Is Visible    ${btnCartQty}    ${MIN_TIMEOUT}
    Click Element    ${btnCartQty}

    ${txtCartQty}=    Set Variable    ${None}

    IF    ${PLATFORM_NAME} == 'android'
        ${txtCartQty}=    Set Variable    xpath=//*[@text="${qty}"]
    ELSE IF    ${PLATFORM_NAME} == 'ios'    
        ${txtCartQty}=    Set Variable    chain=**/XCUIElementTypeStaticText[`label == "${qty}"`]    
    END
            
    Wait Until Element Is Visible    ${txtCartQty}    ${MIN_TIMEOUT}
    Click Element    ${txtCartQty}
#    Sleep    3s

Change Cart Quantity Scroll
    [Arguments]    ${qty}

    Wait Until Element Is Visible    ${btnCartQty}    ${MIN_TIMEOUT}
    Click Element    ${btnCartQty}
    
    ${txtCartQty}=    Set Variable    ${None}
    IF    ${PLATFORM_NAME} == 'android'
        ${txtCartQty}=    Set Variable    xpath=//*[@text="${qty}"]
    ELSE IF    ${PLATFORM_NAME} == 'ios'
        ${txtCartQty}=    Set Variable    chain=**/XCUIElementTypeStaticText[`label == "${qty}"`]
    END
               
    Verify Text On Screen    Select quantity

    Set Implicitly Wait    1
    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    15
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${txtCartQty}

        IF    ${chkProdVisible} == ${True}
            Exit For Loop
        END

        Swipe Up    ${windowScroll}
        ${index}=    Evaluate    ${index} + 1
    END
    Set Implicitly Wait    5
    Click Element    ${txtCartQty}

Click Add Items to Qualify iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnCartAddPromoItems}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${btnCartAddPromoItems}

Click Checkout Cart Undo
    IF    ${PLATFORM_NAME} == 'android'
        Wait Until Element Is Visible    ${btnCartUndo}    ${MIN_TIMEOUT}
        Click Element    ${btnCartUndo}    
    END
    
Add To Cart Trending First Item
    IF    ${PLATFORM_NAME} == 'android'
        Wait Until Element Is Visible    ${btnCartTrendingAddToCart}    ${MIN_TIMEOUT}
        Click Element    ${btnCartTrendingAddToCart}
    END
    
