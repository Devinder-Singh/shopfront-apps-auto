*** Settings ***
Default Tags      regression
Resource          ../common/config/defaultConfig.robot

*** Variables ***

*** Test Cases ***

#Apps > Search: Autocomplete > Recent Searches(New User) - QA-5155
#    [Tags]    QA-5155
#    [Setup]    Start Application
#    Click Home
#    Click Search Home
#    Search Product    Pencil
#    Verify Element On Screen    ${btnProductSearchFilter}    30s
#    Click Search Icon
#    Verify Element On Screen    ${btnSearchClearAll}    10s
#    Verify Text On Screen    Recent Search    2s
#    Verify Text On Screen    Trending    2s
#
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
