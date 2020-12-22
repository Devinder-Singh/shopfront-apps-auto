*** Settings ***
Default Tags      regression
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Open App and Register
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    take2Automation+201905213934@gmail.com    t@ke@!ot1234
    Verify Logged In    Automation0.6560
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Menu
    Click Menu Logout
    [Teardown]    Tear Down