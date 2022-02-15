*** Settings ***
Default Tags      critical01
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***

fi.android.takealot.debug:id/context_menu_button
fi.android.takealot.debug:id/title

	
It is abusive or harmful
fi.android.takealot.debug:id/sticky_action_button
Your report has been submitted


Apps > Reviews > Report Abuse (Logged-in user) - QASA-273
    [Tags]    QASA-273
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Close Application
    Start Application    ${False}
    Click Menu
    Click Menu Register
    Register Takealot    AutoTest    Test    ?    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu Login
    Close Application
    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API

    Login Takealot Only    ${G_EMAIL}    t@ke@!ot1234

    Click PDP Write Review
    Click Review Rating
    Enter Review Message    Auto Test
    Click Review Submit
    Verify Text On Screen    Thank you for your review    ${MIN_TIMEOUT}
    Click Review Submit OK
    Swipe Down    ${windowScroll}
    Swipe Down    ${windowScroll}
    Swipe Down    ${windowScroll}
    Swipe Down    ${windowScroll}
    Click PDP Write Review
    Click Review Rating
    Enter Review Message    Auto Test
    Click Review Submit
    Verify Text On Screen    You've already submitted a review for this product    ${MIN_TIMEOUT}
    Click Back Android
    Click Back iOS    ${query_result_CartProduct}
    Click PDP Show All Reviews
    Click Review Sort
    Click Review Sort Most Helpful
    Click Review Sort
    Click Review Sort Most Recent
    Click Review Helpful By Index    index=1
    Verify Text On Screen    Thank you for your feedback    ${MAX_TIMEOUT}
    Click Review Filter
    Click Review Filter Rating
    Click Review Filter Rating Five
    Click Review Filter Apply
    Verify Element On Screen    ${btnReviewFilter}    ${MIN_TIMEOUT}
    Click Review Icon More
    Click Review Report
    Verify Text On Screen    Your report has been submitted    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Click Menu
    Click Menu Login
    Close Application
    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    jean
    Click Variant Product from API
    Click PDP Write Review
    Verify Element On Screen    ${btnLogin}    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Order Refactor > Order Detail > Collected Order - QASA-352
    [Tags]    QASA-352
    [Setup]    Start Application
    Clear Environment
    ${completedOrderProductId}=    Search And Return Product Id API    pencil
    Create New Order API   ${completedOrderProductId}    1    Credit Card    COURIER    true
    Update Order Delivery DB    ${query_order_id}
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Click Order Delivery
    Verify Text On Screen    ${prod_Title}    ${MIN_TIMEOUT}
    Verify Text On Screen    ORDER SUMMARY    ${MIN_TIMEOUT}
    Verify Text On Screen    1 Item    1s
    Verify Text On Screen    Delivery    1s
    Verify Text On Screen    PAYMENT METHOD    1s
    Swipe Up    ${windowScroll}
    Verify Text On Screen    Credit Card    1s  
    Verify Text On Screen    DELIVERY METHOD    1s
    Verify Text On Screen    Standard Collect    1s
    Verify Text On Screen    Takealot Pickup Point    1s
    Swipe Up    ${windowScroll}
    Verify Text On Screen    Berea Pickup Point    1s
    Verify Text On Screen    Shop 3    1s
    Verify Text On Screen    33 Devereux Avenue    1s
    Verify Text On Screen    Berea    1s
    Verify Text On Screen    East London    1s
    Verify Text On Screen    5241    1s
    [Teardown]    Tear Down

Apps > Order Refactor > Order Detail > Collection Expired Order - QASA-351
    [Tags]    QASA-351
    [Setup]    Start Application
    Clear Environment
    ${completedOrderProductId}=    Search And Return Product Id API    pencil
    Create New Order API   ${completedOrderProductId}    1    Credit Card    COURIER    true
    Update Order Delivery DB    ${query_order_id}
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Click Order Delivery
    Verify Text On Screen    ${prod_Title}    ${MIN_TIMEOUT}
    Verify Text On Screen    ORDER SUMMARY    ${MIN_TIMEOUT}
    Verify Text On Screen    1 Item    1s
    Verify Text On Screen    Delivery    1s
    Verify Text On Screen    PAYMENT METHOD    1s
    Swipe Up    ${windowScroll}
    Verify Text On Screen    Credit Card    1s  
    Verify Text On Screen    DELIVERY METHOD    1s
    Verify Text On Screen    Standard Collect    1s
    Verify Text On Screen    Takealot Pickup Point    1s
    Swipe Up    ${windowScroll}
    Verify Text On Screen    Berea Pickup Point    1s
    Verify Text On Screen    Shop 3    1s
    Verify Text On Screen    33 Devereux Avenue    1s
    Verify Text On Screen    Berea    1s
    Verify Text On Screen    East London    1s
    Verify Text On Screen    5241    1s
    [Teardown]    Tear Down

Returns > Variant item - QASA-868
    [Tags]    QASA-868
    [Setup]    Start Application
    Clear Environment
    ${completedOrderProductId}=    Search And Return Product Id API    fridge
    Create New Order API   ${completedOrderProductId}    1    Credit Card    COURIER    true
    Update Order Delivery DB    ${query_order_id}
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Exchanges And Returns
    Click Returns Call To Action Button
    Click Text    ${query_order_id}
    Click Text    ${prod_Title}
    Click Select Return Reason
    Select Return Reason
    Click Select Return Method
    Select Return Method
    Enter Return Description
    Click Return Continue
    Click Log Return
    Click Return Collect
    Select Return Collect
    Select Return Submit
    Verify Text On Screen    Track Return    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Returns > Heavy Good Item - QASA-869
    [Tags]    QASA-869
    [Setup]    Start Application
    Clear Environment
    ${completedOrderProductId}=    Search And Return Product Id API    sunlight
    Create New Order API   ${completedOrderProductId}    1    Credit Card    COURIER    true
    Update Order Delivery DB    ${query_order_id}
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Exchanges And Returns
    Click Returns Call To Action Button
    Click Text    ${query_order_id}
    Click Text    ${prod_Title}
    Click Select Return Reason
    Select Return Reason
    Click Select Return Method
    Select Return Method
    Enter Return Description
    Click Return Continue
    Click Log Return
    Click Return Collect
    Select Return Collect
    Select Return Submit
    Verify Text On Screen    Track Return    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

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
