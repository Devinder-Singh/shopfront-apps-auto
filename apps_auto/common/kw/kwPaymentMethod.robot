*** Settings ***
Library           TalLibrary

*** Keywords ***
Click Payfast Payment Method
    Wait Until Element Is Visible    ${lblPayFastEFT}    30s
    Click Element    ${lblPayFastEFT}

Click Card Payment Method
    Wait Until Element Is Visible    ${lblCreditCardEFT}    30s
    Click Element    ${lblCreditCardEFT}

Click eBucks Payment Method
    Wait Until Element Is Visible    ${lbleBucksEFT}    30s
    Click Element    ${lbleBucksEFT}

Click eBucks Payment Info
    Wait Until Element Is Visible    ${btneBucksEFTInfo}    30s
    Click Element    ${btneBucksEFTInfo}

Verify Payfast Payment
    [Arguments]    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${lblSecurePaymentPayFast}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Element Should Contain Text    ${lblSecurePaymentPayFast}    ${verifyText}

Verify Payment Options Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${lblCreditCardEFT}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s

Verify Payment Options Text No Wait
    [Arguments]    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s
