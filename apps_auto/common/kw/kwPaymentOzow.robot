*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Back Payment Ozow
    Wait Until Element Is Visible    ${navOzow}    ${MIN_TIMEOUT}
    Click Element    ${btnBackOzow}

Verify Payment Ozow Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${navOzow}    ${MIN_TIMEOUT}
    IF    ${PLATFORM_NAME} == 'ios'
        Page Should Contain Text    ${verifyText}
    ELSE IF    ${PLATFORM_NAME} == 'android'
        Wait Until Page Contains    ${verifyText}    ${MIN_TIMEOUT}
    END