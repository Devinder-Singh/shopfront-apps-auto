*** Settings ***
Library           TalLibrary

*** Keywords ***
Click Payfast Payment Method
    Wait Until Element Is Visible    ${lblPayFastEFT}    30s
    Click Element    ${lblPayFastEFT}

Click Card Payment Method
    Wait Until Element Is Visible    ${lblCreditCardEFT}    30s
    Click Element    ${lblCreditCardEFT}

Verify Payfast Payment
    [Arguments]    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${lblSecurePaymentPayFast}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Element Should Contain Text    ${lblSecurePaymentPayFast}    ${verifyText}
