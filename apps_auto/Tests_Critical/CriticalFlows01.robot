*** Settings ***
Default Tags      critical01
Resource          ../common/config/defaultConfig.robot

*** Variables ***

*** Test Cases ***
Apps > Cart > Product Card Actions > Update Quantity - QASA-3
    [Tags]    QASA-3
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click In Stock Product from API
#    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Change Cart Quantity Android    10
    Verify Text On Screen    You've attempted to order more stock than currently available at our warehouse    ${MIN_TIMEOUT}
    Verify Text On Screen    The products will need to be ordered from our supplier. If you'd rather not wait for the extra stock to arrive from the supplier, please update the quantity accordingly    1s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Leadtime Product from API
    Click Add To Cart
    Click Go To Cart
    Change Cart Quantity Android    10
    Verify Text On Screen    You asked for 10 but we only have    ${MIN_TIMEOUT}
    Verify Text On Screen    available    1s
    [Teardown]    Tear Down

#Apps > Cart Update & Cart Notification - Pre-Order / Out Of Stock - QASA-471
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
