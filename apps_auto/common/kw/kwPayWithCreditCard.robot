*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Enter CVV Number
    [Documentation]    Enters cvv number within the payment card screen.
    [Arguments]    ${cvvNumber}
    Wait Until Element Is Visible    ${txtCVV}    ${MIN_TIMEOUT}
    Input Text    ${txtCVV}    ${cvvNumber}

Click Pay Button
    [Documentation]    Clicks the pay button within the payment card screen.
    Wait Until Element Is Visible    ${btnPay}
    Click Element    ${btnPay}