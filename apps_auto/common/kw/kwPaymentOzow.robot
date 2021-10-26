*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Back Payment Ozow
    Wait Until Element Is Visible    ${navOzow}    ${MIN_TIMEOUT}
    Click Element    ${btnBackOzow}

Verify Payment Ozow Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${navOzow}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s
