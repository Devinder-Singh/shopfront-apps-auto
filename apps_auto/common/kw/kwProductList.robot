*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Product from API
    ${txtProduct}=    Get Product to Add To Cart
    Wait Until Element Is Visible    ${txtProduct}    30s
    Click Element    ${txtProduct}

Click First Product from API
    ${txtProduct}=    Get Variant Product to Add To Cart
    Wait Until Element Is Visible    ${txtProduct}    30s
    Click Element    ${txtProduct}

Click Product Daily Deals
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${imgProductDeals}    30s
    Sleep    1s
    Wait Until Element Is Visible    ${btnProductDailyDeals}    30s
    Click Element    ${btnProductDailyDeals}

Click Product From Title
    Wait Until Element Is Visible    ${btnProductTitle}    30s
    Click Element    ${btnProductTitle}

Click App Only Deals
    Wait Until Element Is Visible    ${btnProductAppOnlyDeals}    30s
    Click Element    ${btnProductAppOnlyDeals}

Click Wine Club Deals
    Wait Until Element Is Visible    ${btnProductWineClubDeals}    30s
    Click Element    ${btnProductWineClubDeals}

Click Product Filter
    Wait Until Element Is Visible    ${btnProductFilter}    30s
    Click Element    ${btnProductFilter}

Click Search Product Filter
    Wait Until Element Is Visible    ${btnProductSearchFilter}    30s
    Click Element    ${btnProductSearchFilter}

Click Search Product Sort
    Wait Until Element Is Visible    ${btnProductSearchSort}    30s
    Click Element    ${btnProductSearchSort}

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
    Wait Until Element Is Visible    ${btnProductFilter}    30s
    Wait Until Element Is Visible    ${btnProductImage}    30s

Click Product
    [Arguments]    ${productText}
    ${lblProduct}=    Replace String    ${lblProduct}    $productText    ${productText}
    Wait Until Page Contains Element    ${lblProduct}    30s
    Click Element    ${lblProduct}
    [Teardown]

Verify Sorted Products
    [Arguments]    ${sort}

    ${txtProduct}=    Get First Sort Product    ${sort}
    Wait Until Element Is Visible    ${txtProduct}    30s

    ${txtProduct}=    Get Fourth Sort Product    ${sort}
    Wait Until Element Is Visible    ${txtProduct}    30s

Verify Filtered Products
    [Arguments]    ${filter}

    ${txtProduct}=    Get First Filter Product    ${filter}
    Wait Until Element Is Visible    ${txtProduct}    30s

    ${txtProduct}=    Get Fourth Filter Product    ${filter}
    Wait Until Element Is Visible    ${txtProduct}    30s
