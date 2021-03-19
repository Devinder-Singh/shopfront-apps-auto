*** Settings ***
Default Tags      regression
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Register & Login - QA-5329
    [Setup]    Start Application
    Click Menu
    Click Menu Register
    Register Takealot    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}
    Verify Register Text    Please enter your first name
    Verify Register Text    Please enter your surname
    Verify Register Text    Please enter your email address
    Verify Register Text    Please enter your password
    Verify Register Text    Please confirm your password
    Click Back My Account
    Click Menu Register
    Register Takealot    AutoTest    Test    AutoTest10@take2.co.za    t@ke@!ot1234
    Click Back My Account
    Click Menu
    Click Menu Logout
    Click Menu Login
    Login Takealot    ${EMPTY}    ${EMPTY}
    Verify Register Text    Please enter your email address
    Verify Register Text    Please enter your password
    Login Takealot    AutoTest10@take2.co.za    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu Logout
    [Teardown]    Tear Down
