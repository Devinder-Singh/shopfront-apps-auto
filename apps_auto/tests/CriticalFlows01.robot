*** Settings ***
Default Tags      regression
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Checkout > Collect > Delivery Options (Collect Options) - QA-
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    zagg slim book
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Verify Delivery Options Text    Standard Collect
    Verify Delivery Options Text    Why the wait?
    Click Free Delivery
    Click Donate No Thanks
    Verify Payment Text    ORDER REVIEW
    Verify Payment Text    Delivery Method
    Verify Payment Text    Pickup Point
    Click Change Payment Pickup Point
    Click Pickup Point
    Click Free Delivery
    Click Change Payment Delivery Method
    Click Collect
    [Teardown]    Tear Down
