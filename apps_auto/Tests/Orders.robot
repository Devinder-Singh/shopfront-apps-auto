*** Settings ***
Default Tags      orders
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Order Refactor > Order History > Home Page > Landing Page
    [Tags]    QASA-378
    [Setup]    Start Application
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Order History
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Orders
    Verify Text On Screen    Last 3 months
    [Teardown]    Tear Down

Apps > Order Refactor > Order History > Home Page > Empty Landing Screen
    [Tags]    QASA-375
    [Setup]    Start Application
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Order History
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Orders
    Verify Text On Screen    No orders found
    [Teardown]    Tear Down

Apps > Order Refactor > Order History > Display Results
    [Tags]    QASA-369
    [Setup]    Start Application
    Click Menu Logout If Logged In
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Run Keyword If    '${PLATFORM_NAME}' == 'ios'    Click Menu
    Click Menu My Account
    Click Menu Orders
    Click Filter Options Change
    Select Order History Filter Option    Last 6 months
    Verify Text On Screen    Last 6 months    ${MIN_TIMEOUT}
    [Teardown]    Tear Down