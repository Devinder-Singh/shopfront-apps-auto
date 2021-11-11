*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Verify Gift Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${lblGiftScreen}    ${MIN_TIMEOUT}

    IF    '${PLATFORM_NAME}' == 'ios'
        Page Should Contain Text    ${verifyText}
    ELSE IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Page Contains    ${verifyText}    ${MIN_TIMEOUT}
    END