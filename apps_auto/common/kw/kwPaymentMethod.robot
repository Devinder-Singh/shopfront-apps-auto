*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Got It Thanks Payment Method
    Wait Until Element Is Visible    ${btnGotItThanks}    ${MIN_TIMEOUT}
    Click Element    ${btnGotItThanks}

Click Payfast Payment Method
    IF    '${PLATFORM_NAME}' == 'android'
       Wait Until Element Is Visible    ${scrPaymentMethodAndroid}    ${MIN_TIMEOUT} 
    END

    Wait Until Element Is Visible    ${lblPayFastEFT}    ${MIN_TIMEOUT}
    Click Element    ${lblPayFastEFT}

Click Card Payment Method
    IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Element Is Visible    ${scrPaymentMethodAndroid}    ${MIN_TIMEOUT}
    END 

    Wait Until Element Is Visible    ${lblCreditCardEFT}    ${MIN_TIMEOUT}
    Click Element    ${lblCreditCardEFT}

Click eBucks Payment Method
    Wait Until Element Is Visible    ${lbleBucksEFT}    ${MIN_TIMEOUT}
    Click Element    ${lbleBucksEFT}

Click Ozow Payment Method
    Wait Until Element Is Visible    ${lblOzowEFT}    ${MIN_TIMEOUT}
    Click Element    ${lblOzowEFT}

Click Mobicred Payment Method
    Wait Until Element Is Visible    ${lblMobicredEFT}    ${MIN_TIMEOUT}
    Click Element    ${lblMobicredEFT}

Click Cash Payment Method
    Wait Until Element Is Visible    ${lblCash}    ${MIN_TIMEOUT}
    Click Element    ${lblCash}

Click eBucks Payment Info
    Wait Until Element Is Visible    ${btneBucksEFTInfo}    ${MIN_TIMEOUT}
    Click Element    ${btneBucksEFTInfo}

Click COD Payment Info
    Wait Until Element Is Visible    ${btnCODInfo}    ${MIN_TIMEOUT}
    Click Element    ${btnCODInfo}

Click Mobicred Payment Info
    Wait Until Element Is Visible    ${btnMobicredEFTInfo}    ${MIN_TIMEOUT}
    Click Element    ${btnMobicredEFTInfo}

Verify Payment Options Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${lblCreditCardEFT}    ${MIN_TIMEOUT}

    IF    '${PLATFORM_NAME}' == 'ios'
        Page Should Contain Text    ${verifyText}
    ELSE IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Page Contains    ${verifyText}    ${MIN_TIMEOUT}
    END

Verify Payment Options Text No Wait
    [Arguments]    ${verifyText}
     IF    '${PLATFORM_NAME}' == 'ios'
        Page Should Contain Text    ${verifyText}
    ELSE IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Page Contains    ${verifyText}    ${MIN_TIMEOUT}
    END

Verify Payfast Payment
    Wait Until Element Is Visible    ${lblSecurePaymentPayFast}    ${MIN_TIMEOUT}

Verify COD Payment Info
    Wait Until Element Is Visible    ${lblCODInfo}    ${MIN_TIMEOUT}

Verify Mobicred Payment Info
    Wait Until Element Is Visible    ${lblMobicredInfo}    ${MIN_TIMEOUT}
