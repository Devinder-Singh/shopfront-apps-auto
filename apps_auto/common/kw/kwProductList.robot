*** Settings ***
Library           TalLibrary

*** Keywords ***
Click Product
    Wait Until Element Is Visible    ${btnProduct}    30s
    Click Element    ${btnProduct}

Click Product Daily Deals
    Wait Until Element Is Visible    ${btnProductDailyDeals}    30s
    Click Element    ${btnProductDailyDeals}
