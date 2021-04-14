*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Start Application
    [Arguments]    ${autoAlert}=${True}
    &{cap}=    Get Capabilities    ${False}    ${autoAlert}
    Log Many    &{cap}
    Open Application    ${REMOTE_URL}    &{cap}
    Set Implicitly Wait    5

Tear Down
    Capture Page Screenshot
    Set Implicitly Wait    1
    Close Application

Install Application
    [Arguments]    ${autoAlert}=${True}
    &{cap}=    Get Capabilities    ${True}    ${autoAlert}
    Log Many    &{cap}
    Open Application    ${REMOTE_URL}    &{cap}

Start Browser
    [Arguments]    ${autoAlert}=${True}
    &{cap}=    Get Capabilities    ${False}    ${autoAlert}
    Log Many    &{cap}
    Open Application    ${REMOTE_URL}    &{cap}
    Set Implicitly Wait    5
