*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***    
Click Product from API
    #    ${txtProduct}    Set Variable    chain=**/XCUIElementTypeStaticText[`label == "Omega 32" HD Ready LED TV"`]
    ${txtProduct}=    Get Product to Add To Cart
    Wait Until Element Is Visible    ${txtProduct}    30s
    Click Element    ${txtProduct}

Click Product Daily Deals
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${cntProductDeals}    30s
    Wait Until Element Is Visible    ${btnProductDailyDeals}    30s
    Click Element    ${btnProductDailyDeals}

Click App Only Deals
    Wait Until Element Is Visible    ${btnProductAppOnlyDeals}    30s
    Click Element    ${btnProductAppOnlyDeals}

Click Product Filter
    Wait Until Element Is Visible    ${btnProductFilter}    30s
    Click Element    ${btnProductFilter}

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

Verify Product Image
    Wait Until Element Is Visible    ${btnProductImage}    30s
    
Click Product
    [Arguments]    ${productText}
    ${lblProduct}=    Replace String    ${lblProduct}    $productText    ${productText}
    Wait Until Page Contains Element    ${lblProduct}    15s
    Click Element    ${lblProduct}
    [Teardown]
