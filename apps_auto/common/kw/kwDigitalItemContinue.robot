*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Continue Digital Item
    Wait Until Element Is Visible    ${btnContinueAirtime}    ${MIN_TIMEOUT}
    Click Element    ${btnContinueAirtime}

Click Cancel Airtime
    Wait Until Element Is Visible    ${btnCancel}    ${MIN_TIMEOUT}
    Click Element    ${btnCancel}

Click Change Digital Item Recepient
    Wait Until Element Is Visible    ${lblChangeRecepient}    ${MIN_TIMEOUT}
    Click Element    ${lblChangeRecepient}

Verify Continue Digital Item Text
    [Arguments]    ${verifyText}
    Wait Until Page Contains    ${verifyText}    ${MIN_TIMEOUT}
