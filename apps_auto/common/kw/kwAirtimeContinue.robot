*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Continue Airtime
    Wait Until Element Is Visible    ${btnContinueAirtime}    30s
    Click Element    ${btnContinueAirtime}

Click Cancel Airtime
    Wait Until Element Is Visible    ${btnCancel}    30s
    Click Element    ${btnCancel}
