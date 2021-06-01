*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Gift Message Save Button
    Wait Until Element Is Visible    ${btnSave}    30s
    Click Element    ${btnSave}

Enter Gift Message
    [Arguments]    ${msg}

    Input Text    ${txtRecepientMsg}    ${msg}
