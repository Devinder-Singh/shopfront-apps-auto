*** Settings ***
Resource          ../config/defaultConfig.robot
Library    Process

*** Keywords ***
Start Application
    [Arguments]    ${autoAlert}=${True}
    Close All Applications
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
    Log    ${APP_PATH}
    &{cap}=    Get Capabilities    ${True}    ${autoAlert}
    IF    '${PLATFORM_NAME}' == 'android'
        Log Many    &{cap}
        Open Application    ${REMOTE_URL}    &{cap}    
    END
    