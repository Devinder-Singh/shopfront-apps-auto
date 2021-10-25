*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Order Awaiting Payment
    Wait Until Element Is Visible    ${txtOrdersAwaitingPayment}    30s
    Click Element    ${txtOrdersAwaitingPayment}

Verify Order Detail Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${btnOrdersPayNow}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s

Click Order Pay Now
    Wait Until Element Is Visible    ${btnOrdersPayNow}    30s
    Click Element    ${btnOrdersPayNow}

Click Order Cancel
    Wait Until Element Is Visible    ${btnOrdersCancel}    30s
    Click Element    ${btnOrdersCancel}
    Wait Until Element Is Visible    ${btnOrdersCancelConfirm}    5s
    Click Element    ${btnOrdersCancelConfirm}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Cancelled Item(s)    30s    ELSE    Verify Text On Screen    Your order has been cancelled    30s

Cancel Latest Order
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Click Order Awaiting Payment
    Click Order Cancel
