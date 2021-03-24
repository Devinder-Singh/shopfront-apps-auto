*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Continue Digital Item
    Wait Until Element Is Visible    ${btnContinueAirtime}    30s
    Click Element    ${btnContinueAirtime}

Click Cancel Airtime
    Wait Until Element Is Visible    ${btnCancel}    30s
    Click Element    ${btnCancel}

Click Change Digital Item Recepient
    Wait Until Element Is Visible    ${lblChangeRecepient}    30s
    Click Element    ${lblChangeRecepient}

Verify Continue Digital Item Text
    [Arguments]    ${verifyText}
    Wait Until Page Contains    ${verifyText}    30s
