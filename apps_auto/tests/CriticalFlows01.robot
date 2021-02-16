*** Settings ***
Default Tags      regression
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps - Checkout - Delivery Methods - QA-5227
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    take2Automation+201905211152@gmail.com    t@ke@!ot1234
    Verify Logged In    AutoTest
    Click Home
    Click Search Home
    Search Product    Pencil Case
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Verify Delivery Text    Courier delivery to your door
    Verify Delivery Text    50+ Takealot Pickup Points nationwide. Open 6 days a week
    [Teardown]    Tear Down
