*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Cancel Delivery Method
    Wait Until Element Is Visible    ${btnDelivery}    ${MIN_TIMEOUT}
    Click Element    ${btnCancelDelivery}

Click Delivery
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${scrDeliveryAndroid}    ${MIN_TIMEOUT}
    Wait Until Element Is Visible    ${btnDelivery}    ${MIN_TIMEOUT}
    Click Element    ${btnDelivery}

Click Delivery Android
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${scrDeliveryAndroid}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnDelivery}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnDelivery}

Click Collect
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${scrDeliveryAndroid}    ${MIN_TIMEOUT}
    Wait Until Element Is Visible    ${btnCollect}    ${MIN_TIMEOUT}
    Click Element    ${btnCollect}

Click Collect Not Available
    Wait Until Element Is Visible    ${btnCollectNotAvailable}    ${MIN_TIMEOUT}
    Click Element    ${btnCollectNotAvailable}

Click Add Delivery Address
    Wait Until Keyword Succeeds    3    3s    Wait Until Element Is Visible    ${btnDeliveryAddress}    ${MIN_TIMEOUT}
    Click Element    ${btnDeliveryAddress}

Click Back Delivery
    Wait Until Element Is Visible    ${btnBackDelivery}    ${MIN_TIMEOUT}
    Click Element    ${btnBackDelivery}

Click Back Delivery Android
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnDeliveryAddress}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Sleep    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnBackDelivery}

Verify Delivery Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${btnDelivery}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s

Verify Delivery Text Not
    [Arguments]    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Not Contain Text    ${verifyText}    10s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Does Not Contain    ${verifyText}    10s
