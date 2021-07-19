*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Variant Product from API
    ${txtProduct}=    Get Variant Product to Add To Cart

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

Click Leadtime Product from API
    ${txtProduct}=    Get Leadtime Product to Add To Cart

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

Click Product Brand from API
    ${txtProduct}=    Get Product Brand from PLID
    Click Element    ${txtProduct}

Verify Product Other Offers from API
    [Arguments]    ${title}

    ${txtProduct}=    Get Product PLID from Title    ${title}

    @{txtProductNames}=    Get Product Display Names from PLID
    @{txtProductPrices}=    Get Product Prices from PLID
    @{txtProductLeadTimes}=    Get Product Lead Times from PLID

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{txtProductNames}
        ${txtProductResult}=    Run Keyword    Convert To Upper Case    ${result}
        Verify Text On Screen Android    ${txtProductResult}    5s
        Verify Text On Screen iOS    ${result}    5s
        Verify Price On Screen    ${txtProductPrices}[${index}]    5s

        ${resultLeft}=    Run Keyword    Get Substring    ${txtProductLeadTimes}[${index}]    0    8
        ${resultFinal}=    Set Variable If    '${resultLeft}'=='In stock'    ${resultLeft}
        Run Keyword If    '${resultLeft}'=='In stock'    Verify Text On Screen Android    ${resultFinal}    5s
        Run Keyword If    '${resultLeft}'=='In stock'    Verify Text On Screen iOS    ${resultFinal}    5s

        ${resultTwo}=    Run Keyword    Replace String    ${txtProductLeadTimes}[${index}]    working    work
        ${resultFinal}=    Set Variable If    '${resultLeft}'!='In stock'    ${resultTwo}
        Run Keyword If    '${resultLeft}'!='In stock'    Verify Text On Screen Android    ${resultFinal}    5s
        Run Keyword If    '${resultLeft}'!='In stock'    Verify Text On Screen iOS    ${resultFinal}    5s
    END

Click Product from API Scroll
    ${txtProduct}=    Get Scroll Product to Add To Cart

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

Verify Price Range Product from API
    ${txtProduct}=    Get Price Range Product to Add To Cart

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

    ${result_f}=    Convert To String    ${query_result_RangeCartProductPriceL}
    ${result_f}=    Remove String    ${result_f}    .0
    Verify Text On Screen    ${result_f}    5s

Click Listing Product from API
    ${txtProduct}=    Get Product Listing Price

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
    Swipe Up    ${btnProductListView}
    ${result_f}=    Convert To String    ${query_result_CartListingProduct}
    ${result_f}=    Remove String    ${result_f}    .0
    ${txtProduct}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeButton[`label CONTAINS "${result_f}"`]    '${PLATFORM_NAME}'=='android'    xpath=//*[contains(@text,"${result_f}")]

    Click Element    ${txtProduct}

Click Product Auto from API
    ${txtProduct}=    Get Product Auto to Add To Cart

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

Click Filter Product from API
    ${txtProduct}=    Get Filter Product to Add To Cart
    Wait Until Element Is Visible    ${btnProductSearchFilter}    30s

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${txtProduct}

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Swipe Up    ${windowScroll}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${txtProduct}

Click Daily Deals Product from API
    Get Product Daily Deals Slug
    ${txtProduct}=    Get Daily Deals Product to Add To Cart
    Wait Until Element Is Visible    ${btnProductSearchFilter}    30s

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${txtProduct}

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Swipe Up    ${windowScroll}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${txtProduct}

Click Third Tab Product from API
    Get Product Deals Third Tab Slug
    ${txtProduct}=    Get Daily Deals Product to Add To Cart
    Wait Until Element Is Visible    ${btnProductSearchFilter}    30s

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${txtProduct}

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Swipe Up    ${windowScroll}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${txtProduct}

Click App Only Deals Product from API
    Get Product App Only Deals Slug
    ${txtProduct}=    Get Daily Deals Product to Add To Cart
    Wait Until Element Is Visible    ${btnProductSearchFilter}    30s

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${txtProduct}

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Swipe Up    ${windowScroll}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${txtProduct}

Click First Product from API
    ${txtProduct}=    Get First Product From API
    Wait Until Element Is Visible    ${txtProduct}    30s
    Click Element    ${txtProduct}

Click Product Daily Deals
    Wait Until Element Is Visible    ${btnProductFilter}    30s
    Sleep    5s
    Wait Until Element Is Visible    ${imgProductDeals}    5s
    Click Element    ${imgProductDeals}

Click Product Seller Deals
    Wait Until Element Is Visible    ${btnProductFilter}    30s
    Sleep    1s

    ${txtProduct}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label == "${query_result_FirstProductBrand}"`][2]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${query_result_FirstProductBrand}']

    Wait Until Element Is Visible    ${txtProduct}    5s
    Click Element    ${txtProduct}

Click Product Department
    Wait Until Element Is Visible    ${btnProductFilter}    30s
    Sleep    1s
    Wait Until Element Is Visible    ${imgProductDealsDept}    5s
    Click Element    ${imgProductDealsDept}

Click Product From Title
    [Arguments]    ${title}

    ${lblProdTitle}=    Set Variable If    '${PLATFORM_NAME}'=='android'    xpath=//*[contains(@text, "${title}")]    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label CONTAINS '${title}'`]

    Wait Until Element Is Visible    ${btnProductSearchFilter}    30s

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${lblProdTitle}

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Swipe Up    ${windowScroll}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${lblProdTitle}

Click YMAL Product From Title
    [Arguments]    ${title}

    ${lblProdTitle}=    Set Variable If    '${PLATFORM_NAME}'=='android'    xpath=//*[contains(@text, '${title}')]    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label CONTAINS '${title}'`]

    Verify Text On Screen    You Might Also Like    30s

    Click Element    ${lblProdTitle}

Click Product Text
    [Arguments]    ${title}

    ${lblProdTitle}=    Set Variable If    '${PLATFORM_NAME}'=='android'    xpath=//*[contains(@text, '${title}')]    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label CONTAINS '${title}'`]

    Wait Until Element Is Visible    ${lblProdTitle}    30s

    Click Element    ${lblProdTitle}

Verify Product From Title
    [Arguments]    ${title}

    ${lblProdTitle}=    Set Variable If    '${PLATFORM_NAME}'=='android'    xpath=//*[contains(@text, '${title}')]    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label CONTAINS '${title}'`]

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
    Element Should Be Visible    ${lblProdTitle}

Click App Only Deals
    Wait Until Element Is Visible    ${btnProductAppOnlyDeals}    30s
    Click Element    ${btnProductAppOnlyDeals}

Click Wine Club Deals
    Wait Until Element Is Visible    ${btnProductWineClubDeals}    30s
    Click Element    ${btnProductWineClubDeals}

Click Product Filter
    Wait Until Element Is Visible    ${btnProductFilter}    30s
    Sleep    2s
    Click Element    ${btnProductFilter}

Click Product Grid View
    Wait Until Element Is Visible    ${btnProductFilter}    30s
    Click Element    ${btnProductGridView}

Click Product Icon Close
    Wait Until Element Is Visible    ${btnProductIconClose}    30s
    Click Element    ${btnProductIconClose}

Click Search Product Filter
    Wait Until Element Is Visible    ${btnProductSearchFilter}    30s
    Click Element    ${btnProductSearchFilter}

Click Search Product Sort
    Wait Until Element Is Visible    ${btnProductSearchSort}    30s
    Click Element    ${btnProductSearchSort}

Click Search Product Wishlist
    Wait Until Element Is Visible    ${btnProductSearchSort}    30s
    Click Element    ${btnProductWishlist}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Sleep    5s

Click Search Product Wishlist iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnProductSearchSort}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${btnProductWishlist}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Sleep    5s

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
    Verify Daily Deals Image

Click Product
    [Arguments]    ${productText}
    ${lblProduct}=    Replace String    ${lblProduct}    $productText    ${productText}
    Wait Until Page Contains Element    ${lblProduct}    30s
    Click Element    ${lblProduct}

Verify Sorted Products
    [Arguments]    ${sort}

    ${txtProduct}=    Get First Sort Product    ${sort}
    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${txtProduct}    30s
        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        ${chkProdVisible}=    Run Keyword And Return Status    Verify Text On Screen    We could not find results    30s
        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Swipe Up    ${btnProductListView}
        ${index}=    Evaluate    ${index} + 1
    END
    Should Be True    ${chkProdVisible}

    ${txtProduct}=    Get Third Sort Product    ${sort}
#    Run Keyword If    '${txtProduct}'!='0'
#    ...    Wait Until Element Is Visible    ${txtProduct}    30s
#    ...  ELSE
#    ...    Verify Text On Screen    We could not find results    30s

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${txtProduct}    30s
        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        ${chkProdVisible}=    Run Keyword And Return Status    Verify Text On Screen    We could not find results    30s
        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Swipe Up    ${btnProductListView}
        ${index}=    Evaluate    ${index} + 1
    END
    Should Be True    ${chkProdVisible}

Verify Filtered Products
    [Arguments]    ${filter}

    ${txtProduct}=    Get First Filter Product    ${filter}
    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${txtProduct}    30s
        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Swipe Up    ${btnProductListView}
        ${index}=    Evaluate    ${index} + 1
    END
    Should Be True    ${chkProdVisible}

    ${txtProduct}=    Get Third Filter Product    ${filter}
    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${txtProduct}    30s
        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Swipe Up    ${btnProductListView}
        ${index}=    Evaluate    ${index} + 1
    END
    Should Be True    ${chkProdVisible}
