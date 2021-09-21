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

    &{cap}=    Get Capabilities    ${True}    ${autoAlert}
    Log Many    &{cap}
    Open Application    ${REMOTE_URL}    &{cap}

Install Application Master
    ${APP_PATH}=    Set Variable    /Users/jenkins/qa_build_master/apk_files/master/debug-3.3.0.apk
    Install Application
