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

Apps > Order Tracking > Delivery Order > QASA-80
    [Tags]    QASA-80
    [Setup]    Start Application
    Clear Environment

    ${completedOrderProductId}=    Search And Return Product Id API    sunlight
    Create New Order API   ${completedOrderProductId}    1    Credit Card    COURIER    true
    
    Click Menu Logout If Logged In
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Run Keyword If    '${PLATFORM_NAME}' == 'ios'    Click Menu
    Click Menu My Account
    Click Menu Orders
    Click Order By Index    1
    
    Verify Text On Screen    ORDER SUMMARY    ${MIN_TIMEOUT}
    Verify Text On Screen    1 Item
    Verify Text On Screen    Delivery
    Verify Text On Screen    PAYMENT METHOD
    Verify Text On Screen    Credit Card
    Verify Text On Screen    DELIVERY METHOD
    Verify Text On Screen    Standard
    Verify Text On Screen    SHIPPING ADDRESS
    Verify Text On Screen    Nkhabi
    Run Keyword If    '${PLATFORM_NAME}' == 'android'    Swipe Up    ${windowScroll}
    Verify Text On Screen    5 Templar Street
    Verify Text On Screen    Camelot
    Verify Text On Screen    Cape Town
    Verify Text On Screen    7580
    Run Keyword If    '${PLATFORM_NAME}' == 'android'    Click Back Screen
    Run Keyword If    '${PLATFORM_NAME}' == 'android'    Click Back Screen
    Run Keyword If    '${PLATFORM_NAME}' == 'ios'    Click Back iOS    Back
    Run Keyword If    '${PLATFORM_NAME}' == 'ios'    Click Back iOS    My Account

    ${awaitingOrderProductId}=    Search And Return Product Id API    sunlight
    Create New Order API    ${awaitingOrderProductId}    1    PayFast    COURIER    false

    Click Menu Orders
    Click Awaiting Order By Index    1
    Click Pay Now Button
    Click Change Payment Method Only
    Click Card Payment Method
    Click Pay With Credit Card
    Enter CVV Number    123
    Click Pay Button
    Run Keyword If    '${PLATFORM_NAME}' == 'ios'    Close Ratings Popup
    Verify Order Confirmation
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