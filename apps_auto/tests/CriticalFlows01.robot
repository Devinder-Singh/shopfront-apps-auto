*** Settings ***
Default Tags      regression
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Checkout > Payment > Earn eBucks - QA-5203
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    pencil case
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Click Free Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Select Earn eBucks
    Enter eBucks ID Number    8201095098089
    Click Earn eBucks
    Verify Payment Text    eBucks details Successfully captured
    Click Change Payment Method
    Click eBucks Payment Method
    Click eBucks Payment Info
    Verify Payment Options Text No Wait    eBucks is not available for this order
    Click Card Payment Method
    Select Earn eBucks
    Click eBucks Delete
    Click eBucks Cancel
    Click Change Payment Method
    Click eBucks Payment Method
    [Teardown]    Tear Down
