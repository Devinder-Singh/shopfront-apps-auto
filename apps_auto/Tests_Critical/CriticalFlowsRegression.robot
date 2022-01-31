*** Settings ***
Default Tags      checkout_reg
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Checkout > Delivery Options > General Test Case 06 - QASA-100
    [Tags]    QASA-100
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Continue Shopping
    Click Search Icon
    Search Product    Television
    Click Product from API
    Click Add To Cart
    Click Continue Shopping
    Click Search Icon
    Search Product    Fridge
    Click Product from API
    Click Add To Cart
    Click Continue Shopping
    Click Search Icon
    Search Product    toy
    Click Product from API
    Click Add To Cart
    Click Continue Shopping
    Click Search Icon
    Search Product    glass
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Click Any Delivery
    Click +2 Show Details
    Verify Delivery Options Text    Items for Collection
    Verify Delivery Options Text    Qty: 1
    Verify Delivery Options Thimbnail Images
    [Teardown]    Tear Down

Apps > Checkout > Delivery Options > Add Gift Recipient - QASA-298
    [Tags]    QASA-298
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    Gift Vouch
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Verify Continue Digital Item Text    Delivery via email to
    Verify Continue Digital Item Text    take2Automation+201905213934@gmail.com
    Click Change Digital Item Recepient
    Enter Gift Message    Automation Test
    Click Gift Message Save Button
    [Teardown]    Tear Down

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
    Verify Text On Screen    Mobicred Password    ${MAX_TIMEOUT}
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
