*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Select Pickup Point
    Wait Until Element Is Visible    ${txtSelectPickupPoint}    ${MIN_TIMEOUT}
    Click Element    ${txtSelectPickupPoint}

Verify Pickup Point Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${txtSelectPickupPoint}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s

Click back Pickup Point
    Wait Until Element Is Visible    ${navPickupPointBack}    ${MIN_TIMEOUT}
    Click Element    ${navPickupPointBack}
