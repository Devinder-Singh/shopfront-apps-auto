*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Cancel Delivery Method
    Wait Until Element Is Visible    ${btnDelivery}    ${MIN_TIMEOUT}
    Click Element    ${btnCancelDelivery}

Click Delivery
    IF    ${PLATFORM_NAME} == 'android'
        Wait Until Element Is Visible    ${scrDeliveryAndroid}    ${MIN_TIMEOUT}
    END
    
    Wait Until Element Is Visible    ${btnDelivery}    ${MIN_TIMEOUT}
    Click Element    ${btnDelivery}

Click Delivery Android
    IF    ${PLATFORM_NAME} == 'android'
        Wait Until Element Is Visible    ${scrDeliveryAndroid}    ${MIN_TIMEOUT}
        Wait Until Element Is Visible    ${btnDelivery}    ${MIN_TIMEOUT}
        Click Element    ${btnDelivery}
    END
    
Click Collect
    IF    ${PLATFORM_NAME} == 'android'
        Wait Until Element Is Visible    ${scrDeliveryAndroid}    ${MIN_TIMEOUT}    
    END
   
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
    
    IF    ${PLATFORM_NAME} == 'android'
        Wait Until Page Contains    ${verifyText}    ${MIN_TIMEOUT}
    ELSE IF    ${PLATFORM_NAME} == 'ios'
        Page Should Contain Text    ${verifyText}    
    END
     
Verify Delivery Text Not
    [Arguments]    ${verifyText}
    IF    ${PLATFORM_NAME} == 'android'
        Wait Until Page Does Not Contain    ${verifyText}    ${MIN_TIMEOUT}
    ELSE IF    ${PLATFORM_NAME} == 'ios'  
        Page Should Not Contain Text    ${verifyText}    ${MIN_TIMEOUT}
    END