*** Settings ***
Default Tags      critical
Resource          ../common/config/defaultConfig.robot

*** Variables ***

*** Test Cases ***
Search and Buy Item on Delivery using Payfast and Create new Address
    [Tags]    Production2
    [Setup]    Start Application
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    [Teardown]    Tear Down

#Apps > Wishlist > PDP Add to List > Add to List(More than one list) - QA-8939
#    [Tags]    QA-8939
#    [Setup]    Start Application
#    Click Home
#    Click Search Home
#    Search Product    jean
#    Click Variant Product from API
#    Click Product Variant From API
#    Verify Element On Screen    ${btnAddToCart}    30s
#    Close Application
#    Start Application
#    Click Home
#    Click Search Home
#    Search Product    jean
#    Click Variant Product from API
#    Click Product Disabled Variant From API
#    Verify Text On Screen    Add to List    30s
#    Close Application
#    Start Application
#    Click Home
#    Click Search Home
#   Search Product    pencil
#    Click Product from API
#    Verify Element On Screen    ${btnAddToCart}    30s
#    Verify Element On Screen    ${btnAddWishlist}    30s
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
