*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Complete Payment With Payfast
    Wait Until Element Is Visible    ${btnPayfastCompletePayment}    ${MIN_TIMEOUT}
    Click Element    ${btnPayfastCompletePayment}
