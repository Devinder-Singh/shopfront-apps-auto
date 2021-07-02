*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Increase Cart Quantity
    [Arguments]    ${qty}

    Wait Until Element Is Visible    ${btnPDPCartItemIncrease}    30s
    FOR    ${i}    IN RANGE    ${qty}
        Click Element    ${btnPDPCartItemIncrease}
        Sleep    3s
    END

Click Increase Cart Quantity iOS
    [Arguments]    ${qty}

    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnPDPCartItemIncrease}    30s
    FOR    ${i}    IN RANGE    ${qty}
        Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${btnPDPCartItemIncrease}
        Run Keyword If    '${PLATFORM_NAME}'=='ios'    Sleep    3s
    END

Click Add To Cart
    Wait Until Element Is Visible    ${btnAddToCart}    30s
    Click Element    ${btnAddToCart}

Click Show All Colours
    Wait Until Element Is Visible    ${btnPDPShowAllColours}    30s
    Click Element    ${btnPDPShowAllColours}

Click PDP Shop The Deal TCs
    Wait Until Element Is Visible    ${lnkPDPShopTheDealTCs}    30s
    Click Element    ${lnkPDPShopTheDealTCs}

Click PDP List Price
    Wait Until Element Is Visible    ${btnAddToCart}    30s
    Click Element    ${btnPDPListPrice}

Click PDP List Price Cancel
    Wait Until Element Is Visible    ${btnPDPListPriceCancel}    30s
    Click Element    ${btnPDPListPriceCancel}

Click PDP JHB
    Wait Until Element Is Visible    ${btnAddToCart}    30s
    ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${txtPDPJHB}
    Run Keyword If    ${chkProdVisible}==False    Swipe Up    ${windowScroll}
    Click Element    ${txtPDPJHB}

Click PDP CPT
    Wait Until Element Is Visible    ${btnAddToCart}    30s
    ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${txtPDPCPT}
    Run Keyword If    ${chkProdVisible}==False    Swipe Up    ${windowScroll}
    Click Element    ${txtPDPCPT}

Click PDP Warehouse OK
    Wait Until Element Is Visible    ${txtPDPWarehouseOK}    3s
    Click Element    ${txtPDPWarehouseOK}
    Sleep    2s

Click Eligible for Cash on Delivery
    Wait Until Element Is Visible    ${btnAddToCart}    30s
    Swipe Up    ${windowScroll}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${lnkPDPCOD}    3s
    Click Element    ${lnkPDPCOD}

Click PDP Description Show More
    Wait Until Element Is Visible    ${btnAddToCart}    30s

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${lnkPDPShowMore}

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Swipe Up    ${btnPDPScrollRoot}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${lnkPDPShowMore}

Click PDP What Is This
    Wait Until Element Is Visible    ${btnAddToCart}    30s

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${lnkPDPWhatIsThis}

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Swipe Up    ${windowScroll}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${lnkPDPWhatIsThis}

Click PDP Show All Offers
    Wait Until Element Is Visible    ${btnAddToCart}    30s

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${btnPDPShowAllOffers}

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Swipe Up    ${windowScroll}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${btnPDPShowAllOffers}
    Sleep    2s

Click PDP Show All Offers No Scroll
    Wait Until Element Is Visible    ${btnPDPShowAllOffers}    5s
    Click Element    ${btnPDPShowAllOffers}
    Sleep    2s

Click PDP What Is This No Scroll Android
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${lnkPDPWhatIsThis}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${lnkPDPWhatIsThis}

Click PDP What Is This iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click PDP What Is This

Click Seller Name
    Wait Until Element Is Visible    ${btnAddToCart}    30s
    ${sellerNameAndroid}=    Convert To Upper Case    ${query_result_FirstProductBrand}

    ${txtProduct}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeLink[`label == "${query_result_FirstProductBrand}"`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${sellerNameAndroid}']

    Wait Until Element Is Visible    ${txtProduct}    5s
    Click Element    ${txtProduct}

Verify Delivery Surcharge
    [Arguments]    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${lblDeliverySurcharge}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Element Should Contain Text    ${lblDeliverySurcharge}    ${verifyText}

Click Continue Shopping
    Wait Until Element Is Visible    ${btnContinueShopping}    30s
    Click Element    ${btnContinueShopping}

Click Continue Shopping iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnContinueShopping}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${btnContinueShopping}

Click Continue Shopping Ignore Error
    ${chkElement}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnContinueShopping}    10s
    Run Keyword If    ${chkElement}==True    Click Element    ${btnContinueShopping}
    Sleep    3s

Click Airtime
    Wait Until Element Is Visible    ${btnPDPSelectOption}    30s
    Click Element    ${btnPDPSelectOption}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Page Contains    Voucher valid
    Wait Until Element Is Visible    ${lblAirtimeValue}    30s
    Click Element    ${lblAirtimeValue}

Click 10 Kg
    Wait Until Element Is Visible    ${btnPDPSelectOption}    30s

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${lblTenKgValue}

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Swipe Up    ${btnPDPSelectOption}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${lblTenKgValue}

Click Add Bundle To Cart
    Wait Until Element Is Visible    ${btnAddToCart}    30s

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${btnPDPAddBundleToCart}

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Swipe Up    ${btnPDPScrollRoot}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${btnPDPAddBundleToCart}

Click Add Bundle To Cart No Scroll Android
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnPDPAddBundleToCart}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnPDPAddBundleToCart}

Click Add Bundle To Cart iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Add Bundle To Cart

Click Other Offers Add To Cart iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Other Offers Add To Cart

Click Other Offers Add To Cart
    Wait Until Element Is Visible    ${btnAddToCart}    30s

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${btnPDPOtherOfferAddToCart}

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Swipe Up    ${btnPDPScrollRoot}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${btnPDPOtherOfferAddToCart}

Click Other Offer Sellers Add To Cart
    Click Element    ${btnPDPShowAllOffersCart}

Click Other Offers Add To Cart No Scroll Android
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnPDPOtherOfferAddToCart}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnPDPOtherOfferAddToCart}

Click Other Offers Add To Cart No Scroll iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnPDPOtherOfferAddToCart}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${btnPDPOtherOfferAddToCart}

Click Shop The Deal
    Wait Until Element Is Visible    ${btnAddToCart}    30s

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${lblPDPShopTheDeal}

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Swipe Up    ${btnPDPScrollRoot}
        Sleep    1s
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${lblPDPShopTheDeal}

Click Blue Colour Option
    Wait Until Element Is Visible    ${btnPDPSelectOption}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Swipe By Percent    50    70    50    100    1000
    Wait Until Element Is Visible    ${lblBlueValue}    30s
    Click Element    ${lblBlueValue}

Click Go To Cart
    Wait Until Element Is Visible    ${btnGoToCart}    30s
    Sleep    2s
    Click Element    ${btnGoToCart}

Click Go To Cart iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Go To Cart
    Sleep    2s

Click PDP Write Review
    ${chkElement}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnAddToCart}    30s
    Run Keyword If    ${chkElement}==False    Wait Until Element Is Visible    ${btnPDPSelectOption}    1s

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${btnPDPReview}

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Swipe Up    ${btnPDPScrollRoot}
        Sleep    1s
        ${index}=    Evaluate    ${index} + 1
    END
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Swipe Up    ${btnPDPScrollRoot}
    Click Element    ${btnPDPReview}

Click Back PDP
    Wait Until Element Is Visible    ${navBackPDP}    30s
    Click Element    ${navBackPDP}

Verify PDP Screen Text
    [Arguments]    ${verifyText}
    Wait Until Page Contains    ${verifyText}    30s

Verify PDP Screen Element
    [Arguments]    ${verifyElement}
    Wait Until Element Is Visible    ${verifyElement}    30s

Verify PDP Screen Element Not Exists
    [Arguments]    ${verifyElement}
    Wait Until Page Does Not Contain Element    ${verifyElement}

Click Product Size
    [Arguments]    ${size}

    ${txtProduct}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label == "${size}"`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text="${size}"]

    Wait Until Element Is Visible    ${btnPDPSelectOption}    30s

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${txtProduct}

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Swipe Up    ${btnPDPSelectOption}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${txtProduct}

Click Product Variant From API

    ${txtProduct}=    Get Product Variant

    Wait Until Element Is Visible    ${btnPDPSelectOption}    30s

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${txtProduct}

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Swipe Up    ${btnPDPSelectOption}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${txtProduct}
    Sleep    2s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${txtProduct}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtProduct}

Click Product Variant Colour From API

    ${txtProduct}=    Get Product Variant Colour

    Wait Until Element Is Visible    ${btnPDPSelectOption}    30s

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${txtProduct}

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Swipe Up    ${btnPDPSelectOption}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${txtProduct}
    Sleep    2s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${txtProduct}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtProduct}

Verify Product Variant Colour From API

    @{txtProductColours}=    Get Product Variant All Colours

    Wait Until Element Is Visible    ${btnPDPSelectOption}    30s

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{txtProductColours}
        Verify Text On Screen Android    ${result}    5s
        Verify Text On Screen iOS    ${result}    5s
    END

Verify Product Variant Size From API

    @{txtProductSize}=    Get Product Variant All Size

    Wait Until Element Is Visible    ${btnPDPSelectOption}    30s

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{txtProductSize}
        Verify Text On Screen Android    ${result}    5s
        Verify Text On Screen iOS    ${result}    5s
    END

Click Product Variant From Name
    [Arguments]    ${title}

    ${lblProdVariant}=    Set Variable If    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${title}']    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label=='${title}'`]

    Wait Until Element Is Visible    ${lnkPDPSelectOption}    30s
    Swipe Up    ${windowScroll}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${lblProdVariant}

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Swipe Up    ${windowScroll}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${lblProdVariant}

Click Product Variant Colour Size From API

    ${txtProduct}=    Get Product Variant Colour Size

    Wait Until Element Is Visible    ${btnPDPSelectOption}    30s

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${txtProduct}

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Swipe Up    ${btnPDPSelectOption}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${txtProduct}
    Sleep    2s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${txtProduct}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtProduct}

Click Product Disabled Variant From API

    ${txtProduct}=    Get Product Disabled Variant

    Wait Until Element Is Visible    ${btnPDPSelectOption}    30s

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${txtProduct}

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Swipe Up    ${btnPDPSelectOption}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${txtProduct}
    Sleep    2s

Click Product Disabled Variant Colour From API

    ${txtProduct}=    Get Product Disabled Variant Colour

    Wait Until Element Is Visible    ${btnPDPSelectOption}    30s

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${txtProduct}

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Swipe Up    ${btnPDPSelectOption}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${txtProduct}
    Sleep    2s

Click Product Disabled Variant Colour Size From API

    ${txtProduct}=    Get Product Disabled Variant Colour Size

    Wait Until Element Is Visible    ${btnPDPSelectOption}    30s

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${txtProduct}

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Swipe Up    ${btnPDPSelectOption}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${txtProduct}
    Sleep    2s

Verify Product YAML from API
    Get Product YAML Detail

    Verify Text On Screen Android    You Might Also Like    30s
    Verify Text Element On Screen iOS    You Might Also Like    30s    ${windowScroll}    ${btnAddToCart}

    ${txtProductRating}=    Convert To String    ${query_result_YMALProductRating}

#    Verify Text On Screen    ${txtProductRating}    30s

    ${txtProductPrice}=    Get Substring    ${query_result_YMALProductPrice}    2
    Swipe Up    ${windowScroll}
    Verify Text On Screen    ${txtProductPrice}    30s
    Swipe Down    ${windowScroll}

    Swipe Up    ${windowScroll}
    Click YMAL Product From Title    ${query_result_YMALProductTitle}
    Verify Element On Screen    ${btnAddToCart}    30s
