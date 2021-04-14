*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Product from API
    ${txtProduct}=    Get Product to Add To Cart

    Wait Until Element Is Visible    ${btnProductSearchFilter}    30s

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${txtProduct}

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Swipe Up    ${btnProductListView}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${txtProduct}

Click First Product from API
    ${txtProduct}=    Get Variant Product to Add To Cart
    Wait Until Element Is Visible    ${txtProduct}    30s
    Click Element    ${txtProduct}

Click Product Daily Deals
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnProductFilter}    30s
    Sleep    1s
    Wait Until Element Is Visible    ${imgProductDeals}    5s
    Click Element    ${imgProductDeals}

Click Product From Title
    [Arguments]    ${title}

    ${lblProdTitle}=    Set Variable    xpath=//*[@text="${title}"]

    Wait Until Element Is Visible    ${btnProductSearchFilter}    30s

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${lblProdTitle}

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Swipe Up    ${btnProductListView}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${lblProdTitle}

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

Click Search Product Wishlist
    Wait Until Element Is Visible    ${btnProductSearchSort}    30s
    Click Element    ${btnProductWishlist}

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
