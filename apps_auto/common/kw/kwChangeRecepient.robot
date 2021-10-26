*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Gift Message Save Button
    Wait Until Element Is Visible    ${btnSave}    ${MIN_TIMEOUT}
    Click Element    ${btnSave}

Enter Gift Message
    [Arguments]    ${msg}

    Input Text    ${txtRecepientMsg}    ${msg}
