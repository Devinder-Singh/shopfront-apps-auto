*** Settings ***
Default Tags      regression
Resource          ../common/config/defaultConfig.robot

*** Variables ***

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

#Apps > Sponsored Ads (PDP) > Product Card Layout - QA-6496
#    [Tags]    QA-6496
#    [Setup]    Start Application
#    Click Home
#    Click Search Home
#    Search Product    glass
#    Click First Product from API
#    Verify Element On Screen    ${btnAddToCart}    30s
#    Click Seller Name
#    Click Product from API
#    [Teardown]    Tear Down

#Apps > Sponsored Ads (PDP) > Sponsored Ad product rules - QA-6484
#    [Tags]    QA-6484
#    [Setup]    Start Application
#    Click Home
#    Click Search Home
#    Search Product    glass
#    Click First Product from API
#    Verify Element On Screen    ${btnAddToCart}    30s
#    Click Seller Name
#    Click Product from API
#    [Teardown]    Tear Down

#Apps > Cart Update & Cart Notification - Pre-Order / Out Of Stock - QA-5362
#    [Setup]    Start Application
#    Add To Cart Takealot API
#    Remove From Cart Takealot API
#    Login Takealot API    take2Automation+201905213934@gmail.com    t@ke@!ot1234
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
#    Login Takealot API    take2Automation+201905213934@gmail.com    t@ke@!ot1234
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
