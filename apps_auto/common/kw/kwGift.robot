*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Verify Gift Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${lblGiftScreen}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s
