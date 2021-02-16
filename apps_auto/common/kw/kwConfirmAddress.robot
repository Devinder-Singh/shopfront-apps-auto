*** Settings ***
Library           TalLibrary

*** Keywords ***
Click Confirmed Address
    Wait Until Element Is Visible    ${txtConfirmAddress}    30s
    Click Element    ${txtConfirmAddress}
