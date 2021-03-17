*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Verify Payment Mobi Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${lblUserMobi}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s
