*** Settings ***
Default Tags      critical
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Register User
    [Tags]    Master0
    [Setup]    Install Application
    Click No Deal     ${MAX_TIMEOUT}
    Click Menu
    Dismiss Reviews Text
    Click Menu Login
    Close Application
    Start Application
    Click Menu
    Click Menu Register
    Register Takealot    AutoTest    Test    ?    t@ke@!ot1234
    Click Home
    Click Menu My Account
    Click Menu Address Book
    Click Add Delivery Address
    IF    '${PLATFORM_NAME}'=='ios'
        Click Residential
    END
    Add Delivery Address    Tester Residential    0723456778    13 Caro Road
    Wait Until Element Is Visible    ${btnAddressDelete}    ${MIN_TIMEOUT}
    Wait Until Page Contains    Tester Residential    10s
    Wait Until Page Contains    Robertsham    10s
    [Teardown]    Tear Down

Search and Buy Item on Delivery using Credit Card
    [Tags]    Master1
    [Setup]    Clear Environment And Start Application
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
    Click Order Awaiting Payment
    Verify Text On Screen    ORDER SUMMARY    ${MIN_TIMEOUT}
    Verify Text On Screen    1 Item
    Verify Text On Screen    Delivery
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Order Total
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    To Pay
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    TO PAY
    Verify Text On Screen    PAYMENT METHOD
    Swipe Up    ${windowScroll}
    Verify Text On Screen    Credit Card
    Verify Text On Screen    DELIVERY METHOD
    Verify Text On Screen    First Delivery Free - Standard
    Verify Text On Screen    SHIPPING ADDRESS
    Swipe Up    ${windowScroll}
    Verify Text On Screen    Test
    Verify Text On Screen    12 Ridge Way
    Verify Text On Screen    Green Point
    Verify Text On Screen    Cape Town
    Verify Text On Screen    8005
    Swipe Down    ${windowScroll}
    Swipe Down    ${windowScroll}
    [Teardown]    Tear Down

Buy Daily Deal Item on Delivery using Credit Card
    [Tags]    Master2
    [Setup]    Clear Environment And Start Application
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu Daily Deals
    Click Daily Deals Product from API
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
    [Teardown]    Tear Down

Search and Buy Item on Delivery using Payfast and Create new Address
    [Tags]    Master3
    [Setup]    Clear Environment And Start Application
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu Shop By Department
    Click Menu Sport and Fitness
    Click Product Department    2
    Click Add To Wishlist
    Click Wishlist    ${True}
    Click Wishlist Add To Cart    ${False}
    Click Back iOS    My Lists
    Click Home Cart
    Click Checkout
    Click Delivery
    Click Add Delivery Address
    IF    '${PLATFORM_NAME}'=='ios'
        Click Residential
    END
    Add Delivery Address    Tester Residential    0723456778    13 Caro Road
    Click Any Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Payfast Payment Method
    Click Pay With Payfast
    Verify Payfast Payment Text
    [Teardown]    Tear Down

Search and Buy Heavy Item on Delivery along with TV
    [Tags]    Master4
    [Setup]    Clear Environment And Start Application
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Fridg
    Click Product From API
    Verify Delivery Surcharge    + R 200 Delivery Surcharge
    Click Add To Cart
    Verify Element On Screen    ${btnGoToCart}    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Televisio
    Click Product from API    2
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Domestic TV Licence
    Enter TV Licence    7209195063086
    Click Delivery
    Click Address
    Click Surcharge Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment
    [Teardown]    Tear Down

Edit Personal Details, Create Address and Buy Item on Delivery
    [Tags]    Master5
    [Setup]    Clear Environment And Start Application
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Personal Detail
    Update Personal Detail Name    AutoTester
    Click Back iOS    My Account
    Click Back Android
    Click Menu Address Book
    Click Add Delivery Address
    IF    '${PLATFORM_NAME}'=='ios'
        Click Residential
    END
    Add Delivery Address    Tester Residential    0723456778    13 Caro Road
    Click Back Delivery Android
    Click Back Delivery iOS
    Click Back iOS    My Account
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
    [Teardown]    Tear Down

Buy Airtime and Pay with Credit Card
    [Tags]    Master6
    [Setup]    Clear Environment And Start Application
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    airtim
    Click Variant Product from API    1
    Click Product Variant From API    2
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Continue Digital Item
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment
    [Teardown]    Tear Down

Buy Airtime along with another Item on Delivery
    [Tags]    Master7
    [Setup]    Clear Environment And Start Application
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    airtim
    Click Variant Product from API    1
    Click Product Variant From API    2
    Click Add To Cart
    Verify Element On Screen    ${btnGoToCart}    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    monteg
    Click Variant Product from API    0
    Click Product Variant From API    2
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Any Delivery
    Click Continue Digital Item
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment
    [Teardown]    Tear Down

Buy Airtime along with another Item on Collection
    [Tags]    Master8
    [Setup]    Clear Environment And Start Application
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    airtim
    Click Variant Product from API    1
    Click Product Variant From API    2
    Click Add To Cart
    Verify Element On Screen    ${btnGoToCart}    ${MAX_TIMEOUT}
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    monteg
    Click Variant Product from API    0
    Click Product Variant From API    2
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Click Any Delivery
    Click Continue Digital Item
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment
    [Teardown]    Tear Down

Buy Daily Deals Item and verify no Promotions
    [Tags]    Master9
    [Setup]    Start Application
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Clear Environment
    Click Home
    Click Menu
    Click Menu Daily Deals
    Click Daily Deals Product from API
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
    [Teardown]    Tear Down

Buy Daily Deals Item and verify Promotions
    [Tags]    Master10
    [Setup]    Start Application
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Clear Environment
    Click Home
    Click Menu
    Click Menu Daily Deals
    Click Daily Deals Product from API
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
    [Teardown]    Tear Down