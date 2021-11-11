*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Verify Confirmation Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${btnTrackOrder}    ${MIN_TIMEOUT}
    
    IF    ${PLATFORM_NAME} == 'android'
        Wait Until Page Contains    ${verifyText}    ${MIN_TIMEOUT}
    ELSE IF    ${PLATFORM_NAME} == 'ios'
        Page Should Contain Text    ${verifyText}
    END

Verify Confirmation Element Exists
    [Arguments]    ${verifyElement}
    Wait Until Page Contains Element    ${verifyElement}

Click PayFast Cancel
    Wait Until Element Is Visible    ${btnPayFastCancel}    ${MIN_TIMEOUT}
    Click Element    ${btnPayFastCancel}
