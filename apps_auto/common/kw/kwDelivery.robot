*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Cancel Delivery Method
    Wait Until Element Is Visible    ${btnDelivery}    30s
    Click Element    ${btnCancelDelivery}

Click Delivery
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${scrDeliveryAndroid}    30s
    Wait Until Element Is Visible    ${btnDelivery}    30s
    Click Element    ${btnDelivery}

Click Collect
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${scrDeliveryAndroid}    30s
    Wait Until Element Is Visible    ${btnCollect}    30s
    Click Element    ${btnCollect}

Click Collect Not Available
    Wait Until Element Is Visible    ${btnCollectNotAvailable}    30s
    Click Element    ${btnCollectNotAvailable}

Click Add Delivery Address
    Wait Until Element Is Visible    ${btnDeliveryAddress}    30s
    Click Element    ${btnDeliveryAddress}

Click Back Delivery
    Wait Until Element Is Visible    ${btnBackDelivery}    30s
    Click Element    ${btnBackDelivery}

Click Back Delivery Android
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnDeliveryAddress}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Sleep    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnBackDelivery}

Verify Delivery Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${btnDelivery}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s

Verify Delivery Text Not
    [Arguments]    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Not Contain Text    ${verifyText}    10s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Does Not Contain    ${verifyText}    10s
