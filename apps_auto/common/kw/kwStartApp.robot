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

Clear Environment And Start Application
    Clear Environment
    Start Application

Tear Down
    Capture Page Screenshot
    Set Implicitly Wait    1
    Close Application

Tear Down Cancel Order
    Capture Page Screenshot
    Close Application
    IF    ${ISORDERED}==${True}
        Start Application    ${False}
        Cancel Latest Order
        Close Application
    END

Install Application
    [Arguments]    ${autoAlert}=${True}
    Log    ${APP_PATH}
    &{cap}=    Get Capabilities    ${True}    ${autoAlert}
    IF    '${PLATFORM_NAME}' == 'android'
        Log Many    &{cap}
        Open Application    ${REMOTE_URL}    &{cap}
    ELSE
        Start Application
    END
