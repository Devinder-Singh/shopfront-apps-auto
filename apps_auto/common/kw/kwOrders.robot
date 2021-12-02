*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Order Awaiting Payment
    Wait Until Element Is Visible    ${txtOrdersAwaitingPayment}    ${MIN_TIMEOUT}
    Click Element    ${txtOrdersAwaitingPayment}

Verify Order Detail Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${btnOrdersPayNow}    ${MIN_TIMEOUT}

     IF    '${PLATFORM_NAME}' == 'ios'
        Page Should Contain Text    ${verifyText}
     ELSE
        Wait Until Page Contains    ${verifyText}    ${MIN_TIMEOUT}
     END

Click Order Pay Now
    Wait Until Element Is Visible    ${btnOrdersPayNow}    ${MIN_TIMEOUT}
    Click Element    ${btnOrdersPayNow}

Click Order Cancel
    Wait Until Element Is Visible    ${btnOrdersCancel}    ${MIN_TIMEOUT}
    Click Element    ${btnOrdersCancel}
    Wait Until Element Is Visible    ${btnOrdersCancelConfirm}    ${MIN_TIMEOUT}
    Click Element    ${btnOrdersCancelConfirm}

    IF    '${PLATFORM_NAME}' == 'android'
        Verify Text On Screen    Cancelled Item(s)    ${MIN_TIMEOUT}
    ELSE
        Verify Text On Screen    Your order has been cancelled    ${MIN_TIMEOUT}
    END

Cancel Latest Order
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Click Order Awaiting Payment
    Click Order Cancel

Click Order By Index
    [Documentation]    Clicks an order based on index from the list of orders.
    [Arguments]    ${orderIndex}
    ${dynamicOrderIndex}=    Set Variable    ${None}
    IF    '${PLATFORM_NAME}' == 'android'
        ${dynamicOrderIndex}=    Set Variable    xpath=(//android.widget.TextView[@resource-id='fi.android.takealot.debug:id/orderHistoryItemTitle'])[${orderIndex}]
    ELSE IF    '${PLATFORM_NAME}' == 'ios'
        ${dynamicOrderIndex}=    Set Variable    chain=**/XCUIElementTypeStaticText[`label contains "Delivery by"`][${orderIndex}]    
    END
    Click Element    ${dynamicOrderIndex}

Click Awaiting Order By Index
    [Documentation]    Clicks an awaiting order based on index from the list of orders.
    [Arguments]    ${orderIndex}
    ${dynamicAwaitingOrderIndex}=    Set Variable    ${None}
    
    IF    '${PLATFORM_NAME}' == 'android'
        ${dynamicAwaitingOrderIndex}=    Set Variable    xpath=(//android.widget.TextView[@resource-id='fi.android.takealot.debug:id/orderHistoryItemTitle' and @text='Awaiting Payment'])[${orderIndex}]
    ELSE IF    '${PLATFORM_NAME}' == 'ios'
        ${dynamicAwaitingOrderIndex}=    Set Variable    chain=**/XCUIElementTypeStaticText[`label == "Awaiting Payment"`][${orderIndex}]    
    END
    Click Element    ${dynamicAwaitingOrderIndex}

Click Filter Options Change
    [Documentation]    Clicks the filter options change button within the order history screen.
    Wait Until Element Is Visible    ${btnFilterOptionChange}    ${MAX_TIMEOUT}
    Click Element    ${btnFilterOptionChange}

Select Order History Filter Option
    [Documentation]    Selects a filter option date from the orders history screen.
    [Arguments]    ${filterOption}
    ${filterOptionToSelect}=    Set Variable    ${None}
    IF    '${PLATFORM_NAME}' == 'android'
        ${filterOptionToSelect}=    Set Variable    xpath=(//android.widget.RadioButton[@resource-id='fi.android.takealot.debug:id/talWidgetSingleSelectItemRadioButton' and @text='${filterOption}'])
    ELSE IF    '${PLATFORM_NAME}' == 'ios'
        ${filterOptionToSelect}=    Set Variable    chain=**/XCUIElementTypeStaticText[`label == "${filterOption}"`]
    END
    Wait Until Element Is Visible    ${filterOptionToSelect}    ${MIN_TIMEOUT}
    Click Element    ${filterOptionToSelect}