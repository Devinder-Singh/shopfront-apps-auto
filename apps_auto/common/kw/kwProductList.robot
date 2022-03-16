*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Variant Product from API
    [Arguments]    ${itemIndex}=0
    Wait Until Element Is Visible    ${btnProductSearchFilter}    ${MAX_TIMEOUT}
    ${txtProduct}=    Get Variant Product to Add To Cart    ${itemIndex}
    Click Element On Scroll    ${txtProduct}

Click Product Trending
    ${txtProduct}=    Get Product Trending

    Verify Text On Screen    Trending on Takealot    ${MIN_TIMEOUT}

    Element Should Be Visible    ${txtProduct}
    Click Element    ${txtProduct}

Click Product from API
    [Arguments]    ${itemIndex}=1
    ${txtProduct}=    Get Product to Add To Cart    ${itemIndex}

    Wait Until Element Is Visible    ${btnProductSearchFilter}    ${MIN_TIMEOUT}

    Click Element On Scroll    ${txtProduct}

Click In Stock Product from API
    Wait Until Element Is Visible    ${btnProductSearchFilter}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${lblPLPInStock}

        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${windowScroll}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${lblPLPInStock}

Click Left Product from API
#    Wait Until Element Is Visible    ${btnProductSearchFilter}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${btnProductLeft}

        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${windowScroll}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${btnProductLeft}

Click Leadtime Product from API
    ${txtProduct}=    Get Leadtime Product to Add To Cart

    Wait Until Element Is Visible    ${btnProductSearchFilter}    ${MIN_TIMEOUT}

    Click Element On Scroll    ${txtProduct}

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
        Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    ${txtProductResult}    ELSE    Verify Text On Screen    ${result}    5s
        Verify Price On Screen    ${txtProductPrices}[${index}]

        ${resultLeft}=    Run Keyword    Get Substring    ${txtProductLeadTimes}[${index}]    0    8
        ${resultFinal}=    Set Variable If    '${resultLeft}'=='In stock'    ${resultLeft}
        Run Keyword If    '${resultLeft}'=='In stock'    Verify Text On Screen    ${resultFinal}

        ${resultTwo}=    Run Keyword    Replace String    ${txtProductLeadTimes}[${index}]    working    work
        ${resultFinal}=    Set Variable If    '${resultLeft}'!='In stock'    ${resultTwo}
        Run Keyword If    '${resultLeft}'!='In stock'    Verify Text On Screen    ${resultFinal}
    END

Click Product from API Scroll
    ${txtProduct}=    Get Scroll Product to Add To Cart
    Click Element On Scroll    ${txtProduct}

Verify Price Range Product from API
    ${txtProduct}=    Get Price Range Product to Add To Cart

    Wait Until Element Is Visible    ${btnProductSearchFilter}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${txtProduct}

        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${btnProductListView}
        ${index}=    Evaluate    ${index} + 1
    END

    ${result_f}=    Convert To String    ${query_result_RangeCartProductPriceL}
    ${result_f}=    Remove String    ${result_f}    .0
    Verify Text On Screen    ${result_f}

Click Listing Product from API
    ${txtProduct}=    Get Product Listing Price

    Wait Until Element Is Visible    ${btnProductSearchFilter}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${txtProduct}

        Run Keyword If
            ...    ${chkProdVisible}==${True}
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

    Wait Until Element Is Visible    ${btnProductSearchFilter}    ${MIN_TIMEOUT}

    Click Element On Scroll    ${txtProduct}

Click Filter Product from API
    ${txtProduct}=    Get Filter Product to Add To Cart
    Wait Until Element Is Visible    ${btnProductSearchFilter}    ${MIN_TIMEOUT}

    Click Element On Scroll    ${txtProduct}

Click Daily Deals Product from API
    Get Product Daily Deals Slug
    ${txtProduct}=    Get Daily Deals Product to Add To Cart
    Wait Until Element Is Visible    ${btnProductSearchFilter}    ${MIN_TIMEOUT}

    Click Element On Scroll    ${txtProduct}

Click Third Tab Product from API
    Get Product Deals Third Tab Slug
    ${txtProduct}=    Get Daily Deals Product to Add To Cart
    Wait Until Element Is Visible    ${btnProductSearchFilter}    ${MIN_TIMEOUT}

    Click Element On Scroll    ${txtProduct}

Click App Only Deals Product from API
    Get Product App Only Deals Slug
    ${txtProduct}=    Get Daily Deals Product to Add To Cart
    Wait Until Element Is Visible    ${btnProductSearchFilter}    ${MIN_TIMEOUT}

    Click Element On Scroll    ${txtProduct}

Click First Product from API
    ${txtProduct}=    Get First Product From API
    Wait Until Element Is Visible    ${txtProduct}    ${MIN_TIMEOUT}
    Click Element    ${txtProduct}

Click Product Daily Deals
    Wait Until Element Is Visible    ${btnProductFilter}    ${MIN_TIMEOUT}
    Wait Until Element Is Visible    ${imgProductDeals}
    Click Element    ${imgProductDeals}

Click Product Seller Deals
    Wait Until Element Is Visible    ${btnProductFilter}    ${MIN_TIMEOUT}
    ${txtProduct}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label == "${query_result_FirstProductBrand}"`][2]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${query_result_FirstProductBrand}']
    Wait Until Element Is Visible    ${txtProduct}
    Click Element    ${txtProduct}

Click Product Department
    [Arguments]    ${index}=1
    IF    '${PLATFORM_NAME}' == 'ios'
        ${index}=    Evaluate    ${index} + 1
    END
    ${imgProductDealsDept}=    Set Variable    ${imgProductDealsDept}\[${index}]
    Wait Until Element Is Visible    ${btnProductFilter}    ${MAX_TIMEOUT}
    Wait Until Element Is Visible    ${imgProductDealsDept}
    Click Element    ${imgProductDealsDept}

Click Product From Title
    [Arguments]    ${title}
    ${lblProdTitle}=    Set Variable If    '${PLATFORM_NAME}'=='android'    xpath=//*[contains(@text, "${title}")]    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label CONTAINS "${title}"`]
    Wait Until Element Is Visible    ${btnProductSearchFilter}    ${MIN_TIMEOUT}
    Click Element On Scroll    ${lblProdTitle}    20

Click YMAL Product From Title
    [Arguments]    ${title}

    ${lblProdTitle}=    Set Variable If    '${PLATFORM_NAME}'=='android'    xpath=//*[contains(@text, '${title}')]    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label CONTAINS '${title}'`]

    Verify Text On Screen    You Might Also Like    ${MIN_TIMEOUT}

    Click Element    ${lblProdTitle}

Click Product Text
    [Arguments]    ${title}

    ${lblProdTitle}=    Set Variable If    '${PLATFORM_NAME}'=='android'    xpath=//*[contains(@text, '${title}')]    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label CONTAINS '${title}'`]

    Wait Until Keyword Succeeds    3    3s    Wait Until Element Is Visible    ${lblProdTitle}    ${MIN_TIMEOUT}
    Click Element    ${lblProdTitle}

Verify Product From Title
    [Arguments]    ${title}

    ${lblProdTitle}=    Set Variable If    '${PLATFORM_NAME}'=='android'    xpath=//*[contains(@text, '${title}')]    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label CONTAINS '${title}'`]

    Wait Until Element Is Visible    ${btnProductSearchFilter}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${lblProdTitle}

        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${btnProductListView}
        ${index}=    Evaluate    ${index} + 1
    END
    Element Should Be Visible    ${lblProdTitle}

Click App Only Deals
    Wait Until Element Is Visible    ${btnProductAppOnlyDeals}    ${MIN_TIMEOUT}
    Click Element    ${btnProductAppOnlyDeals}

Click Wine Club Deals
    Wait Until Element Is Visible    ${btnProductWineClubDeals}    ${MIN_TIMEOUT}
    Click Element    ${btnProductWineClubDeals}

Click Product Filter
    Wait Until Element Is Visible    ${btnProductFilter}    ${MIN_TIMEOUT}
    Sleep    1
    Click Element    ${btnProductFilter}

Click Product Grid View
    Wait Until Element Is Visible    ${btnProductFilter}    ${MIN_TIMEOUT}
    Click Element    ${btnProductGridView}

Click Product Icon Close
    Wait Until Element Is Visible    ${btnProductIconClose}    ${MIN_TIMEOUT}
    Click Element    ${btnProductIconClose}

Click Search Product Filter
    Wait Until Element Is Visible    ${btnProductSearchFilter}    ${MIN_TIMEOUT}
    Click Element    ${btnProductSearchFilter}

Click Search Product Sort
    Wait Until Element Is Visible    ${btnProductSearchSort}    ${MIN_TIMEOUT}
    Click Element    ${btnProductSearchSort}

Click Search Product Wishlist
    Wait Until Element Is Visible    ${btnProductSearchSort}    ${MIN_TIMEOUT}
    Click Element    ${btnProductWishlist}

Click Search Product Wishlist iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnProductSearchSort}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${btnProductWishlist}

Click Product available in JHB only
    ${txtProduct}=    Get Product in JHB only
    Wait Until Element Is Visible    ${txtProduct}    ${MIN_TIMEOUT}
    Click Element    ${txtProduct}

Click Product available in CPT only
    ${txtProduct}=    Get Product in CPT only
    Wait Until Element Is Visible    ${txtProduct}    ${MIN_TIMEOUT}
    Click Element    ${txtProduct}

Click Product available in JHB and CPT
    ${txtProduct}=    Get Product in JHB and CPT
    Wait Until Element Is Visible    ${txtProduct}    ${MIN_TIMEOUT}
    Click Element    ${txtProduct}

Click Product in Leadtime
    ${txtProduct}=    Get Product with Leadtime

    Wait Until Element Is Visible    ${btnProductSearchFilter}    ${MIN_TIMEOUT}
    Click Element On Scroll    ${txtProduct}

Verify Product Image
    Verify Daily Deals Image

Click Product
    [Arguments]    ${productText}    ${sleepBeforeAction}=1s
    Sleep    ${sleepBeforeAction}
    ${lblProduct}=    Replace String    ${lblProduct}    $productText    ${productText}
    Wait Until Page Contains Element    ${lblProduct}    ${MAX_TIMEOUT}
    Click Element    ${lblProduct}

Click Product From Search Result
    [Arguments]    ${productTitle}
    IF    '${PLATFORM_NAME}' == 'ios'
        ${dynamicProductByTitle}=    Set Variable    chain=**/XCUIElementTypeStaticText[`label == "${productTitle}"`]
        Scroll To Element    ${dynamicProductByTitle}
        Click Element    ${dynamicProductByTitle}
    ELSE IF    '${PLATFORM_NAME}' == 'android'
        ${dynamicProductByTitle}=    Set Variable    xpath=(//android.widget.TextView[@resource-id='fi.android.takealot.debug:id/productListingTitle' and @text='${productTitle}'])
        Scroll To Element    ${dynamicProductByTitle}
        Click Element    ${dynamicProductByTitle}
    END

Click Product No Reviews
    ${txtProduct}=    Get Product No Reviews

    Wait Until Element Is Visible    ${btnProductSearchFilter}    ${MIN_TIMEOUT}

    Click Element On Scroll    ${txtProduct}

Click Product Multiple Reviews
    ${txtProduct}=    Get Product Review Count Multiple

    Wait Until Element Is Visible    ${btnProductSearchFilter}    ${MIN_TIMEOUT}

    Click Element On Scroll    ${txtProduct}

Verify Sorted Products
    [Arguments]    ${sort}

    ${txtProduct}=    Get First Sort Product    ${sort}
    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    30
        ${chkProdVisible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${txtProduct}    ${MIN_TIMEOUT}
        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        ${chkProdVisible}=    Run Keyword And Return Status    Verify Text On Screen    We could not find results    ${MIN_TIMEOUT}
        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${btnProductListView}
        ${index}=    Evaluate    ${index} + 1
    END
    Should Be True    ${chkProdVisible}

    ${txtProduct}=    Get Third Sort Product    ${sort}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${txtProduct}    ${MIN_TIMEOUT}
        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        ${chkProdVisible}=    Run Keyword And Return Status    Verify Text On Screen    We could not find results    ${MIN_TIMEOUT}
        Run Keyword If
            ...    ${chkProdVisible}==${True}
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
        ${chkProdVisible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${txtProduct}    ${MIN_TIMEOUT}
        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${btnProductListView}
        ${index}=    Evaluate    ${index} + 1
    END
    Should Be True    ${chkProdVisible}

    ${txtProduct}=    Get Third Filter Product    ${filter}
    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${txtProduct}    ${MIN_TIMEOUT}
        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${btnProductListView}
        ${index}=    Evaluate    ${index} + 1
    END
    Should Be True    ${chkProdVisible}

Click Promotion Item By Index
    [Documentation]    Clicks a promotion product item based on its index as displayed on the screen. This keyword will work for both
                        ...    daily deals and app deals screen etc.
    [Arguments]    ${itemIndex}
    ${dynamicItemByIndexAndroid}=    Set Variable    xpath=(//android.widget.TextView[@resource-id='${APP_PACKAGE}:id/dealsWidgetPromotionProductItemTitle'])[${itemIndex}]
    ${dynamicItemByIndexIos}=    Set Variable    chain=**/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeImage[${itemIndex}]
    Run Keyword If    '${PLATFORM_NAME}' == 'android'    Wait Until Page Contains Element    ${dynamicItemByIndexAndroid}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}' == 'android'    Click Element    ${dynamicItemByIndexAndroid}  
    Run Keyword If    '${PLATFORM_NAME}' == 'ios'    Wait Until Page Contains Element    ${dynamicItemByIndexIos}
    Run Keyword If    '${PLATFORM_NAME}' == 'ios'    Click Element    ${dynamicItemByIndexIos}