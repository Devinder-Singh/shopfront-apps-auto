*** Settings ***
Default Tags      regression
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Checkout > Payment > Mobicred - QA-5295
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Free Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Mobicred Payment Method
    Click Pay With Mobi
    Verify Payment Mobi Text    Please log in to your Mobicred account
    [Teardown]    Tear Down
