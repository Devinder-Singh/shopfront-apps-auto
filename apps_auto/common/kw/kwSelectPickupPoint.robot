*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Select Pickup Point
    Wait Until Element Is Visible    ${txtSelectPickupPoint}    ${MIN_TIMEOUT}
    Click Element    ${txtSelectPickupPoint}

Verify Pickup Point Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${txtSelectPickupPoint}    ${MIN_TIMEOUT}
    IF    ${PLATFORM_NAME} == 'ios'
        Page Should Contain Text    ${verifyText}
    ELSE IF    ${PLATFORM_NAME} == 'android'
        Wait Until Page Contains    ${verifyText}    ${MIN_TIMEOUT}
    END
    
Click back Pickup Point
    Wait Until Element Is Visible    ${navPickupPointBack}    ${MIN_TIMEOUT}
    Click Element    ${navPickupPointBack}
