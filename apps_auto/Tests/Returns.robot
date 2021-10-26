*** Settings ***
Default Tags    returns
Resource        ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > SS Returns > Returns UI (User without Returns History) > QA-5438
    [Tags]    data    QA-5438
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    t@ke@!ot1234
    Click Menu My Account
    Verify Returns Menu Item
    Click Menu Exchanges And Returns
    Verify Returns Screen header
    Verify Returns Empty State Visible
    Verify Returns Empty State Step Visible    Log a Return    Log a return request and await eligibility confirmation within 24 hours.
    Swipe To Empty State Step 2
    Verify Returns Empty State Step Visible    Select a Delivery Method    Choose between collection from your address or drop-off at a Takealot Pickup Point.
    [Teardown]    Tear Down

Apps > SS Returns > Returns UI (User with Returns History) > QA-9256
    [Tags]    data    master    QA-9256
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    dev+431155@take2.co.za    test
    Click Menu My Account
    Verify Returns Menu Item
    Click Menu Exchanges And Returns
    Verify Returns History Item Visible
    Verify Returns History Item Contains RRN
    Verify Returns History Item Contains Status
    Verify Returns History Item Contains Image
    Click Returns History Item
    Verify Toolbar Title    Returns Tracking
    Click Back Screen
    Verify Toolbar Title    Returns
    Verify Returns Call To Action Title    LOG RETURN
    Scoll To Returns History Policy
    Verify Returns History Policy Title    Learn more about our Return Policy or visit our Help Page.
    [Teardown]    Tear Down

Apps > SS Returns > Request a Return > Select Order > QA-5429
    [Tags]    data    master    QA-5429
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    dev+431155@take2.co.za    test
    Click Menu My Account
    Verify Returns Menu Item
    Click Menu Exchanges And Returns
    Verify Returns Call To Action Title    LOG RETURN
    Click Returns Call To Action Button
    Verify Toolbar Title    Select Order to Return Items
    Verify Returns Order History Filter Option View Visible
    Verify Returns Order History Filter Option Button Title
    Click Returns Order History Filter Option Button
    Verify Toolbar Title    Filter orders placed in:
    Verify Returns Order History Filter Options
    Click Back Screen
    Verify Toolbar Title    Select Order to Return Items
    Verify Returns Order History Item Visible
    Verify Returns Order History Item Title
    Verify Returns Order History Item Subtitle
    Verify Returns Order History Item Image Container
    Click Returns Order History Item
    Verify Toolbar Title    Select Return Item
    Click Back Screen
    Verify Toolbar Title    Select Order to Return Items
    Click Back Screen
    Verify Toolbar Title    Returns
    [Teardown]    Tear Down

Apps > SS Returns > Request a Return > Select Return Item > QA-5430
    [Tags]    data    master    QA-5430
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    dev+431155@take2.co.za    test
    Click Menu My Account
    Verify Returns Menu Item
    Click Menu Exchanges And Returns
    Click Returns Call To Action Button
    Verify Returns Order History Item Visible
    Click Returns Order History Item
    Verify Toolbar Title    Select Return Item
    Verify Returns Order Detail Returnable Section
    Verify Returns Order Detail Non-Returnable Section
    Verify Returns Order Detail Item Image
    Verify Returns Order Detail Item Title
    Verify Returns Order Detail Item Price And Qty
    Verify Returns Order Detail Item Warranty Title
    Verify Returns Order Detail Item Warranty Subtitle
    Click Returns Order Detail Item Warranty Title
    Verify Returns Order Detail Item Warranty Dialog Title
    Verify Returns Order Detail Item Warranty Dialog Message
    Verify Returns Order Detail Item Warranty Dialog Button
    Close Returns Order Detail Item Warranty Dialog
    Click Returns Order Detail Returnable Item
    Verify Toolbar Title    Return Reason
    Click Back Screen
    Verify Toolbar Title    Select Return Item
    Scroll To First Non Returnable Reason
    Click Returns Order Detail Non Returnable Item
    Verify Toolbar Title    Select Return Item
    Click Back Screen
    Verify Toolbar Title    Select Order to Return Items
    [Teardown]    Tear Down

Apps > SS Returns > Return Reason > Form Validation > QA-8339 > Steps 1,2 and 3
    [Tags]    data    QA-8339_Steps_1_2_3
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    dev+431155@take2.co.za    test
    Click Menu My Account
    Verify Returns Menu Item
    Click Menu Exchanges And Returns
    Click Returns Call To Action Button
    Verify Returns Order History Item Visible
    Click Returns Order History Item
    Click Returns Order Detail Returnable Item
    Verify Toolbar Title    Return Reason
    Click Returns Call To Action Button
    Verify Return Reason Reason Selector Visible
    Verify Return Reason Reason Selector Error Message
    Click Return Reason Reason Selector
    Verify Toolbar Title    Reason for Return
    Click Return Reason Reason Non-Exchange Item
    Verify Toolbar Title    Return Reason
    Click Returns Call To Action Button
    Scroll To Return Reason Text Area
    Verify Return Reason Text Area Error Message
    Click Returns Call To Action Button
    Verify Return Reason Preferred Outcome Visible
    Verify Return Reason Preferred Outcome Error Message
    [Teardown]    Tear Down

Apps > SS Returns > Return Reason > Form Validation > QA-8339 > Step 4
    [Tags]    data    QA-8339_Step_4
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    dev+431155@take2.co.za    test
    Click Menu My Account
    Verify Returns Menu Item
    Click Menu Exchanges And Returns
    Click Returns Call To Action Button
    Verify Returns Order History Item Visible
    Click Returns Order History Item With Multiple Quantity
    Scroll To Returns Order Detail Item With Multiple Quantity
    Click Returns Order Detail Item With Multiple Quantity
    Verify Toolbar Title    Return Reason
    Click Returns Call To Action Button
    Verify Returns Reason Quantity Visible
    Verify Returns Reason Quantity Error Message
    [Teardown]    Tear Down

Apps > SS Returns > Return Reason > Form Validation > QA-8339 > Step 5
    [Tags]    data    QA-8339_Step_5
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    dev+7165882@take2.co.za    test
    Click Menu My Account
    Verify Returns Menu Item
    Click Menu Exchanges And Returns
    Click Returns Call To Action Button
    Verify Returns Order History Item Visible
    Scroll To Returns Order History Item With Variant Size
    Click Returns Order History Item With Variant Size
    Scroll To Returns Order Detail Item With Variant Size
    Click Returns Order Detail Item With Variant Size
    Click Return Reason Reason Selector
    Click Returns Reason Reason Item Exchange
    Click Returns Call To Action Button
    Scroll To Returns Reason Variant Size Error Message
    Verify Returns Reason Variant Size Error Message
    [Teardown]    Tear Down

Apps > SS Returns > Return Reason > Form Validation > QA-8339 > Step 6
    [Tags]    data    QA-8339_Step_6
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    dev+3741820@take2.co.za    test
    Click Menu My Account
    Verify Returns Menu Item
    Click Menu Exchanges And Returns
    Click Returns Call To Action Button
    Verify Returns Order History Item Visible
    Scroll To Returns Order History Item With Variant Colour
    Click Returns Order History Item With Variant Colour
    Scroll To Returns Order Detail Item With Variant Colour
    Click Returns Order Detail Item With Variant Colour
    Click Return Reason Reason Selector
    Click Returns Reason Reason Item Exchange
    Click Returns Call To Action Button
    Scroll To Returns Reason Variant Colour Error Message
    Verify Returns Reason Variant Colour Error Message
    [Teardown]    Tear Down

Apps > SS Returns > Request a Return > Log Return Request > QA-5432
    [Tags]    data    QA-5432
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    dev+431155@take2.co.za    test
    Click Menu My Account
    Verify Returns Menu Item
    Click Menu Exchanges And Returns
    Click Returns Call To Action Button
    Click Returns Order History Item
    Click Returns Order Detail Returnable Item
    Click Return Reason Reason Selector
    Click Return Reason Reason Non-Exchange Item
    Scroll To Return Reason Preferred Outcome Selector
    Click Return Reason Preferred Outcome Selector
    Click Return Reason Preferred Outcome Item
    Scroll To Return Reason Text Area
    Input Return Reason Text Area Text    Test Description
    Click Returns Call To Action Button
    Verify Toolbar Title    Log Return Request
    Verify Returns Request Cart Header
    Verify Returns Request Item Image
    Verify Returns Request Item Title    Stealth Gaming Headset & Stand Bundle - Referee Edition
    Verify Returns Request Item Price And Qty
    Verify Returns Request Item Reason Title
    Verify Returns Request Item Preferred Outcome Title
    Swipe Returns Request Item For Delete
    Verify Returns Request Dialog    Remove Item    Remove item from return request?    KEEP    REMOVE
    Click Returns Request Delete Dialog Keep Option
    Verify Returns Request Item Title    Stealth Gaming Headset & Stand Bundle - Referee Edition
    Click Returns Request Cart Item
    Verify Toolbar Title    Return Reason
    Verify Return Reason Toolbar Delete Icon
    Click Return Reason Toolbar Delete Icon
    Verify Return Reason Dialog    Remove Item    Remove item from return request?    KEEP    REMOVE
    Click Return Reason Delete Dialog Keep Option
    Verify Returns Call To Action Title    SAVE
    [Teardown]    Tear Down

Apps > SS Returns > Request a Return > Log Return Request > QASA-257
    [Tags]    data    QASA-257
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    dev+431155@take2.co.za    test
    Click Menu My Account
    Verify Returns Menu Item
    Click Menu Exchanges And Returns
    Add Two Return Items to Return Request
    Click Returns Call To Action Button
    Verify Toolbar Title    Select Return Method
    Click Return Select Return Method Address
    Verify Toolbar Title    Select Address
    Click Return Select Address Item
    Verify Toolbar Title    Log Return Request
    Verify Return Request Loading State Not Visible
    Scroll To Return Request Return Method Section
    Scroll To Return Request Delivery Method Selector
    Verify Return Request Delivery Method Selector    Takealot to collect from my address
    Scroll To Return Request Delivery Method Address
    Verify Return Request Delivery Method Address Title
    Scroll To Return Request Contact Detail Section
    Verify Return Request Contact Details Section
    Scroll To Return Request Cart Item
    Swipe Returns Request Item For Delete
    Click Returns Request Delete Dialog Remove Option
    Verify Return Request Loading State Not Visible
    Scroll To Return Request Cart Item
    Swipe Returns Request Item For Delete
    Click Returns Request Delete Dialog Remove Option
    Verify Return Request Empty State
    Click Return Request Empty State Call To Action
    Verify Toolbar Title    Select Order to Return Items
    [Teardown]    Tear Down

Apps > SS Returns > Log Return Request > Collect > QA-5436
    [Tags]    data    QA-5436
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    dev+1@take2.co.za    test
    Click Menu My Account
    Verify Returns Menu Item
    Click Menu Exchanges And Returns
    Add Single Return Item To Return Request
    Click Returns Call To Action Button
    Verify Toolbar Title    Select Return Method
    Click Return Select Return Method Address
    Verify Toolbar Title    Select Address
    Click Return Select Address Item
    Verify Toolbar Title    Log Return Request
    Verify Return Request Loading State Not Visible
    Scroll To Return Request Delivery Method Selector
    Verify Return Request Delivery Method Selector    Takealot to collect from my address
    Click Return Request Delivery Method Selector
    Verify Toolbar Title    Select Return Method
    Click Return Select Return Method Address
    Verify Toolbar Title    Select Address
    Click Return Select Address Item
    Verify Toolbar Title    Log Return Request
    Scroll To Return Request Delivery Method Address
    Verify Return Request Delivery Method Address Title
    Verify Return Request Delivery Method Address Type Pill
    Verify Return Request Delivery Method Address Recipient Name
    Verify Return Request Delivery Method Address Detail
    Scroll To Return Request Contact Detail Section
    Verify Return Request Contact Details Section
    Click Return Request Contact Details Selector
    Verify Toolbar Title    Contact Details
    Click Back Screen
    Verify Toolbar Title    Log Return Request
    Verify Return Request Loading State Not Visible
    Verify Returns Call To Action Title    SUBMIT RETURN REQUEST
    # Click Returns Call To Action Button
    # Verify Return Request Loading State Not Visible
    # Verify Toolbar Title    Return Request Submitted
    [Teardown]    Tear Down

Apps > SS Returns > Log Return Request > Drop-off > QA-5435
    [Tags]    data    QA-5436
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    dev+1@take2.co.za    test
    Click Menu My Account
    Verify Returns Menu Item
    Click Menu Exchanges And Returns
    Add Single Return Item To Return Request
    Click Returns Call To Action Button
    Verify Toolbar Title    Select Return Method
    Verify Return Select Delivery Method Pickup Point Option
    Verify Return Select Delivery Method Collect Option
    Click Return Select Delivery Method Pickup Point Option
    Verify Return Select Delivery Method Pickup Point Item Title
    Verify Return Select Delivery Method Pickup Point Item Subtitle
    Verify Return Select Delivery Method Pickup Point Item Info Button
    Click Return Select Delivery Method Pickup Point Item
    Verify Toolbar Title    Log Return Request
    Verify Return Request Loading State Not Visible
    Scroll To Return Request Delivery Method Selector
    Verify Return Request Delivery Method Selector    I will return the items to a Takealot Pickup Point
    Click Return Request Delivery Method Selector
    Verify Toolbar Title    Select Return Method
    Click Return Select Delivery Method Pickup Point Option
    Click Return Select Delivery Method Pickup Point Item
    Verify Toolbar Title    Log Return Request
    Verify Return Request Loading State Not Visible
    Verify Returns Request Cart Header
    Scroll To Return Request Return Method Section
    Verify Return Request Return Method Header
    Scroll To Return Request Delivery Method Selector
    Verify Return Request Delivery Method Selector    I will return the items to a Takealot Pickup Point
    [Teardown]    Tear Down