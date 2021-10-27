*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Verify Age
    Wait Until Element Is Visible    ${btnVerifyAge}    ${MIN_TIMEOUT}
    Click Element    ${btnVerifyAge}

Verify Age Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${btnTryAgainlAge}    10s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s

Click Select Age
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnSelectAge}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnSelectAge}
