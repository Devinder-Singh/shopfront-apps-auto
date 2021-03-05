*** Settings ***
Library           TalLibrary

*** Keywords ***
Verify Card Payment
    [Arguments]    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${lblCardNumber}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Element Should Contain Text    ${lblCardNumber}    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    30s

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
