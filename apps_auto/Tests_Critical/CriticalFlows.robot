*** Settings ***
Default Tags      critical
Suite Setup    Install Application
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Search and Buy Item on Delivery using Credit Card
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
    [Teardown]    Tear Down

Buy Daily Deal Item on Delivery using Credit Card
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Click Menu Daily Deals
    Click Product Daily Deals
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
    [Teardown]    Tear Down

Search and Buy Item on Delivery using Payfast and Create new Address
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Click Menu Shop By Department
    Click Menu Sport and Fitness
    Click Product Department
    Click Add To Wishlist
    Click Wishlist
    Click Wishlist Add To Cart
    Click Cart
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
    Verify Payfast Payment Text    Secure payments by PayFast
    [Teardown]    Tear Down

Search and Buy Heavy Item on Delivery along with TV
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Fridg
    Click Product from API
    Verify Delivery Surcharge    + R 200 Delivery Surcharge
    Click Add To Cart
    Click Continue Shopping
    Click Search Icon
    Search Product    Televisio
#    Search Product    Monito
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
    [Teardown]    Tear Down

Edit Personal Details, Create Address and Buy Item on Delivery
    [Setup]    Start Application
    Clear Environment
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
    Click Back Android
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
    [Teardown]    Tear Down

Buy Airtime and Pay with Credit Card
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    airtim
    Click First Product from API
    Click Airtime
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
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    airtim
    Click First Product from API
    Click Airtime
    Click Add To Cart
    Click Continue Shopping
    Click Search Icon
    Search Product    monteg
    Click First Product from API
    Click 10 Kg
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
    [Teardown]    Tear Down

Buy Airtime along with another Item on Collection
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    airtim
    Click First Product from API
    Click Airtime
    Click Add To Cart
    Click Continue Shopping
    Click Search Icon
    Search Product    monteg
    Click First Product from API
    Click 10 Kg
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
    [Teardown]    Tear Down

Buy Daily Deals Item and verify no Promotions
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Click Menu Daily Deals
    Click Product Daily Deals
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
    [Teardown]    Tear Down

Buy Daily Deals Item and verify Promotions
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Click Menu Daily Deals
    Click Product Daily Deals
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
    [Teardown]    Tear Down