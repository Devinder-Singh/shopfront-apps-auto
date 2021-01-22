*** Settings ***
Library           TalLibrary

*** Keywords ***
Click Free Delivery
    Wait Until Element Is Visible    ${btnFree}    30s
    Click Element    ${btnFree}

Click Surcharge Delivery
    Wait Until Element Is Visible    ${txtSurchargeDelivery}    30s
    Click Element    ${txtSurchargeDelivery}
