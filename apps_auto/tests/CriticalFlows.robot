*** Settings ***
Default Tags      regression
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Search and Buy Item on Delivery using Credit Card
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    take2Automation+201905213934@gmail.com    t@ke@!ot1234
    Verify Logged In    AutoTester
    Click Home
    Click Search Home
    Search Product    Pencil Case
    Click Product
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
    Verify Card Payment    Card Number
    [Teardown]    Tear Down

Buy Daily Deal Item on Delivery using Pay Fast
    [Setup]    Start Application
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
    Verify Card Payment    Card Number
    [Teardown]    Tear Down

Search and Buy Item on Delivery using Payfast and Create new Address
    [Setup]    Start Application
    Click Menu
    Click Menu Shop By Department
    Click Menu Sport and Fitness
    Click Product Daily Deals
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
    Verify Payfast Payment    Secure payments by PayFast
    [Teardown]    Tear Down

Search and Buy Heavy Item on Delivery along with TV
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Fridge
    Click Product
    Verify Delivery Surcharge    + R 200 Delivery Surcharge
    Click Add To Cart
    Click Continue Shopping
    Click Search Icon
    Search Product    Television
    Click Product
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
    Verify Card Payment    Card Number
    [Teardown]    Tear Down

Edit Personal Details, Create Address and Buy Item on Delivery
    [Setup]    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Personal Detail
    Update Personal Detail Name    AutoTester
    Click Back My Account
    Click Menu Address Book
    Click Add Delivery Address
    Click Residential
    Add Delivery Address My Acc    Tester Residential    0723456778    38 Baxter Way
    Click Home
    Click Search Home
    Search Product    Pencil Case
    Click Product
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
    Verify Card Payment    Card Number
    [Teardown]    Tear Down

Buy Airtime
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    airtime
    Click Product
    Click Airtime
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Continue Airtime
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment    Card Number
    [Teardown]    Tear Down

Buy Airtime along with another Item on Delivery
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    airtime
    Click Product
    Click Airtime
    Click Add To Cart
    Click Continue Shopping
    Click Search Icon
    Search Product    montego
    Click Product
    Click 10 Kg
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Free Delivery
    Click Continue Airtime
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment    Card Number
    [Teardown]    Tear Down

Buy Airtime along with another Item on Collection
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    airtime
    Click Product
    Click Airtime
    Click Add To Cart
    Click Continue Shopping
    Click Search Icon
    Search Product    montego
    Click Product
    Click 10 Kg
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Click Free Delivery
    Click Continue Airtime
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment    Card Number
    [Teardown]    Tear Down

Buy Daily Deals Item and verify no Promotions
    [Setup]    Start Application
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
    Verify Card Payment    Card Number
    [Teardown]    Tear Down

Buy Daily Deals Item and verify Promotions
    [Setup]    Start Application
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
    Verify Card Payment    Card Number
    [Teardown]    Tear Down
