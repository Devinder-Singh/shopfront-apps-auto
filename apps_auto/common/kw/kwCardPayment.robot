*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Verify Card Payment
    Set Implicitly Wait    1
    FOR    ${counter}    IN RANGE    1    30
        Log    ${counter}
        ${chkTextSuccess}=    Run Keyword And Return Status    Verify Text On Screen    Card Number    1s
        IF    ${chkTextSuccess}==${False}
            ${chkTextSuccess}=    Run Keyword And Return Status    Verify Text On Screen    Card number    1s
        ELSE
            Exit For Loop
        END
    END
    Set Implicitly Wait    5

Verify Payfast Payment Text
    IF    '${APP_ENVIRONMENT}' == 'https://api.takealot.com/'
        Verify Text On Screen    Instant EFT    ${MAX_TIMEOUT}
    ELSE
        Verify Text On Screen    Test Merchant    ${MAX_TIMEOUT}
    END
    
Click Pay with Credit Card Back
    Wait Until Element Is Visible    ${navPayCreditCardBack}    ${MIN_TIMEOUT}
    Click Element    ${navPayCreditCardBack}

Input Credit Card Number
    [Arguments]    ${cardNumber}
    Wait Until Element Is Visible    ${txtCreditCardNumber}    ${MIN_TIMEOUT}
    Clear Text    ${txtCreditCardNumber}
    Input Text    ${txtCreditCardNumber}    ${cardNumber}

Click Credit Card Name
    Wait Until Element Is Visible    ${txtCreditCardName}    ${MIN_TIMEOUT}
    Click Element    ${txtCreditCardName}

Verify Card Payment Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${lblCardNumber}    ${MIN_TIMEOUT}
    IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Page Contains    ${verifyText}    ${MIN_TIMEOUT}
    ELSE IF    '${PLATFORM_NAME}' == 'ios'
        Page Should Contain Text    ${verifyText}
    END    
