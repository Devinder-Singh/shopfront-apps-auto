*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Item Promotion Text
    Wait Until Element Is Visible    ${btnItemPromotion}    ${MIN_TIMEOUT}
    Click Element    ${btnItemPromotion}

Click Item Promotion Text By Index
    [Documentation]    Clicks the promotion text based on index.
    [Arguments]    ${index}
    ${dynamicItemPromotionTextAndroid}=    Set Variable    xpath=(//android.view.ViewGroup/android.widget.Button[@resource-id='${APP_PACKAGE}:id/cartProductItemPromotionText'])[${index}]
    Run Keyword If    '${PLATFORM_NAME}' == 'android'    Click Element    ${dynamicItemPromotionTextAndroid}
        
Click Missed Promotion Text
    Wait Until Element Is Visible    ${lblCheckoutMissedPromotion}    ${MIN_TIMEOUT}
    Click Element    ${lblCheckoutMissedPromotion}

Click Checkout
#    Set Test Variable    ${ISORDERED}    ${False}
    Wait Until Element Enabled    ${btnCheckout}    ${MAX_TIMEOUT}
    Click Element    ${btnCheckout}

Click CAB Add To Cart
    IF    '${PLATFORM_NAME}' == 'android'
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
    IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Element Is Visible    ${btnCheckout}    ${MIN_TIMEOUT}
        Click Element    ${btnCheckout}
    END

Verify Toolbar iOS
    IF    '${PLATFORM_NAME}' == 'ios'
        Wait Until Element Is Visible    ${btnHome}    ${MIN_TIMEOUT}
        Wait Until Element Is Visible    ${btnCart}    ${MIN_TIMEOUT}
        Wait Until Element Is Visible    ${btnWishListIcon}    ${MIN_TIMEOUT}
        Wait Until Element Is Visible    ${mnuMyAccount}    ${MIN_TIMEOUT}
    END
    

Wait for Checkout
    Wait Until Element Is Visible    ${btnCheckout}    ${MIN_TIMEOUT}

Click Checkout Delete First Item
    Wait Until Element Is Visible    ${btnCheckout}    ${MIN_TIMEOUT}
    Click Element    ${btnCheckoutEdit}
    Wait Until Element Is Visible    ${btnCheckoutSelect}    ${MIN_TIMEOUT}
    Click Element    ${btnCheckoutSelect}    
    Click Element    ${btnCheckoutDelete}

Click Checkout Move To Wishlist First Item
    Wait Until Element Is Visible    ${btnCheckout}    ${MIN_TIMEOUT}
    Click Element    ${btnCheckoutEdit}
    Wait Until Element Is Visible    ${btnCheckoutSelect}    ${MIN_TIMEOUT}
    Click Element    ${btnCheckoutSelect}
    Click Element    ${btnCheckoutMoveToWishlist}

Click Checkout Move To Wishlist Swipe
    Wait Until Element Is Visible    ${btnCheckout}    ${MIN_TIMEOUT}
    
    IF    '${PLATFORM_NAME}' == 'android'
        Click Element    ${btnCartItemContainer}
    END
        

Verify Checkout Delete And Wishlist
    Wait Until Element Is Visible    ${btnCheckout}    ${MIN_TIMEOUT}
    
    IF    '${PLATFORM_NAME}' == 'android'
        Click Element    ${btnCheckoutEdit}
        Wait Until Element Is Visible    ${btnCheckoutSelect}    ${MIN_TIMEOUT}
        Click Element    ${btnCheckoutSelect}    
    END
    
    Verify Element On Screen    ${btnCheckoutDelete}    ${MIN_TIMEOUT}
    Verify Element On Screen    ${btnCheckoutMoveToWishlist}    ${MIN_TIMEOUT}

Change Cart Quantity
    [Arguments]    ${qty}    ${index}=1
    IF    '${PLATFORM_NAME}' == 'android'
        ${btnCartQty}=    Set Variable    xpath=(//android.widget.EditText[@resource-id='fi.android.takealot.debug:id/cartProductItemQuantityText'])[${index}]
        ${txtCartQty}=    Set Variable    xpath=//*[@text="${qty}"]
        Wait Until Element Is Visible    ${btnCartQty}    ${MIN_TIMEOUT}
        Click Element    ${btnCartQty}
        Wait Until Element Is Visible    ${txtCartQty}    ${MIN_TIMEOUT}
        Click Element    ${txtCartQty}
    ELSE IF    '${PLATFORM_NAME}' == 'ios'
        #Off set index by 1 to cater for promotion button which falls under same table as qty selector buttons.
        ${index}=    Evaluate    ${index} + 1
        ${btnCartQty}=    Set Variable    chain=**/XCUIElementTypeTable/XCUIElementTypeCell[${index}]/XCUIElementTypeButton
        Wait Until Element Is Visible    ${btnCartQty}
        Click Element    ${btnCartQty}
        Input Text    ${qtyPickerWheel}    ${qty}
        Click Element    ${btnQtyPickerWheelDone}
    END
            
    

Change Cart Quantity Scroll
    [Arguments]    ${qty}    ${index}=1
    IF    '${PLATFORM_NAME}' == 'android'
        ${btnCartQty}=    Set Variable    xpath=(//android.widget.EditText[@resource-id='fi.android.takealot.debug:id/cartProductItemQuantityText'])[${index}]
        ${txtCartQty}=    Set Variable    xpath=//*[@text="${qty}"]
        Click Element    ${btnCartQty}
        Scroll To Element    xpath=//*[@text="1"]    scrollSwipeDirection=Down
        Scroll To Element    ${txtCartQty}
        Click Element    ${txtCartQty}
    ELSE IF    '${PLATFORM_NAME}' == 'ios'
        #Since ios cannot scroll quantity by use of picker wheel use normal quantity selection method.
        Change Cart Quantity    ${qty}    ${index}
    END
    

Click Add Items to Qualify iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnCartAddPromoItems}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${btnCartAddPromoItems}

Click Checkout Cart Undo
    IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Element Is Visible    ${btnCartUndo}    ${MIN_TIMEOUT}
        Click Element    ${btnCartUndo}    
    END
    
Add To Cart Trending First Item
    Wait Until Element Is Visible    ${btnCartTrendingAddToCart}    ${MIN_TIMEOUT}
    Click Element    ${btnCartTrendingAddToCart}

Swipe Cart Item Left
    [Documentation]    This keyword will swipe a cart item card left partially based on a specified index dynamically.
                       ...    Example parsing 1 will result in the first cart item card being swiped.
    [Arguments]    ${cartItemIndex}    ${sleepBeforeAction}=1s
    Sleep    ${sleepBeforeAction}

    ${dynamicCartItemXpath}=    Set Variable    ${None}
    IF    '${PLATFORM_NAME}' == 'android'
        ${dynamicCartItemXpath}=    Set Variable    xpath=(//android.view.ViewGroup[@resource-id='fi.android.takealot.debug:id/cartProductItemContainer'])[${cartItemIndex}]
    ELSE IF    '${PLATFORM_NAME}' == 'ios'
        ${dynamicCartItemXpath}=    Set Variable    chain=**/XCUIElementTypeTable/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther[${cartItemIndex}]
    END
    Swipe Left    ${dynamicCartItemXpath}    swipeSpeed=1500    swipePartially=${True}

Click Cart Move To Wishlist
    [Documentation]    This keyword will click the "Move to wishlist" canvas element relative to an open cart item card by index.
                       ...    The index refers to a cart card in the list where 1 is equal to the first card.     
                       ...    Note: In order for this keyword to work a cart item card must already be partially swiped left.
    [Arguments]    ${cartItemIndex}    ${sleepBeforeAction}=2s
    Sleep    ${sleepBeforeAction}

    ${dynamicCartItemXpath}=    Set Variable    ${None}
    IF    '${PLATFORM_NAME}' == 'android'
        ${dynamicCartItemXpath}=    Set Variable    xpath=(//android.view.ViewGroup[@resource-id='fi.android.takealot.debug:id/cartProductItemContainer'])[${cartItemIndex}]
    END

    ${element_size}=    Get Element Size    ${dynamicCartItemXpath}
    ${element_location}=    Get Element Location    ${dynamicCartItemXpath}
    ${click_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 1.1)
    ${click_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Click Element At Coordinates    ${click_x}    ${click_y}


Click Cart Delete
    [Documentation]    This keyword will click the "Delete item" canvas element relative to an open cart item card by index.
                       ...    The index refers to a cart card in the list where 1 is equal to the first card.     
                       ...    Note: In order for this keyword to work a cart item card must already be partially swiped left.
    [Arguments]    ${cartItemIndex}=1    ${sleepBeforeAction}=2s
 
    Sleep    ${sleepBeforeAction}
    ${dynamicCartItemXpath}=    Set Variable    ${None}

    IF    '${PLATFORM_NAME}' == 'android'
        ${dynamicCartItemXpath}=    Set Variable    xpath=(//android.view.ViewGroup[@resource-id='fi.android.takealot.debug:id/cartProductItemContainer'])[${cartItemIndex}]
        
        ${element_size}=    Get Element Size    ${dynamicCartItemXpath}
        ${element_location}=    Get Element Location    ${dynamicCartItemXpath}
        ${click_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 1.1)
        ${click_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
        Click Element At Coordinates    ${click_x}    ${click_y}

    ELSE IF    '${PLATFORM_NAME}' == 'ios'
        #In ios only one delete button is visible when you swipe the cart left hence no need for a dynamic index like android and button is part of UI and not canvas graphics.
        Click Element    ${btnDeleteUnderItemCard}
    END

Click Cart Continue Shopping
    Wait Until Element Is Visible    ${btnCartContinueShopping}
    Click Element    ${btnCartContinueShopping}

    
    

    
    
