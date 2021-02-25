*** Settings ***
Library           TalLibrary

*** Keywords ***
Click Donate No Thanks
    Wait Until Element Is Visible    ${btnNoThanks}    30s
    Click Element    ${btnNoThanks}

Click Pay With Credit Card
    Wait Until Element Is Visible    ${btnCreditCard}    30s
    Click Element    ${btnCreditCard}

Click Change Payment Method
    Wait Until Element Is Visible    ${btnChange}    30s
    Click Element    ${btnChange}

Click Change Payment Delivery Method
    Wait Until Element Is Visible    ${btnChange}    30s
    swipe by percent    50     70     50    100  1000
    Wait Until Element Is Visible    ${txtChangePaymentDeliveryMethod}    30s
    Click Element    ${txtChangePaymentDeliveryMethod}

Click Change Payment Pickup Point
    Wait Until Element Is Visible    ${btnChange}    30s
    swipe by percent    50     70     50    100  1000
    Wait Until Element Is Visible    ${txtChangePaymentPickup}    30s
    Click Element    ${txtChangePaymentPickup}

Click Pay With Payfast
    Wait Until Element Is Visible    ${btnPayWithFast}    30s
    Click Element    ${btnPayWithFast}

Click Back Payment Screen
    Wait Until Element Is Visible    ${btnBackPayment}    30s
    Click Element    ${btnBackPayment}

Verify Payment Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${btnChange}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s
