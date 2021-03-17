*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Confirmed Address
    Wait Until Element Is Visible    ${txtConfirmAddress}    30s
    Click Element    ${txtConfirmAddress}
