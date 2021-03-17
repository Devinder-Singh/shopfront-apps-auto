*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Back Payment Ozow
    Wait Until Element Is Visible    ${navOzow}    30s
    Click Element    ${btnBackOzow}

Verify Payment Ozow Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${navOzow}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s
