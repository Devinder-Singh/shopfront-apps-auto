*** Settings ***
Library           TalLibrary
Resource    kwAPI.robot

*** Keywords ***
Click Product
#    ${txtProduct}      Set Variable    chain=**/XCUIElementTypeStaticText[`label == "Omega 32" HD Ready LED TV"`]
    ${txtProduct}=    Get Product to Add To Cart
    Wait Until Element Is Visible    ${txtProduct}    30s
    Click Element    ${txtProduct}

Click Product Daily Deals
    Wait Until Element Is Visible    ${btnProductDailyDeals}    30s
    Click Element    ${btnProductDailyDeals}
