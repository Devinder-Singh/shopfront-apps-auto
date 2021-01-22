*** Settings ***
Library           TalLibrary

*** Keywords ***
Click Address
    Wait Until Element Is Visible    ${btnAddress}    30s
    Click Element    ${btnAddress}

Click Pickup Point
    Wait Until Element Is Visible    ${btnPickupPoint}    30s
    Click Element    ${btnPickupPoint}
