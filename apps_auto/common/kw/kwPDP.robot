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

Click Add To Cart
    Wait Until Element Is Visible    ${btnAddToCart}    30s
    Click Element    ${btnAddToCart}

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
    Click Element    ${btnGoToCart}

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
