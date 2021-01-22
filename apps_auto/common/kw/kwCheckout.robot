*** Settings ***
Library           TalLibrary

*** Keywords ***
Click Checkout
    Wait Until Element Is Visible    ${btnCheckout}    30s
    Click Element    ${btnCheckout}
