*** Settings ***
Default Tags      critical01
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
#Create Paid Order
#    [Tags]    Returns Data
#    [Setup]    Start Application
#    Clear Environment
#    Click Menu
#    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
#    Click Home
#    Click Search Home
#    Search Product    Pencil
#    Click Product from API
#    Click Add To Cart
#    Click Go To Cart
#    Click Checkout
#    Click Delivery
#    Click Address
#    Click Any Delivery
#    Click Donate No Thanks
#    Click Change Payment Method
#    Click Payfast Payment Method
#    Click Pay With Payfast
#    Verify Payfast Payment Text    Instant EFT
#    Click Complete Payment With Payfast
#    Click Track Order
#    Verify Text On Screen    PAID
#    [Teardown]    Tear Down

#Apps > PDP - QASA-168
#    [Tags]    QASA-168
#    [Setup]    Start Application
#    Click Menu
#    Click Menu Login
#    Close Application
#    Start Application    ${False}
#    Click Menu
#    Click Menu Register
#    Register Takealot    AutoTest    Test    ?    t@ke@!ot1234
#    Click Home
#    Click Search Home
#    Search Product    jean
#    Click Variant Product from API
#    Click PDP Write Review
#    Click Review Rating
#    Enter Review Message    Auto Test
#    Click Review Submit
#    Verify Text On Screen    Thank you for your review    ${MIN_TIMEOUT}
#    Click Review Submit OK
#    Swipe Down    ${windowScroll}
#    Swipe Down    ${windowScroll}
#    Swipe Down    ${windowScroll}
#    Swipe Down    ${windowScroll}
#    Click PDP Write Review
#    Click Review Rating
#    Enter Review Message    Auto Test
#    Click Review Submit
#    Verify Text On Screen    You've already submitted a review for this product    ${MIN_TIMEOUT}
#    Click Back Android
#    Click Back iOS    ${query_result_CartProduct}
#    Click PDP Show All Reviews
#    Click Review Sort
#    Click Review Sort Most Helpful
#    Click Review Sort
#    Click Review Sort Most Recent
#    Click Review Helpful
#    Verify Text On Screen    Thank you for your feedback    10s
#    Click Review Filter
#    Click Review Filter Rating
#    Click Review Filter Rating Five
#    Click Review Filter Done
#    Click Review Filter Apply
#    Verify Element On Screen    ${btnReviewFilter}    15s
#    Click Review Icon More
#    Click Review Report
#    Verify Text On Screen    Your report has been submitted    15s
#    Close Application
#    Start Application
#    Click Menu
#    Click Menu Login
#    Close Application
#    Start Application    ${False}
#    Click Home
#    Click Search Home
#    Search Product    jean
#    Click Variant Product from API
#    Click PDP Write Review
#    Verify Element On Screen    ${btnLogin}    15s
#    [Teardown]    Tear Down
