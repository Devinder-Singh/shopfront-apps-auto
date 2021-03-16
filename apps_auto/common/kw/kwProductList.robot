*** Settings ***
Library           TalLibrary
Resource    kwAPI.robot

*** Keywords ***
Click Product
    ${txtProduct}=    Get Product to Add To Cart
    Wait Until Element Is Visible    ${txtProduct}    30s
    Click Element    ${txtProduct}

Click Product Daily Deals
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${cntProductDeals}    30s
    Wait Until Element Is Visible    ${btnProductDailyDeals}    30s
    Click Element    ${btnProductDailyDeals}

Click Product available in JHB only
    ${txtProduct}=    Get Product in JHB only
    Wait Until Element Is Visible    ${txtProduct}    30s
    Click Element    ${txtProduct}

Click Product available in CPT only
    ${txtProduct}=    Get Product in CPT only
    Wait Until Element Is Visible    ${txtProduct}    30s
    Click Element    ${txtProduct}

Click Product available in JHB and CPT
    ${txtProduct}=    Get Product in JHB and CPT
    Wait Until Element Is Visible    ${txtProduct}    30s
    Click Element    ${txtProduct}

Click Product in Leadtime
    ${txtProduct}=    Get Product with Leadtime
    Wait Until Element Is Visible    ${txtProduct}    30s
    Click Element    ${txtProduct}
