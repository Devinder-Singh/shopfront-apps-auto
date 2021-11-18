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

Input Credit Card Description Paygate
    [Arguments]    ${cardDesc}='Test'
    Wait Until Element Is Visible    ${txtCardDescPaygate}    ${MIN_TIMEOUT}
    Clear Text    ${txtCardDescPaygate}
    Input Text    ${txtCardDescPaygate}    ${cardDesc}

Input Credit Card Holder Paygate
    [Arguments]    ${cardHolder}='Tester'
    Wait Until Element Is Visible    ${txtCardHolderPaygate}    ${MIN_TIMEOUT}
    Clear Text    ${txtCardHolderPaygate}
    Input Text    ${txtCardHolderPaygate}    ${cardHolder}

Input Credit Card Number Paygate
    [Arguments]    ${cardHolder}=4000000000000002
    Wait Until Element Is Visible    ${txtCreditCardNumberPaygate}    ${MIN_TIMEOUT}
    Clear Text    ${txtCreditCardNumberPaygate}
    Input Text    ${txtCreditCardNumberPaygate}    ${cardHolder}

Input Credit Card Expirt Month Paygate
    [Arguments]    ${cardHolder}=05
    Wait Until Element Is Visible    ${txtCreditCardExpMonPaygate}    ${MIN_TIMEOUT}
    Clear Text    ${txtCreditCardExpMonPaygate}
    Input Text    ${txtCreditCardExpMonPaygate}    ${cardHolder}

Input Credit Card Expirt Year Paygate
    [Arguments]    ${cardHolder}=2025
    Wait Until Element Is Visible    ${txtCreditCardExpYrPaygate}    ${MIN_TIMEOUT}
    Clear Text    ${txtCreditCardExpYrPaygate}
    Input Text    ${txtCreditCardExpYrPaygate}    ${cardHolder}

Input Credit Card Expirt CVV Paygate
    [Arguments]    ${cardHolder}=877
    Wait Until Element Is Visible    ${txtCreditCardCVVPaygate}    ${MIN_TIMEOUT}
    Clear Text    ${txtCreditCardCVVPaygate}
    Input Text    ${txtCreditCardCVVPaygate}    ${cardHolder}

Click Credit Card Pay Paygate
    Wait Until Element Is Visible    ${btnCreditCardPayPaygate}    ${MIN_TIMEOUT}
    Click Element    ${btnCreditCardPayPaygate}

Click Credit Card Save Paygate
    Wait Until Element Is Visible    ${lblCreditCardSavePaygate}    ${MIN_TIMEOUT}
    Click Element    ${lblCreditCardSavePaygate}

Click Credit Card Retry
    Wait Until Element Is Visible    ${btnCreditCardRetry}    ${MIN_TIMEOUT}
    Click Element    ${btnCreditCardRetry}

Click Credit Card Pay New
    Wait Until Element Is Visible    ${btnCreditCardNewCard}    ${MIN_TIMEOUT}
    Click Element    ${btnCreditCardNewCard}

Delete Saved Credit Card
    Wait Until Element Is Visible    ${lblCreditCardDeletePaygate}    ${MIN_TIMEOUT}
    Click Element    ${lblCreditCardDeletePaygate}
    Wait Until Element Is Visible    ${btnCreditCardDeleteConfirmPaygate}    ${MIN_TIMEOUT}
    Click Element    ${btnCreditCardDeleteConfirmPaygate}
