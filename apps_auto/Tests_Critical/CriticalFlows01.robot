*** Settings ***
Default Tags      critical01
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
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
