*** Settings ***
Default Tags      regression
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Buy Daily Deals Item and verify Promotions
    [Setup]    Start Application
    Click Menu
    Click Menu Daily Deals
    Click Product Daily Deals
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
    Verify Card Payment    Card Number
    [Teardown]    Tear Down
