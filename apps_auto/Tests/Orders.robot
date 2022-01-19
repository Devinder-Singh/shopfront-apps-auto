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

Apps > Order Refactor > Order History > Awaiting Payment Order
    [Tags]    QASA-367
    [Setup]    Start Application    
    ${awaitingOrderProductId}=    Search And Return Product Id API    sunlight
    Create New Order API    ${awaitingOrderProductId}    1    PayFast    COURIER    false
    Click Menu Logout If Logged In
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Run Keyword If    '${PLATFORM_NAME}' == 'ios'    Click Menu
    Click Menu My Account
    Click Menu Orders
    Verify Order Status By Index    Awaiting Payment    1
    [Teardown]    Tear Down

Apps > Order Refactor > Order Detail > Estimated Collection Order
    [Tags]    QASA-357
    [Setup]    Start Application    
    ${awaitingOrderProductId}=    Search And Return Product Id API    sunlight    
    Create New Order API    ${awaitingOrderProductId}    1    PayFast    COLLECT    true    5f3d1644fdb1e941af57fd7e
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Run Keyword If    '${PLATFORM_NAME}' == 'ios'    Click Menu
    Click Menu My Account
    Click Menu Orders
    Click Order By Index    1
    Verify Text On Screen    Order Detail
    Verify Text On Screen    Estimated Collection from
    Verify Text On Screen    NOT YET READY
    Verify Text On Screen    ORDERED
    Verify Text On Screen    PAID
    # Currently there is a production defect CHSAPP-12792 for the below line, once that is resolved this line can be uncommented
    # Verify Text On Screen    Note: We'll send you an SMS or email once your order is ready for collection
    Verify Text On Screen    Standard Collect
    Wait Until Element Is Visible    ${btnTrack}
    [Teardown]    Tear Down

Apps > Order Refactor > Order History > Digital Order
    [Tags]    QASA-359
    [Setup]    Start Application    
    ${digitalOrderProductId}=    Search And Return Product Id API    takealot voucher
    Create New Order API    ${digitalOrderProductId}    1    PayFast    COURIER    true
    Click Menu Logout If Logged In
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Click Menu Orders
    Click Order By Index    1
    Verify Text On Screen    Digital Product(s)
    Verify Text On Screen    Digital Delivery
    [Teardown]    Tear Down

Apps > Order Refactor > Order History > Cancelled Order
    [Tags]    QASA-365
    [Setup]    Start Application
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Click Menu Orders
    Verify Text On Screen    Cancelled Item(s)
    [Teardown]    Tear Down

Apps > Order Refactor > Order Detail > Cancelled Order
    [Tags]    QASA-356
    [Setup]    Start Application
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Click Menu Orders
    Click Order By Index    1
    Verify Text On Screen    Order Detail
    Verify Text On Screen    Cancelled Item(s)
    [Teardown]    Tear Down
