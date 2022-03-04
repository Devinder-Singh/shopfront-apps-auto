*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Verify Card Payment
    Set Implicitly Wait    1
    ${success}=    Set Variable    ${False}
    FOR    ${counter}    IN RANGE    1    60
        ${success}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${lblCardNumber}    1s
        IF    ${success} == ${False}
            ${success}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${txtCardNumberPAYU}    1s
        ELSE
            Exit For Loop
        END
    END
    IF    ${success} == ${False}
        Fail    Could not verify payment text
    END
    Set Implicitly Wait    5

Verify Payfast Payment Text
    Set Implicitly Wait    1
    ${success}=    Set Variable    ${False}
    FOR    ${counter}    IN RANGE    1    120
        Log    ${counter}
        ${success}=    Run Keyword And Return Status    Verify Text On Screen    Instant EFT    ${MIN_TIMEOUT}
        IF    ${success}==${False}
            ${success}=    Run Keyword And Return Status    Verify Text On Screen    Test Merchant    ${MIN_TIMEOUT}
        END
        IF    ${success}==${True}
            Exit For Loop
        END
    END
    IF    ${success} == ${False}
        Fail    Could not verify payment text
    END
    Set Implicitly Wait    5

Click Pay with Credit Card Back
    Wait Until Element Is Visible    ${navPayCreditCardBack}    ${MIN_TIMEOUT}
    Click Element    ${navPayCreditCardBack}

Input Credit Card Number
    [Arguments]    ${cardNumber}
    Wait Until Element Is Visible    ${txtCreditCardNumber}    ${MAX_TIMEOUT}
    Click Element    ${txtCreditCardNumber}

    Clear Text    ${txtCreditCardNumber}
    Input Text    ${txtCreditCardNumber}    ${cardNumber}

    Click Element    ${txtCreditCardNumber}

Click Credit Card Name
    Wait Until Element Is Visible    ${txtCreditCardName}    ${MIN_TIMEOUT}
    Click Element    ${txtCreditCardName}

Verify Card Payment Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${txtCreditCardNumberPaygate}    ${MAX_TIMEOUT}

    IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Page Contains    ${verifyText}    ${MAX_TIMEOUT}
    ELSE IF    '${PLATFORM_NAME}' == 'ios'
        Page Should Contain Text    ${verifyText}
    END

Pay via Credit Card Paygate
    [Arguments]    ${cardDesc}='Test'    ${cardHolder}='Tester'    ${cardNum}=4000000000000002    ${cardExpM}=05    ${cardExpY}=2025    ${cardCVV}=877    ${cardSave}=${False}
    Wait Until Element Is Visible    ${txtCardDescPaygate}    ${MIN_TIMEOUT}
    Input Text    ${txtCardDescPaygate}    ${cardDesc}

    Input Text    ${txtCardHolderPaygate}    ${cardHolder}

    Input Text    ${txtCreditCardNumberPaygate}    ${cardNum}

    Input Text    ${txtCreditCardExpMonPaygate}    ${cardExpM}

    Input Text    ${txtCreditCardExpYrPaygate}    ${cardExpY}

    Input Text    ${txtCreditCardCVVPaygate}    ${cardCVV}

    IF    ${cardSave} == ${True}
        Wait Until Element Is Visible    ${lblCreditCardSavePaygate}    ${MIN_TIMEOUT}
        Click Element    ${lblCreditCardSavePaygate}
    END

    Wait Until Element Is Visible    ${btnCreditCardPayPaygate}    ${MIN_TIMEOUT}
    Click Element    ${btnCreditCardPayPaygate}

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
