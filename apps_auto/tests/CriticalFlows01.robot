*** Settings ***
Default Tags      regression
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Checkout > Order Review - QA-5230
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    airtime
    Click Product
    Click Airtime
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Continue Airtime
    Click Donate No Thanks
    Verify Payment Text    ORDER REVIEW
    Verify Payment Text    Sent upon payment DIGITAL ITEMS
    Click Payment Show Details
    Verify Payment Text    Sent upon payment
    Verify Payment Text    DIGITAL ITEMS
    Verify Payment Text    Delivery via email to take2Automation+201905211152@gmail.com
    Verify Payment Text    Vodacom Mobile Airtime Voucher - R10
    Verify Payment Text    R  10
    Verify Payment Text    Qty: 1
    Click Payment Cancel
    [Teardown]    Tear Down
