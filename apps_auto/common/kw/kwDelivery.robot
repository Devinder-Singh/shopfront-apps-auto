*** Settings ***
Library           TalLibrary

*** Keywords ***
Click Delivery
    Wait Until Element Is Visible    ${btnDelivery}    30s
    Click Element    ${btnDelivery}

Click Collect
    Wait Until Element Is Visible    ${btnCollect}    30s
    Click Element    ${btnCollect}

Click Add Delivery Address
    Wait Until Element Is Visible    ${btnDeliveryAddress}    30s
    Click Element    ${btnDeliveryAddress}
