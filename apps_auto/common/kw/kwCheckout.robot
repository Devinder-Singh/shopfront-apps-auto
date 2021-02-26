*** Settings ***
Library           TalLibrary

*** Keywords ***
Click Checkout
    Wait Until Element Is Visible    ${btnCheckout}    30s
    Click Element    ${btnCheckout}

Click Checkout Delete First Item
    Wait Until Element Is Visible    ${btnCheckout}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnCheckoutEdit}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnCheckoutSelect}    15s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnCheckoutSelect}
    Click Element    ${btnCheckoutDelete}
