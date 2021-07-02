*** Settings ***
Default Tags      regression
Resource          ../common/config/defaultConfig.robot

*** Variables ***

*** Test Cases ***
Apps > My Account > Address Book > Edit Address > Street Corrections (Business) - QA-9735
    [Tags]    QA-9735
    [Setup]    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Add Delivery Address
    Click Address Business
    Add Delivery Address Business My Acc No Name    ""    ""    ""
    Verify Add Address Text    Please enter the recipient's name
    Verify Add Address Text    Please enter a 10-digit SA phone number without country code, spaces, or special characters
    Verify Add Address Text    Please enter the street address
    Verify Add Address Text    Please enter a business name
    Verify Add Address Text    Please enter the suburb
    Verify Add Address Text    Please enter the city
    Verify Add Address Text    Please select a province
    Verify Add Address Text    Please enter a postal code
    Close Application
    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Add Delivery Address
    Click Address Business
    Add Delivery Address Business My Acc No Name    Tester Residential    0723456778    13 Caro Road
    Verify Text On Screen Android    Please enter a business name    5s
    Verify Text On Screen iOS    Please enter a business name    5s
    Edit Delivery Address Business My Acc    ABC
    Verify Text On Screen Android    Add Delivery Address    30s
    Verify Text On Screen Android    Tester Residential    1s
    Verify Text On Screen Android    BUSINESS    1s
    Verify Text On Screen Android    ABC, 13 Caro Road, Robertsham, Johannesburg South, Gauteng, 2091    1s
    Verify Text On Screen Android    0723456778    1s
    Verify Text On Screen iOS    Add Delivery Address    30s
    Verify Text On Screen iOS    Tester Residential    1s
    Verify Text On Screen iOS    BUSINESS    1s
    Verify Text On Screen iOS    ABC, 13 Caro Road, Robertsham, Johannesburg South, Gauteng, 2091    1s
    Verify Text On Screen iOS    0723456778    1s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Verify Text On Screen Android    ABC, 13 Caro Road, Robertsham, Johannesburg South, Gauteng, 2091    30s
    Verify Text On Screen Android    0723456778    1s
    Verify Text On Screen iOS    ABC, 13 Caro Road, Robertsham, Johannesburg South, Gauteng, 2091    30s
    Verify Text On Screen iOS    0723456778    1s
    [Teardown]    Tear Down

#Apps > PDP > Variants > Sold out - QA-9593
#    [Tags]    data    QA-9593
#    [Setup]    Start Application    ${False}
#    Clear Environment
#    Click Home
#    Click Search Home
#    Search Product    jean
#    Click Variant Product from API
#    Verify Text On Screen Android    Select a size    30s
#    Verify Text On Screen iOS    Select a size    30s
#    Swipe Up    ${windowScroll}
#    Verify Product Variant Size From API
#    Click Product Variant From API
#    Click Add To Cart
#    Verify Text On Screen Android    Item Added To Cart    30s
#    Verify Text On Screen iOS    Item added to Cart    30s
#    [Teardown]    Tear Down

#Cart Update & Cart Notification - Heavy Good - QA-8421
#    [Tags]    QA-8421
#    [Setup]    Start Application
#    Clear Environment
#    Click Home
#    Click Search Home
#    Search Product    johnny
#    Click Product from API
#    Click Add To Cart
#    Click Go To Cart
#    Click Checkout
#    Click Select Age
#    Click Verify Age
#    [Teardown]    Tear Down

#Apps > Search Listings > Set Bundle Deals (One active) - QA-8758
#    Install Application
#    [Setup]    Start Application
#    [Teardown]    Tear Down

#Apps > Cart Update & Cart Notification - Pre-Order / Out Of Stock - QA-5362
#    [Setup]    Start Application
#    Add To Cart Takealot API
#    Remove From Cart Takealot API
##    Login Takealot API    take2Automation+201905213934@gmail.com    t@ke@!ot1234
#    Clear Environment
#    Click Home
#    Click Search Home
#    Search Product    Pencil
#    Click Product from API
#    Click Add To Cart
#    Click Go To Cart
#    Click Checkout
#    Click Delivery
#    Click Address
#    Click Free Delivery
#    Click Donate No Thanks
#    Click Change Payment Method
#    Click Card Payment Method
##    Login Takealot API    take2Automation+201905213934@gmail.com    t@ke@!ot1234
#    Add To Cart Takealot API
#    Click Pay With Credit Card
#    Click Cart Update Continue Checkout
#    Click Change Payment Method
#    Click Card Payment Method
#    Remove From Cart Takealot API
#    Click Pay With Credit Card
#    Click Cart Update Continue Checkout
#    Click Change Payment Method
#    [Teardown]    Tear Down

#Apps > Cart Update & Cart Notification - Liquor - QA-8419
#    [Setup]    Start Application
#    Clear Environment
#    Click Home
#    Click Search Home
#    Search Product    Pencil
#    Click Product from API
#    Click Add To Cart
#    Click Go To Cart
#    Click Checkout
#    Click Collect
#    Click Pickup Point
#    Click Free Delivery
#    Click Donate No Thanks
#    Click Change Payment Method
#    Click Card Payment Method
##    Login Takealot API    take2Automation+201905213934@gmail.com    t@ke@!ot1234
#    Add Liquor To Cart Takealot API
#    Click Pay With Credit Card
#    Click Cart Update Continue Checkout
#    Click Verify Age
#    [Teardown]    Tear Down

#Apps > Cart Update & Cart Notification - Heavy Good - QA-8420
#    [Setup]    Start Application
#    Clear Environment
#    Click Home
#    Click Search Home
#    Search Product    Pencil
#    Click Product from API
#    Click Add To Cart
#    Click Go To Cart
#    Click Checkout
#    Click Delivery
#    Click Address
#    Click Free Delivery
#    Click Donate No Thanks
#    Click Change Payment Method
#    Click Card Payment Method
##    Login Takealot API    take2Automation+201905213934@gmail.com    t@ke@!ot1234
#    Add TV To Cart Takealot API
#    Click Pay With Credit Card
#    Click Cart Update Continue Checkout
#    Click Domestic TV Licence
#    [Teardown]    Tear Down

#Apps > Cart Update & Cart Notification - TV - QA-8421
#    [Setup]    Start Application
#    Clear Environment
#    Click Home
#    Click Search Home
#    Search Product    Pencil
#    Click Product from API
#    Click Add To Cart
#    Click Go To Cart
#    Click Checkout
#    Click Collect
#    Click Pickup Point
#    Click Free Delivery
#    Click Donate No Thanks
#    Click Change Payment Method
#    Click Card Payment Method
##    Login Takealot API    take2Automation+201905213934@gmail.com    t@ke@!ot1234
#    Add Heavy Item To Cart Takealot API
#    Click Pay With Credit Card
#    Click Cart Update Continue Checkout
#    Click Delivery
#    Click Address
#    Click Surcharge Delivery
#    [Teardown]    Tear Down
