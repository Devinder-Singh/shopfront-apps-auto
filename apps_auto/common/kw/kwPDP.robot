*** Settings ***
Library           TalLibrary

*** Keywords ***
Click Add To Cart
    Wait Until Element Is Visible    ${btnAddToCart}    30s
    Click Element    ${btnAddToCart}

Verify Delivery Surcharge
    [Arguments]    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${lblDeliverySurcharge}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Element Should Contain Text    ${lblDeliverySurcharge}    ${verifyText}

Click Continue Shopping
    Wait Until Element Is Visible    ${btnContinueShopping}    30s
    Click Element    ${btnContinueShopping}

Click Airtime
    Wait Until Element Is Visible    ${btnPDPSelectOption}    30s
    Wait Until Element Is Visible    ${lblAirtimeValue}    30s
    Click Element    ${lblAirtimeValue}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${lblAirtimeValue}

Click 10 Kg
    Wait Until Element Is Visible    ${btnPDPSelectOption}    30s
    swipe by percent    50     30     50    90    1000
    Wait Until Element Is Visible    ${lblTenKgValue}    30s
    Click Element    ${lblTenKgValue}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${lblTenKgValue}

Click Go To Cart
    Wait Until Element Is Visible    ${btnGoToCart}    30s
    Click Element    ${btnGoToCart}
