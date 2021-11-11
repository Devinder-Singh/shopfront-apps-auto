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
