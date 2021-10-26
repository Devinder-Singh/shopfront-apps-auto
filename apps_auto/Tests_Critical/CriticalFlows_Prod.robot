*** Settings ***
Default Tags      critical_prod
#Suite Setup    Install Application
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Search and Buy Item on Delivery using Payfast and Create new Address
    [Tags]    Production1
    [Setup]    Install Application
    Close All Applications
    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu Shop By Department
    Click Menu Sport and Fitness
    Click Product Department
    Click Add To Wishlist
    Click Wishlist
    Click Wishlist Add To Cart
    Click Back iOS    My Lists
    Click Home Cart
#    Click Cart
    Click Checkout
    Click Delivery
    Click Add Delivery Address
    Click Residential
    Add Delivery Address    Tester Residential    0723456778    13 Caro Road
    Click Free Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Payfast Payment Method
    Click Pay With Payfast
    Verify Payfast Payment Text    Instant EFT
    Close Application
    Start Application    ${False}
    Cancel Latest Order
    [Teardown]    Tear Down

Search and Buy Item on Delivery using Credit Card
    [Tags]    Production2
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
    Click Free Delivery
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
    Verify Text On Screen    Last 3 months    30s
    Click Order Awaiting Payment
    Verify Text On Screen    ORDER SUMMARY    30s
    Verify Text On Screen    1 Item    1s
    Verify Text On Screen    Delivery    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Order Total    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    To Pay    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    TO PAY    1s
    Verify Text On Screen    PAYMENT METHOD    1s
    Verify Text On Screen    Credit Card    1s
    Swipe Up    ${windowScroll}
    Verify Text On Screen    DELIVERY METHOD    1s
    Verify Text On Screen    First Delivery Free - Standard    1s
    Verify Text On Screen    SHIPPING ADDRESS    1s
    Swipe Up    ${windowScroll}
    Verify Text On Screen    Test    1s
    Verify Text On Screen    12 Ridge Way    1s
    Verify Text On Screen    Green Point    1s
    Verify Text On Screen    Cape Town    1s
    Verify Text On Screen    8005    1s
    Swipe Down    ${windowScroll}
    Swipe Down    ${windowScroll}
    Click Order Cancel
    [Teardown]    Tear Down

Search and Buy Heavy Item on Delivery along with TV
    [Tags]    Production3
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Fridg
    Click Product from API
    Verify Delivery Surcharge    + R 100 Delivery Surcharge
    Click Add To Cart
    Verify Element On Screen    ${btnGoToCart}    30s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Televisio
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Domestic TV Licence
    Click Verify TV Licence
    Enter TV Licence    1234
    Click Delivery
    Click Address
    Click Surcharge Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment
    Close Application
    Start Application    ${False}
    Cancel Latest Order
    [Teardown]    Tear Down

Edit Personal Details, Create Address and Buy Item on Delivery
    [Tags]    Production4
    [Setup]    Start Application
    Clear Environment
    Click Menu
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
    Click Residential
    Add Delivery Address My Acc    Tester Residential    0723456778    13 Caro Road
    Click Back Delivery Android
    Click Back Delivery iOS
    Click Back iOS    My Account
#    Click Back Android
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Free Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment
    Close Application
    Start Application    ${False}
    Cancel Latest Order
    [Teardown]    Tear Down

Buy Airtime and Pay with Credit Card
    [Tags]    Production5
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    airtim
    Click Variant Product from API
    Click Product Variant From API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Continue Digital Item
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment
    Close Application
    Start Application    ${False}
    Cancel Latest Order
    [Teardown]    Tear Down

Buy Airtime along with another Item on Delivery
    [Tags]    Production6
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    airtim
    Click Variant Product from API
    Click Product Variant From API
    Click Add To Cart
    Verify Element On Screen    ${btnGoToCart}    30s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    monteg
    Click Variant Product from API
    Click Product Variant From API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Free Delivery
    Click Continue Digital Item
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment
    Close Application
    Start Application    ${False}
    Cancel Latest Order
    [Teardown]    Tear Down

Buy Airtime along with another Item on Collection
    [Tags]    Production7
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    airtim
    Click Variant Product from API
    Click Product Variant From API
    Click Add To Cart
    Verify Element On Screen    ${btnGoToCart}    30s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    monteg
    Click Variant Product from API
    Click Product Variant From API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Click Free Delivery
    Click Continue Digital Item
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment
    Close Application
    Start Application    ${False}
    Cancel Latest Order
    [Teardown]    Tear Down

Register User
    [Tags]    Production8
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Close Application
    Start Application    ${False}
    Click Menu
    Click Menu Register
    Register Takealot    AutoTest    Test    ?    t@ke@!ot1234
    Click Home
    [Teardown]    Tear Down
