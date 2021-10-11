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
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Log Many    &{cap}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Open Application    ${REMOTE_URL}    &{cap}

Install Application Master
#    ${APP_PATH}=    Set Variable    /Users/jenkins/qa_build_master/apk_files/master/debug-3.3.0.apk
#    ${APP_ENVIRONMENT}=    Set Variable    http://api.master.env/

    Run Keyword If    '${PLATFORM_NAME}'=='android'    Set Global Variable    ${APP_PATH}    /Users/jenkins/qa_build_master/apk_files/master/debug-3.3.0.apk
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Set Global Variable    ${PLATFORM_VERSION}    14.4

    Set Global Variable    ${APP_ENVIRONMENT}    http://api.master.env/

    Run Keyword If    '${PLATFORM_NAME}'=='android'    Install Application
