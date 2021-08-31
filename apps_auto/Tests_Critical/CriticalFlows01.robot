*** Settings ***
Default Tags      critical
Resource          ../common/config/defaultConfig.robot

*** Variables ***

*** Test Cases ***
Apps > Checkout > Collect > Pickup Points List - QA-5237
    [Tags]    QA-5237
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Filter Province
    Click Gauteng Province
    Verify Pickup Points Gauteng
    Swipe Down    ${windowScroll}
    Swipe Down    ${windowScroll}
    Swipe Down    ${windowScroll}
    Swipe Down    ${windowScroll}
    Click Filter Province
    Click All Available Provinces
    Verify All Pickup Points
#    Verify Pickup Points Gauteng
#    Verify Pickup Point
#    Verify Collect Address Text    LAST USED
    Swipe Down    ${windowScroll}
    Swipe Down    ${windowScroll}
    Swipe Down    ${windowScroll}
    Swipe Down    ${windowScroll}
    Swipe Down    ${windowScroll}
    Click Filter Province
    Click Western Cape Province
    Click Pickup Point Info
    Click Select Pickup Point
    Click Free Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment
    Close Application
    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Click Order Awaiting Payment
    Swipe Up    ${windowScroll}
    Swipe Up    ${windowScroll}
    Verify Order Detail Text    Takealot Cape Town Warehouse Pickup Point
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
