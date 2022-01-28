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

Apps > Order Refactor > Order Detail > Shipped Order - QASA-355
    [Tags]    QASA-355
    [Setup]    Start Application
    Clear Environment
    ${completedOrderProductId}=    Search And Return Product Id API    pencil
    Create New Order API   ${completedOrderProductId}    1    Credit Card    COURIER    true
    Update Order Delivery DB    ${query_order_id}    ${False}
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Click Order By Index    1
    Verify Text On Screen    ${prod_Title}    ${MIN_TIMEOUT}
    Verify Text On Screen    ORDER SUMMARY    ${MIN_TIMEOUT}
    Verify Text On Screen    1 Item
    Verify Text On Screen    Delivery
    Verify Text On Screen    PAYMENT METHOD
    Swipe Up    ${windowScroll}
    Verify Text On Screen    Credit Card
    Verify Text On Screen    DELIVERY METHOD
    Verify Text On Screen    Standard
    Verify Text On Screen    SHIPPING ADDRESS
    Swipe Up    ${windowScroll}
    Verify Text On Screen    Test
    Verify Text On Screen    12 Ridge Way
    Verify Text On Screen    Green Point
    Verify Text On Screen    Cape Town
    Verify Text On Screen    8005
    [Teardown]    Tear Down

Apps > Order Refactor > Order Detail > Awaiting Payment Order - QASA-358
    [Tags]    QASA-358
    [Setup]    Start Application
    Clear Environment
    ${completedOrderProductId}=    Search And Return Product Id API    pencil
    Create New Order API   ${completedOrderProductId}    1    Credit Card    COURIER    false
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Verify Order Status By Index    Awaiting Payment    ${MIN_TIMEOUT}
    Click Order By Index    1
    Verify Text On Screen    ${prod_Title}    ${MIN_TIMEOUT}
    Verify Text On Screen    ORDER SUMMARY    ${MIN_TIMEOUT}
    Verify Text On Screen    1 Item
    Verify Text On Screen    Delivery
    Verify Text On Screen    PAYMENT METHOD
    Swipe Up    ${windowScroll}
    Verify Text On Screen    Credit Card
    Verify Text On Screen    DELIVERY METHOD
    Verify Text On Screen    Standard
    Verify Text On Screen    SHIPPING ADDRESS
    Swipe Up    ${windowScroll}
    Verify Text On Screen    Test
    Verify Text On Screen    12 Ridge Way
    Verify Text On Screen    Green Point
    Verify Text On Screen    Cape Town
    Verify Text On Screen    8005
    [Teardown]    Tear Down

Apps > Order Refactor > Order History > Delivered Order - QASA-363
    [Tags]    QASA-363
    [Setup]    Start Application
    Clear Environment
    ${completedOrderProductId}=    Search And Return Product Id API    pencil
    Create New Order API   ${completedOrderProductId}    1    Credit Card    COURIER    true
    Update Order Delivery DB    ${query_order_id}    ${True}
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Click Order By Index    1
    Verify Text On Screen    Delivered    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Order Refactor > Order History > Shipped Order - QASA-364
    [Tags]    QASA-364
    [Setup]    Start Application
    Clear Environment
    ${completedOrderProductId}=    Search And Return Product Id API    pencil
    Create New Order API   ${completedOrderProductId}    1    Credit Card    COURIER    true
    Update Order Delivery DB    ${query_order_id}    ${False}
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Click Order By Index    1
    Verify Text On Screen    Shipped    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Order Refactor > Order History > Estimated Collection Order - QASA-366
    [Tags]    QASA-366
    [Setup]    Start Application
    Clear Environment
    ${completedOrderProductId}=    Search And Return Product Id API    pencil
    Create New Order API   ${completedOrderProductId}    1    Credit Card    COLLECT    true    5648c4217f1b2d10e54f6a1e
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Click Order By Index    1
    Verify Text On Screen    ${prod_Title}    ${MIN_TIMEOUT}
    Verify Text On Screen    Estimated Collection from    ${MIN_TIMEOUT}
    Verify Text On Screen    We'll send you an email once your order is ready for collection    ${MIN_TIMEOUT}
    Verify Text On Screen    NOT YET READY    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > CMS Widgets > Carousel Widget - QASA-647
    [Tags]    QASA-647
    [Setup]    Start Application
    Click Menu
    Click Menu Shop By Department
    Click Menu Department    Auto
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Baby & Toddler
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Beauty
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Books
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Camping
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Cellphones
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Clothing
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Computers
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    DIY & Home Improvement
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Gaming
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Garden, Pool & Patio
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Groceries
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Health & Hygiene
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Home & Appliances
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Household Cleaning
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Kitchen & Appliances
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Liquor
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Luggage & Travel
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Movies
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Music
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Musical Instruments
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Office
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Pets
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Photography
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Sport & Training
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Stationery
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Toiletries
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Toys & Games
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    TV, Audio & Video
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Wearable Tech
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    [Teardown]    Tear Down

Apps > CMS Widgets > Product List Widget - QASA-648
    [Tags]    QASA-648
    [Setup]    Start Application
    Click Menu
    Click Menu Shop By Department
    Click Menu Department    Auto
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Auto
    Click Back Screen
    Click Menu Department    Baby & Toddler
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Baby
    Click Back Screen
    Click Menu Department    Beauty
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Beauty
    Click Back Screen
    Click Menu Department    Books
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Books
    Click Back Screen
    Click Menu Department    Camping
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Camping
    Click Back Screen
    Click Menu Department    Cellphones
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Cellphones
    Click Back Screen
    Click Menu Department    Clothing
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Clothing
    Click Back Screen
    Click Menu Department    Computers
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Computers
    Click Back Screen
    Click Menu Department    DIY & Home Improvement
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    DIY
    Click Back Screen
    Click Menu Department    Gaming
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Gaming
    Click Back Screen
    Click Menu Department    Garden, Pool & Patio
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Garden
    Click Back Screen
    Click Menu Department    Groceries
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Groceries
    Click Back Screen
    Click Menu Department    Health & Hygiene
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Health
    Click Back Screen
    Click Menu Department    Home & Appliances
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Home
    Click Back Screen
    Click Menu Department    Household Cleaning
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Household+Cleaning
    Click Back Screen
    Click Menu Department    Kitchen & Appliances
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Kitchen
    Click Back Screen
    Click Menu Department    Liquor
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Liquor
    Click Back Screen
    Click Menu Department    Luggage & Travel
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Luggage
    Click Back Screen
    Click Menu Department    Movies
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Movies
    Click Back Screen
    Click Menu Department    Music
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Music
    Click Back Screen
    Click Menu Department    Musical Instruments
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Musical+Instruments
    Click Back Screen
    Click Menu Department    Office
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Office
    Click Back Screen
    Click Menu Department    Pets
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Pets
    Click Back Screen
    Click Menu Department    Photography
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Photography
    Click Back Screen
    Click Menu Department    Sport & Training
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Sport
    Click Back Screen
    Click Menu Department    Stationery
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Stationery
    Click Back Screen
    Click Menu Department    Toiletries
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Toiletries
    Click Back Screen
    Click Menu Department    Toys & Games
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Toys
    Click Back Screen
    Click Menu Department    TV, Audio & Video
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    TV
    Click Back Screen
    Click Menu Department    Wearable Tech
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Wearable+Tech
    Click Back Screen
    [Teardown]    Tear Down

Apps > CMS Widgets > Image List Widget - QASA-652
    [Tags]    QASA-652
    [Setup]    Start Application
    Click Menu
    Click Menu Shop By Department
    Click Menu Department    Baby & Toddler
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Beauty
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Books
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Camping
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Cellphones
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Clothing
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Computers
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    DIY & Home Improvement
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Gaming
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Garden, Pool & Patio
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Health & Hygiene
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Home & Appliances
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Liquor
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Luggage & Travel
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Musical Instruments
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Office
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Pets
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Photography
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Sport & Training
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Stationery
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    TV, Audio & Video
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Wearable Tech
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    [Teardown]    Tear Down

Apps > CMS Widgets > Contextual Navigation Widget > SubCategories - QASA-649
    [Tags]    QASA-649
    [Setup]    Start Application
    Click Menu
    Click Menu Shop By Department
    Click Menu Department    Auto
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Baby & Toddler
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Beauty
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Books
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Camping
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Cellphones
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Clothing
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Computers
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    DIY & Home Improvement
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Gaming
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Garden, Pool & Patio
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Groceries
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Health & Hygiene
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Home & Appliances
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Household Cleaning
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Liquor
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Luggage & Travel
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Movies
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Music
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Musical Instruments
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Office
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Pets
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Photography
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Sport & Training
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Stationery
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Toiletries
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Toys & Games
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    TV, Audio & Video
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Wearable Tech
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    [Teardown]    Tear Down

Apps > CMS Widgets > Banner Pair Widget - QASA-654
    [Tags]    QASA-654
    [Setup]    Start Application
    Click Menu
    Click Menu Shop By Department
    Click Menu Department    Baby & Toddler
    Click Product Widget Banner
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Beauty
    Click Product Widget Banner
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Books
    Click Product Widget Banner
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Cellphones
    Click Product Widget Banner
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Clothing
    Click Product Widget Banner
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Gaming
    Click Product Widget Banner
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Garden, Pool & Patio
    Click Product Widget Banner
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Groceries
    Click Product Widget Banner
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Home & Appliances
    Click Product Widget Banner
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Household Cleaning
    Click Product Widget Banner
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Liquor
    Click Product Widget Banner
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Music
    Click Product Widget Banner
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Office
    Click Product Widget Banner
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Photography
    Click Product Widget Banner
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Stationery
    Click Product Widget Banner
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Toys & Games
    Click Product Widget Banner
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    [Teardown]    Tear Down

Apps > CMS Widgets > Feature Collection Widgets - QASA-653
    [Tags]    QASA-653
    [Setup]    Start Application
    Click Menu
    Click Menu Shop By Department
    Click Menu Department    Auto
    Scroll To Element    ${btnFeaturedWidgetImage}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Scroll To Element    ${btnFeaturedWidgetTitle}
    Verify Element On Screen    ${btnProductViwAllFirst}    ${MIN_TIMEOUT}
    Click Product Widget Featured Collection
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Camping
    Scroll To Element    ${btnFeaturedWidgetImage}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Scroll To Element    ${btnFeaturedWidgetTitle}
    Verify Element On Screen    ${btnProductViwAllFirst}    ${MIN_TIMEOUT}
    Click Product Widget Featured Collection
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Computers
    Scroll To Element    ${btnFeaturedWidgetImage}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Scroll To Element    ${btnFeaturedWidgetTitle}
    Verify Element On Screen    ${btnProductViwAllFirst}    ${MIN_TIMEOUT}
    Click Product Widget Featured Collection
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    DIY & Home Improvement
    Scroll To Element    ${btnFeaturedWidgetImage}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Scroll To Element    ${btnFeaturedWidgetTitle}
    Verify Element On Screen    ${btnProductViwAllFirst}    ${MIN_TIMEOUT}
    Click Product Widget Featured Collection
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Health & Hygiene
    Scroll To Element    ${btnFeaturedWidgetImage}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Scroll To Element    ${btnFeaturedWidgetTitle}
    Verify Element On Screen    ${btnProductViwAllFirst}    ${MIN_TIMEOUT}
    Click Product Widget Featured Collection
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Kitchen & Appliances
    Scroll To Element    ${btnFeaturedWidgetImage}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Scroll To Element    ${btnFeaturedWidgetTitle}
    Verify Element On Screen    ${btnProductViwAllFirst}    ${MIN_TIMEOUT}
    Click Product Widget Featured Collection
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Luggage & Travel
    Scroll To Element    ${btnFeaturedWidgetImage}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Scroll To Element    ${btnFeaturedWidgetTitle}
    Verify Element On Screen    ${btnProductViwAllFirst}    ${MIN_TIMEOUT}
    Click Product Widget Featured Collection
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Movies
    Scroll To Element    ${btnFeaturedWidgetImage}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Scroll To Element    ${btnFeaturedWidgetTitle}
    Verify Element On Screen    ${btnProductViwAllFirst}    ${MIN_TIMEOUT}
    Click Product Widget Featured Collection
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Music
    Scroll To Element    ${btnFeaturedWidgetImage}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Scroll To Element    ${btnFeaturedWidgetTitle}
    Verify Element On Screen    ${btnProductViwAllFirst}    ${MIN_TIMEOUT}
    Click Product Widget Featured Collection
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Musical Instruments
    Scroll To Element    ${btnFeaturedWidgetImage}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Scroll To Element    ${btnFeaturedWidgetTitle}
    Verify Element On Screen    ${btnProductViwAllFirst}    ${MIN_TIMEOUT}
    Click Product Widget Featured Collection
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Office
    Scroll To Element    ${btnFeaturedWidgetImage}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Scroll To Element    ${btnFeaturedWidgetTitle}
    Verify Element On Screen    ${btnProductViwAllFirst}    ${MIN_TIMEOUT}
    Click Product Widget Featured Collection
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Sport & Training
    Scroll To Element    ${btnFeaturedWidgetImage}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Scroll To Element    ${btnFeaturedWidgetTitle}
    Verify Element On Screen    ${btnProductViwAllFirst}    ${MIN_TIMEOUT}
    Click Product Widget Featured Collection
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Toiletries
    Scroll To Element    ${btnFeaturedWidgetImage}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Scroll To Element    ${btnFeaturedWidgetTitle}
    Verify Element On Screen    ${btnProductViwAllFirst}    ${MIN_TIMEOUT}
    Click Product Widget Featured Collection
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    TV, Auddo & Video
    Scroll To Element    ${btnFeaturedWidgetImage}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Scroll To Element    ${btnFeaturedWidgetTitle}
    Verify Element On Screen    ${btnProductViwAllFirst}    ${MIN_TIMEOUT}
    Click Product Widget Featured Collection
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Wearable Tech
    Scroll To Element    ${btnFeaturedWidgetImage}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Scroll To Element    ${btnFeaturedWidgetTitle}
    Verify Element On Screen    ${btnProductViwAllFirst}    ${MIN_TIMEOUT}
    Click Product Widget Featured Collection
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    [Teardown]    Tear Down
