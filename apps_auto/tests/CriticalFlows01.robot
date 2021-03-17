*** Settings ***
Default Tags      regression
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Checkout > Payment > Pay with eBucks - QA-5284
    [Setup]    Start Application
    #    Clear Environment
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    #Apps > Checkout > Payment > Pay with eBucks - QA-5283
    #    [Setup]    Start Application
    #    Click Home
    #    Click Search Home
    #    Search Product    pencil
    #    Click Product
    #    Click Add To Cart
    #    Click Go To Cart
    #    Click Checkout
    #    Click Collect
    #    Click Pickup Point
    #    Click Free Delivery
    #    Click Donate No Thanks
    #    Click Change Payment Method
    #    Click eBucks Payment Method
    #    Click Pay With eBucks
    #    Verify Card Payment    Card Number
    #    [Teardown]    Tear Down
