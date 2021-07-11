*** Settings ***
Default Tags      regression
Resource          ../common/config/defaultConfig.robot

*** Variables ***

*** Test Cases ***
Apps > PDP > Policy list > Warranty Types > Non-Returnable - QA-2019
    [Tags]    QA-2019
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Airtim
    Click Variant Product from API
    Verify Element On Screen    ${btnPDPSelectOption}    30s
    Swipe Up    ${windowScroll}
    Verify Text On Screen Android    Non-Returnable    30s
    Verify Text On Screen iOS    Non-Returnable    30s
    Click Search Icon
    Search Product    Vouche
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    30s
    Swipe Up    ${windowScroll}
    Verify Text On Screen Android    Non-Returnable    30s
    Verify Text On Screen iOS    Non-Returnable    30s
    Click Search Icon
    Search Product    johny wal
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    30s
    Swipe Up    ${windowScroll}
    Click Non Refundable
    Verify Text On Screen Android    No warranty at all, except for delivery damages (if applicable). Digital products will be supported, but no refunds possible    5s
    Verify Text On Screen iOS    No warranty at all, except for delivery damages (if applicable). Digital products will be supported, but no refunds possible    5s
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
