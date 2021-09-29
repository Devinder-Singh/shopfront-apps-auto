*** Settings ***
Default Tags      critical
Resource          ../common/config/defaultConfig.robot

*** Variables ***

*** Test Cases ***

#Register User
#    [Tags]    Master0
#    [Setup]    Start Application
#    Click Menu
#    Click Menu Login
#    Close Application
#    Start Application
#    Click Menu
#    Click Menu Register
#    Register Takealot    AutoTest    Test    ?    t@ke@!ot1234
#    Click Home
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
