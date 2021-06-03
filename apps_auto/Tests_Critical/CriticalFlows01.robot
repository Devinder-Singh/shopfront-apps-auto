*** Settings ***
Default Tags      regression
Resource          ../common/config/defaultConfig.robot

*** Variables ***

*** Test Cases ***
Apps > Search Listings > Stock > Pre-Order - QA-8771
    [Tags]    data
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    ebook
    Verify Text On Screen    Available Now    30s
    [Teardown]    Tear Down

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
