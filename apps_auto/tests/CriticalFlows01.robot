*** Settings ***
Default Tags      regression
Resource          ../common/config/defaultConfig.robot
Library           TalLibrary

*** Test Cases ***
Apps > My Account Verifications - QA-5356
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Verify Text On Screen    Order History    30s
    Click Back Screen
    Click Menu Exchanges And Returns
    Verify Text On Screen    Open file with    30s
    Verify Text On Screen    Chrome    1s
    Click Menu Exchanges And Returns
    Click Menu Personal Detail
    Update Personal Detail Name    AutoTester
    Verify Text On Screen    Your name has been successfully updated    30s
    Update Personal Detail Email
    Verify Text On Screen    Your email address has been successfully updated    30s
    Update Personal Detail Mobile
    Verify Text On Screen    Your mobile number has been successfully updated    30s
    Update Personal Detail Password
    Verify Text On Screen    Your mobile number has been successfully updated    30s
    Update Personal Detail Business
    Verify Text On Screen    Your business details have been successfully updated    30s
    [Teardown]    Tear Down
