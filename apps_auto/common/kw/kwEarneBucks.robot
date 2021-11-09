*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Earn eBucks
    Wait Until Element Is Visible    ${btnEarnEBucks}    ${MIN_TIMEOUT}
    Click Element    ${btnEarnEBucks}

Enter eBucks ID Number
    [Arguments]    ${id}
    Clear Text    ${txtEBucksIDNumber}
    Input Text    ${txtEBucksIDNumber}    ${id}

Click eBucks Delete
    Wait Until Element Is Visible    ${btnEBucksDelete}    ${MIN_TIMEOUT}
    Click Element    ${btnEBucksDelete}

Click eBucks Cancel
    Wait Until Element Is Visible    ${btnEBucksCancel}    ${MIN_TIMEOUT}
    Click Element    ${btnEBucksCancel}

Verify Earn eBucks Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${btnEarnEBucks}    ${MIN_TIMEOUT}

    IF    ${PLATFORM_NAME} == 'android'
        Wait Until Page Contains    ${verifyText}    ${MIN_TIMEOUT}
    ELSE IF    ${PLATFORM_NAME} == 'ios'
        Page Should Contain Text    ${verifyText}
    END
