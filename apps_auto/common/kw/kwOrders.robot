*** Settings ***
Library           TalLibrary

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
