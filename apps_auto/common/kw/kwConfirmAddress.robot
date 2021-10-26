*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Confirmed Address
    Wait Until Element Is Visible    ${txtConfirmAddress}    ${MIN_TIMEOUT}
    Click Element    ${txtConfirmAddress}
