*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Verify Card Payment
    ${chkTextSuccess}=    Run Keyword And Return Status    Verify Text On Screen    Card Number    60s
    Run Keyword If    ${chkTextSuccess}==False    Verify Text On Screen    Card number    1s

Verify Payfast Payment Text
    [Arguments]    ${verifyText}
    Verify Text On Screen    ${verifyText}    60s

Click Pay with Credit Card Back
    Wait Until Element Is Visible    ${navPayCreditCardBack}    30s
    Click Element    ${navPayCreditCardBack}

Input Credit Card Number
    [Arguments]    ${cardNumber}
    Wait Until Element Is Visible    ${txtCreditCardNumber}    30s
    Clear Text    ${txtCreditCardNumber}
    Input Text    ${txtCreditCardNumber}    ${cardNumber}

Click Credit Card Name
    Wait Until Element Is Visible    ${txtCreditCardName}    30s
    Click Element    ${txtCreditCardName}

Verify Card Payment Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${lblCardNumber}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s
