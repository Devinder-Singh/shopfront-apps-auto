*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Increase Cart Quantity
    [Arguments]    ${qty}

    Wait Until Element Is Visible    ${btnPDPCartItemIncrease}    30s
    FOR    ${i}    IN RANGE    ${qty}
        Click Element    ${btnPDPCartItemIncrease}
        Sleep    1s
    END

Click Add To Cart
    Wait Until Element Is Visible    ${btnAddToCart}    30s
    Click Element    ${btnAddToCart}

Click Seller Name
    Wait Until Element Is Visible    ${btnPDPSellerName}    30s
    Click Element    ${btnPDPSellerName}

Verify Delivery Surcharge
    [Arguments]    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${lblDeliverySurcharge}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Element Should Contain Text    ${lblDeliverySurcharge}    ${verifyText}

Click Continue Shopping
    Wait Until Element Is Visible    ${btnContinueShopping}    30s
    Click Element    ${btnContinueShopping}

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
    Wait Until Element Is Visible    ${btnPDPReview}    30s
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
