*** Settings ***
Library           TalLibrary

*** Keywords ***
Click Earn eBucks
    Wait Until Element Is Visible    ${btnEarnEBucks}    30s
    Click Element    ${btnEarnEBucks}

Enter eBucks ID Number
    [Arguments]    ${id}
    Clear Text    ${txtEBucksIDNumber}
    Input Text    ${txtEBucksIDNumber}    ${id}

Click eBucks Delete
    Wait Until Element Is Visible    ${btnEBucksDelete}    30s
    Click Element    ${btnEBucksDelete}

Click eBucks Cancel
    Wait Until Element Is Visible    ${btnEBucksCancel}    30s
    Click Element    ${btnEBucksCancel}

Verify Earn eBucks Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${btnEarnEBucks}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s
