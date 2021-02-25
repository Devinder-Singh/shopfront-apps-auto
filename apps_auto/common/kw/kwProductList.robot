*** Settings ***
Library           TalLibrary

*** Keywords ***
Click Product
    ${txtProduct}      Set Variable    chain=**/XCUIElementTypeStaticText[`label == "Vodacom Mobile Airtime Voucher"`]
    Wait Until Element Is Visible    ${txtProduct}    30s
    Click Element    ${txtProduct}

Click Product Daily Deals
    Wait Until Element Is Visible    ${btnProductDailyDeals}    30s
    Click Element    ${btnProductDailyDeals}
