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

Apps - Order Refactor - Order History - Date filter selection - QASA-370
    [Tags]    QASA-370
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Any Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment
    Close Application
    Start Application    ${False}
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Verify Text On Screen    Last 3 months    ${MIN_TIMEOUT}
    Click Orders Filter Change
    Verify Text On Screen    Last 6 months    ${MIN_TIMEOUT}
    Verify Text On Screen    2021    ${MIN_TIMEOUT}
    Verify Text On Screen    2020    ${MIN_TIMEOUT}
    Verify Text On Screen    2019    ${MIN_TIMEOUT}
    Verify Text On Screen    2018    ${MIN_TIMEOUT}
    Verify Text On Screen    2017    ${MIN_TIMEOUT}
    Verify Text On Screen    2016    ${MIN_TIMEOUT}
    Click Orders Filter Option    2021
    Verify Text On Screen    Awaiting Payment    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Order Refactor > Order History > Page Dismissal - QASA-371
    [Tags]    QASA-371
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    t@ke@!ot1234
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Verify Text On Screen    Last 3 months    ${MIN_TIMEOUT}
    Click Orders Filter Change
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Product Icon Close
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Back Screen
    Verify Text On Screen    Last 3 months    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Order Refactor > Order History > Date filter applied - QASA-372
    [Tags]    QASA-372
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    t@ke@!ot1234
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Verify Text On Screen    Last 3 months    ${MIN_TIMEOUT}
    Click Orders Filter Change
    Verify Text On Screen    Filter orders placed in    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Product Icon Close
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Back Screen
    Verify Text On Screen    Last 3 months    ${MIN_TIMEOUT}
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
