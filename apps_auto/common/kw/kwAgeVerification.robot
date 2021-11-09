*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Verify Age
    Wait Until Element Is Visible    ${btnVerifyAge}    ${MIN_TIMEOUT}
    Click Element    ${btnVerifyAge}

Verify Age Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${btnTryAgainlAge}    ${MIN_TIMEOUT}
    
    IF    ${PLATFORM_NAME} == 'android'
        Wait Until Page Contains    ${verifyText}    ${MIN_TIMEOUT}
    ELSE IF    ${PLATFORM_NAME} == 'ios'
        Page Should Contain Text    ${verifyText}
    END
        
Click Select Age
    IF    ${PLATFORM_NAME} == 'android'       
        Wait Until Element Is Visible    ${btnSelectAge}    ${MIN_TIMEOUT}
        Click Element    ${btnSelectAge} 
    END