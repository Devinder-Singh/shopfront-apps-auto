*** Settings ***
Library           TalLibrary

*** Keywords ***
Click Verify Age
    Wait Until Element Is Visible    ${btnVerifyAge}    30s
    Click Element    ${btnVerifyAge}

Verify Age Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${btnTryAgainlAge}    10s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s
