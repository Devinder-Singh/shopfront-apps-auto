*** Settings ***
Default Tags      checkout_reg
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Checkout > Payment > Mobicred - QASA-555
    [Tags]    QASA-555
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Any Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Mobicred Payment Method
    Click Pay With Mobi
    Verify Text On Screen    Mobicred Username    ${MAX_TIMEOUT}
    Verify Text On Screen    Mobicred Password
    [Teardown]    Tear Down

Apps > Checkout > Payment > Pay with eBucks - QASA-538
    [Tags]    QASA-538
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product From API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Click Any Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click eBucks Payment Method
    Click Pay With eBucks
    Fill In EBucks Credentials
    Click EBucks Balance
    Fill In EBucks Amount Form
    Fill In EBUcks OTP Form
    Verify Payment EBucks Text    Invalid OTP
    [Teardown]    Tear Down
