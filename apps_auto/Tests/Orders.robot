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

Apps > Order Refactor > Order History > Date filter applied - QASA-373
    [Tags]    QASA-373
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Close Application
    Start Application    ${False}
    Click Menu
    Click Menu Register
    Register Takealot    AutoTest    Test    ?    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Verify Text On Screen    Last 3 months    ${MIN_TIMEOUT}
    Verify Text On Screen    No orders found    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Order Refactor > Order History > My Account > Empty Landing Screen - QASA-374
    [Tags]    QASA-374
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Close Application
    Start Application    ${False}
    Click Menu
    Click Menu Register
    Register Takealot    AutoTest    Test    ?    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Verify Text On Screen    Last 3 months    ${MIN_TIMEOUT}
    Verify Text On Screen    No orders found    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Order Refactor > Order Detail > Delivered Order - QASA-348
    [Tags]    QASA-348
    [Setup]    Start Application
    Clear Environment
    ${completedOrderProductId}=    Search And Return Product Id API    sunlight
    Create New Order API   ${completedOrderProductId}    1    Credit Card    COURIER    true
    Update Order Delivery DB    ${query_order_id}
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Click Order Delivery
    Click Track Order
    Verify Text On Screen    Order paid    ${MIN_TIMEOUT}
    Verify Text On Screen    Expected to ship    ${MIN_TIMEOUT}
    Verify Text On Screen    DELIVERY BY    ${MIN_TIMEOUT}
    Verify Text On Screen    Detailed tracking will become available once your parcel has shipped from our warehouse    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${barTrackerVertical}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${progressTrackerVertical}    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Order Refactor > Order Detail > Digital Order - QASA-350
    [Tags]    QASA-350
    [Setup]    Start Application
    Clear Environment
    ${completedOrderProductId}=    Search And Return Product Id API    airtim
    Create New Order API   ${completedOrderProductId}    1    Credit Card    COURIER    true
    Update Order Delivery DB    ${query_order_id}
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Click Order Delivery
    Verify Text On Screen    Digital Product    ${MIN_TIMEOUT}
    Verify Text On Screen    Delivered via email to    ${MIN_TIMEOUT}
    Verify Text On Screen    ${prod_Title}    ${MIN_TIMEOUT}
    Verify Text On Screen    ORDER SUMMARY    ${MIN_TIMEOUT}
    Verify Text On Screen    1 Item    1s
    Verify Text On Screen    Delivery    1s
    Verify Text On Screen    PAYMENT METHOD    1s
    Swipe Up    ${windowScroll}
    Verify Text On Screen    Credit Card    1s  
    Verify Text On Screen    DELIVERY METHOD    1s
    Verify Text On Screen    First Delivery Free - Standard    1s
    Verify Text On Screen    SHIPPING ADDRESS    1s
    Swipe Up    ${windowScroll}
    Verify Text On Screen    Test    1s
    Verify Text On Screen    12 Ridge Way    1s
    Verify Text On Screen    Green Point    1s
    Verify Text On Screen    Cape Town    1s
    Verify Text On Screen    8005    1s
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
