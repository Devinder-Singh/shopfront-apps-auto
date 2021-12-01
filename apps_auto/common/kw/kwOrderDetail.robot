*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Pay Now Button
    [Documentation]    Clicks the pay now button within the order detail screen. Usually available for awaiting orders.
    Wait Until Element Is Visible    ${btnPayNow}
    Click Element    ${btnPayNow}