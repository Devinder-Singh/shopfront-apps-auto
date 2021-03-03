*** Settings ***
Library           TalLibrary

*** Keywords ***
Click Got It Thanks Payment Method
    Wait Until Element Is Visible    ${btnGotItThanks}    30s
    Click Element    ${btnGotItThanks}

Click Payfast Payment Method
    Wait Until Element Is Visible    ${lblPayFastEFT}    30s
    Click Element    ${lblPayFastEFT}

Click Card Payment Method
    Wait Until Element Is Visible    ${lblCreditCardEFT}    30s
    Click Element    ${lblCreditCardEFT}

Click eBucks Payment Method
    Wait Until Element Is Visible    ${lbleBucksEFT}    30s
    Click Element    ${lbleBucksEFT}

Click Ozow Payment Method
    Wait Until Element Is Visible    ${lblOzowEFT}    30s
    Click Element    ${lblOzowEFT}

Click Mobicred Payment Method
    Wait Until Element Is Visible    ${lblMobicredEFT}    30s
    Click Element    ${lblMobicredEFT}

Click Cash Payment Method
    Wait Until Element Is Visible    ${lblCash}    30s
    Click Element    ${lblCash}

Click eBucks Payment Info
    Wait Until Element Is Visible    ${btneBucksEFTInfo}    30s
    Click Element    ${btneBucksEFTInfo}

Click COD Payment Info
    Wait Until Element Is Visible    ${btnCODInfo}    30s
    Click Element    ${btnCODInfo}

Click Mobicred Payment Info
    Wait Until Element Is Visible    ${btnMobicredEFTInfo}    30s
    Click Element    ${btnMobicredEFTInfo}

Verify Payment Options Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${lblCreditCardEFT}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s

Verify Payment Options Text No Wait
    [Arguments]    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s

Verify Payfast Payment
    Wait Until Element Is Visible    ${lblSecurePaymentPayFast}    30s

Verify COD Payment Info
    Wait Until Element Is Visible    ${lblCODInfo}    10s

Verify Mobicred Payment Info
    Wait Until Element Is Visible    ${lblMobicredInfo}    10s
