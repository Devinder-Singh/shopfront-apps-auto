*** Settings ***
Library           TalLibrary

*** Keywords ***
Click Free Delivery
    Wait Until Element Is Visible    ${btnFree}    30s
    Click Element    ${btnFree}

Click Surcharge Delivery
    Wait Until Element Is Visible    ${txtSurchargeDelivery}    30s
    Click Element    ${txtSurchargeDelivery}

Click Collection Fee R25
    Wait Until Element Is Visible    ${txtCollectionFee}    30s
    Click Element    ${txtCollectionFee}

Click Back Delivery Options
    Wait Until Element Is Visible    ${navDeliveryOptBack}    30s
    Click Element    ${navDeliveryOptBack}

Verify Delivery Options Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${txtEstimatedCollection}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s
