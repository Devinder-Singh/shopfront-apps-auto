*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Select Pickup Point
    Wait Until Element Is Visible    ${txtSelectPickupPoint}    30s
    Click Element    ${txtSelectPickupPoint}

Verify Pickup Point Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${txtSelectPickupPoint}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s

Click back Pickup Point
    Wait Until Element Is Visible    ${navPickupPointBack}    30s
    Click Element    ${navPickupPointBack}
