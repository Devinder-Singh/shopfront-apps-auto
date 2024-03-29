*** Settings ***
Default Tags    returns
Resource        ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > SS Returns > Returns UI (User without Returns History) > QA-5438
    [Tags]    QA-5438
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Verify Returns Menu Item
    Click Menu Exchanges And Returns
    Verify Returns Screen header    Returns
    Verify Returns Empty State Visible
    Verify Returns Empty State Step Visible    Log a Return    Log a return request and await eligibility confirmation within 24 hours.
    Swipe To Empty State Step 2
    Verify Returns Empty State Step Visible    Select a Delivery Method    Choose between collection from your address or drop-off at a Takealot Pickup Point.
    [Teardown]    Tear Down

Apps > SS Returns > Returns UI (User with Returns History) > QA-9256
    [Tags]    QA-9256
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
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
    Verify Returns Log Return Title
    Scoll To Returns History Policy
    Verify Returns History Policy Title    Learn more about our Return Policy or visit our Help Page.
    [Teardown]    Tear Down

Apps > SS Returns > Request a Return > Select Order > QA-5429
    [Tags]    QA-5429
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Verify Returns Menu Item
    Click Menu Exchanges And Returns
    Run Keyword If     '${PLATFORM_NAME}'=='android'    Verify Returns Call To Action Title    LOG RETURN
    Run Keyword If     '${PLATFORM_NAME}'=='ios'       Verify Returns Call To Action Title    Log Return
    Click Returns Call To Action Button
    Verify Returns Toolbar Title
    Run Keyword If     '${PLATFORM_NAME}'=='android'    Verify Returns Order History Filter Option View Visible
    Verify Returns Order History Filter Option Button Title
    Click Returns Order History Filter Option Button
    Verify Returns Screen header    Filter orders placed in:
    Verify Returns Order History Filter Options
    Click Returns Close
    Verify Returns Toolbar Title
    Verify Returns Order History Item Visible
    Verify Returns Order History Item Title
    Verify Returns Order History Item Subtitle
    Run Keyword If     '${PLATFORM_NAME}'=='android'    Verify Returns Order History Item Image Container
    Click Returns Order History Item
    Verify Returns Screen header    Select Return Item
    Click Returns Back
    Run Keyword If     '${PLATFORM_NAME}'=='android'    Verify Toolbar Title    Select Order to Return Items
    Click Returns Close
    Verify Returns Screen header    Returns
    [Teardown]    Tear Down

Apps > SS Returns > Request a Return > Select Return Item > QA-5430
    [Tags]    QA-5430
    [Setup]    Start Application    ${False}     # note we are using this as a workaround until https://takealotgroup.atlassian.net/browse/MAQ-852 is complete
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Verify Returns Menu Item
    Click Menu Exchanges And Returns
    Click Returns Call To Action Button
    Verify Returns Order History Item Visible
    Click Returns Order History Item
    Verify Returns Screen header    Select Return Item
    Verify Returns Order Detail Returnable Section
    Verify Returns Order Detail Non-Returnable Section
    Verify Returns Order Detail Item Image
    Verify Returns Order Detail Item Title
    Verify Returns Order Detail Item Price And Qty
    Verify Returns Order Detail Item Warranty Title
    Verify Returns Order Detail Item Warranty Subtitle
    Click Returns Order Detail Item Warranty Title
    #note on iOS the Alert does not show the accessibility id it was given, xpath and other methods are to fragile in this case, thus scanning screen for text was used
    Verify Returns Order Detail Item Warranty Dialog Title
    Verify Returns Order Detail Item Warranty Dialog Message
    Verify Returns Order Detail Item Warranty Dialog Button
    Close Returns Order Detail Item Warranty Dialog
    Click Returns Order Detail Returnable Item
    Verify Returns Screen header    Return Reason
    Click Returns Back
    Verify Returns Screen header    Select Return Item
    Scroll To First Non Returnable Reason
    Click Returns Order Detail Non Returnable Item
    Verify Returns Screen header    Select Return Item
    Click Returns Back
    # note android returns has its toolbar title change when iOS does not, so in cases where the app behaviour is not the same I think it is fine to use "if android"
    Run Keyword If     '${PLATFORM_NAME}'=='android'        Verify Returns Screen header    Select Order to Return Items
    [Teardown]    Tear Down

Apps > SS Returns > Return Reason > Form Validation > QA-8339 > Steps 1,2 and 3
    [Tags]    QA-8339
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Verify Returns Menu Item
    Click Menu Exchanges And Returns
    Click Returns Call To Action Button
    Verify Returns Order History Item Visible
    Click Returns Order History Item
    Click Returns Order Detail Returnable Item
    Verify Returns Screen header     Return Reason
    Click Returns Call To Action Button
    Verify Return Reason Reason Selector Visible
    Verify Return Reason Reason Selector Error Message
    Click Return Reason Reason Selector
    Verify Reason For Return Title    Reason for Return
    Click Return Reason Reason Non-Exchange Item
    Verify Returns Screen header    Return Reason
    Click Returns Call To Action Button
    Scroll To Return Reason Text Area
    Verify Return Reason Text Area Error Message
    Click Returns Call To Action Button
    Verify Return Reason Preferred Outcome Visible
    Verify Return Reason Preferred Outcome Error Message
    [Teardown]    Tear Down

Apps > SS Returns > Return Reason > Form Validation > QA-8339 > Step 4
    [Tags]    QA-8339
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Verify Returns Menu Item
    Click Menu Exchanges And Returns
    Click Returns Call To Action Button
    Verify Returns Order History Item Visible
    Click Returns Order History Item With Multiple Quantity
    Scroll To Returns Order Detail Item With Multiple Quantity
    Click Returns Order Detail Item With Multiple Quantity
    Verify Returns Screen header    Return Reason
    Click Returns Call To Action Button
    Verify Returns Reason Quantity Visible
    Verify Returns Reason Quantity Error Message
    [Teardown]    Tear Down

Apps > SS Returns > Return Reason > Form Validation > QA-8339 > Step 5
    # This has dynamic data 
    [Tags]    QA-8339
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
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
    # This has dynamic data  
    [Tags]    QA-8339
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
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

Apps > SS Returns > Request a Return > Log Return Request > QASA-78
    [Tags]    QASA-78
    [Setup]    Start Application    ${False}
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Verify Returns Menu Item
    Click Menu Exchanges And Returns
    Sleep    1
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
    Verify Returns Screen header    Log Return Request
    Verify Returns Request Cart Header
    Verify Returns Request Item Image
    Verify Returns Request Item Title    The Ugly Five
    Verify Returns Request Item Price And Qty
    Verify Returns Request Item Reason Title
    Verify Returns Request Item Preferred Outcome Title
    Swipe Returns Request Item Left Partially By Index    1
    Tap Delete Button
    Verify Returns Request Delete Dialog
    Click Returns Request Delete Dialog Keep Option
    Verify Returns Request Item Title    The Ugly Five
    Click Returns Request Cart Item
    Verify Returns Screen header    Return Reason
    Verify Return Reason Toolbar Delete Icon
    Click Return Reason Toolbar Delete Icon
    Verify Edit Return Deletion Dialogue
    Click Return Reason Delete Dialog Keep Option
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Returns Call To Action Title    SAVE
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Returns Call To Action Title    Continue
    [Teardown]    Tear Down

Apps > SS Returns > Request a Return > Log Return Request > QASA-257
    [Tags]    QASA-257
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Verify Returns Menu Item
    Click Menu Exchanges And Returns
    Add Two Return Items to Return Request    ${cardReturnsOrderHistoryItemWithMultipleReturnableItems}
    Click Returns Call To Action Button
    Verify Returns Screen header    Select Return Method
    Click Return Select Return Method Address
    Verify Returns Screen header    Select Address
    Click Return Select Address Item
    Verify Returns Screen header    Log Return Request
    Verify Return Request Loading State Not Visible
    Swipe Up    ${windowScroll}
    Verify Return Request Delivery Method Selector    Takealot to collect from my address
    Verify Return Request Delivery Method Address Title
    Verify Return Request Contact Details Section
    Swipe Down    ${windowScroll}
    Swipe Returns Request Item Left Partially By Index    1
    Tap Delete Button
    Click Returns Request Delete Dialog Remove Option
    Verify Return Request Loading State Not Visible
    Swipe Down    ${windowScroll}
    Swipe Returns Request Item Left Partially By Index    1
    Tap Delete Button
    Click Returns Request Delete Dialog Remove Option
    Verify Return Request Empty State
    Click Return Request Empty State Call To Action
    Verify Returns Post Empty State Screen Header
    [Teardown]    Tear Down

Apps > SS Returns > Log Return Request > Collect > QA-5436
    [Tags]    QA-5436
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Verify Returns Menu Item
    Click Menu Exchanges And Returns
    Add Single Return First Item To Return Request
    Click Returns Call To Action Button
    Verify Returns Screen header    Select Return Method
    Click Return Select Return Method Address
    Verify Returns Screen header    Select Address
    Click Return Select Address Item
    Verify Returns Screen header    Log Return Request
    Verify Return Request Loading State Not Visible
    Scroll To Return Request Collect Adress Delivery Method Selector
    Verify Return Request Delivery Method Selector    Takealot to collect from my address
    Click Return Request Collect Adress Delivery Method Selector
    Verify Returns Screen header    Select Return Method
    Click Return Select Return Method Address
    Verify Returns Screen header    Select Address
    Click Return Select Address Item
    Scroll To Return Request Delivery Method Address
    Verify Return Request Delivery Method Address Title
    Verify Return Request Delivery Method Address Type Pill
    Verify Return Request Delivery Method Address Recipient Name
    Verify Return Request Delivery Method Address Detail
    Scroll To Return Request Contact Detail Section
    Verify Return Request Contact Details Section
    Click Return Request Contact Details Selector
    Verify Returns Screen header    Contact Details
    Click Back Screen
    Verify Returns Screen header    Log Return Request
    Verify Return Request Loading State Not Visible
    Verify Returns Submit Return Action Title
    # Click Returns Call To Action Button
    # Verify Return Request Loading State Not Visible
    # Verify Returns Screen header    Return Request Submitted
    [Teardown]    Tear Down

Apps > SS Returns > Log Return Request > Drop-off > QA-5435
    [Tags]    QA-5436
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Verify Returns Menu Item
    Click Menu Exchanges And Returns
    Add Single Return First Item To Return Request
    Click Returns Call To Action Button
    Verify Returns Screen header    Select Return Method
    Verify Return Select Delivery Method Pickup Point Option    Return to a Takealot Pickup Point
    Verify Return Select Delivery Method Collect Option    Collect from my address
    Click Return Select Delivery Method Pickup Point Option
    Verify Return Select Delivery Method Pickup Point Item Title
    Verify Return Select Delivery Method Pickup Point Item Subtitle
    Verify Return Select Delivery Method Pickup Point Item Info Button
    Click Return Select Delivery Method Pickup Point Item
    Verify Returns Screen header    Log Return Request
    Verify Return Request Loading State Not Visible
    Scroll To Return Request Delivery Method Selector
    Verify Return Request Delivery Method Selector    I will return the items to a Takealot Pickup Point
    Click Return Request Delivery Method Selector
    Verify Returns Screen header    Select Return Method
    Click Return Select Delivery Method Pickup Point Option
    Click Return Select Delivery Method Pickup Point Item
    Verify Returns Screen header    Log Return Request
    Verify Return Request Loading State Not Visible
    Verify Returns Request Cart Header
    Scroll To Return Request Return Method Section
    Verify Return Request Return Method Header
    Scroll To Return Request Delivery Method Selector
    Verify Return Request Delivery Method Selector    I will return the items to a Takealot Pickup Point
    [Teardown]    Tear Down

Apps > SS Returns > Request a Return > Log Return Request (Not eligible for Drop-Off) > QA-9640
    [Tags]    QA-9640
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Verify Returns Menu Item
    Click Menu Exchanges And Returns
    Add Single Return First Item To Return Request
    Verify Return Request Loading State Not Visible
    Click Returns Call To Action Button
    Verify Returns Screen header    Select Return Method
    Verify Return Select Delivery Method Pickup Point Option Is Not Active    Return to a Takealot Pickup Point not available
    Click Returns Close
    Verify Returns Screen header    Log Return Request
    [Teardown]    Tear Down

Apps > SS Returns > Select Return Method > Drop off > QASA-416 > Drop off & Collect are available
    [Tags]    QASA-416
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Verify Returns Menu Item
    Click Menu Exchanges And Returns
    Add Single Return Item To Return Request
    Verify Return Request Loading State Not Visible
    Click Returns Call To Action Button
    Verify Returns Screen header    Select Return Method
    Verify Return Select Delivery Method Pickup Point Option    Return to a Takealot Pickup Point
    Verify Return Select Delivery Method Collect Option    Collect from my address
    Click Returns Close
    Verify Returns Screen header    Log Return Request
    [Teardown]    Tear Down

Apps > SS Returns > Select Return Method > Drop off > QASA-416 > Drop-off is available
    [Tags]    QASA-416
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Verify Returns Menu Item
    Click Menu Exchanges And Returns
    Add Single Return Item To Return Request
    Verify Return Request Loading State Not Visible
    Click Returns Call To Action Button
    Verify Returns Screen header    Select Return Method
    Verify Return Select Delivery Method Pickup Point Option    Return to a Takealot Pickup Point
    Click Return Select Delivery Method Pickup Point Option
    Verify Returns Screen header    Select Takealot Pickup Point
    [Teardown]    Tear Down

Apps > SS Returns > Select Return Method > Drop off > QASA-416 > Drop-Off NOT available > Liquor
    [Tags]    QASA-416
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Verify Returns Menu Item
    Click Menu Exchanges And Returns
    Add Liquor Return Item To Return Request
    Verify Return Request Loading State Not Visible
    Click Returns Call To Action Button
    Verify Returns Screen header    Select Return Method
    Verify Return Select Delivery Method Pickup Point Option Is Not Active    Return to a Takealot Pickup Point not available
    Click Returns Close
    Verify Returns Screen header    Log Return Request
    [Teardown]    Tear Down

Apps > SS Returns > Select Return Method > Drop off > QASA-416 > Drop-Off NOT available > White goods
    [Tags]    QASA-416
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Verify Returns Menu Item
    Click Menu Exchanges And Returns
    Sleep    1
    Add Single Return Item To Return Request
    Verify Return Request Loading State Not Visible
    Click Returns Call To Action Button
    Verify Returns Screen header    Select Return Method
    Verify Return Select Delivery Method Pickup Point Option Is Not Active    Return to a Takealot Pickup Point not available
    Click Returns Close
    Verify Returns Screen header    Log Return Request
    [Teardown]    Tear Down

Apps > SS Returns > Select Return Method > Drop off > QASA-416 > Drop-Off NOT available > Dropoff eligible and Non-Dropoff eligible
    [Tags]    QASA-416
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Verify Returns Menu Item
    Click Menu Exchanges And Returns
    Add Liquor Return Item To Return Request
    Click Returns Request Add Another Item
    Click Returns Order Detail Returnable Item
    Click Return Reason Reason Selector
    Click Return Reason Reason Non-Exchange Item
    Scroll To Return Reason Preferred Outcome Selector
    Click Return Reason Preferred Outcome Selector
    Click Return Reason Preferred Outcome Item
    Scroll To Return Reason Text Area
    Input Return Reason Text Area Text    Test Description
    Click Returns Call To Action Button
    Verify Return Request Loading State Not Visible
    Click Returns Call To Action Button
    Verify Returns Screen header    Select Return Method
    Verify Return Select Delivery Method Pickup Point Option Is Not Active    Return to a Takealot Pickup Point not available
    Click Returns Close
    Verify Returns Screen header    Log Return Request
    [Teardown]    Tear Down

Apps > SS Returns > Select Return Method > Collect > QASA-415 > Liquor
    [Tags]    QASA-416
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Verify Returns Menu Item
    Click Menu Exchanges And Returns
    Add Liquor Return Item To Return Request
    Verify Return Request Loading State Not Visible
    Click Returns Call To Action Button
    Verify Returns Screen header    Select Return Method
    Verify Return Select Delivery Method Collect Option    Collect from my address
    Click Return Select Return Method Address
    Verify Returns Screen header    Select Address
    [Teardown]    Tear Down


Apps > SS Returns > Select Return Method > Collect > QASA-415 > White good
    [Tags]    QASA-416
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Verify Returns Menu Item
    Click Menu Exchanges And Returns
    Add Single Return Item To Return Request
    Verify Return Request Loading State Not Visible
    Click Returns Call To Action Button
    Verify Returns Screen header    Select Return Method
    Verify Return Select Delivery Method Collect Option    Collect from my address
    Click Return Select Return Method Address
    Verify Returns Screen header    Select Address
    [Teardown]    Tear Down

Apps > SS Returns > Select Return Method > Return Method Invalid (Add item) > QASA-93
    [Tags]    QASA-93
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Click Menu Exchanges And Returns
    Add Single Return First Item To Return Request
    Verify Return Request Loading State Not Visible
    Click Returns Call To Action Button
    Click Return Select Delivery Method Pickup Point Option
    Click Return Select Delivery Method Pickup Point Item
    Verify Returns Screen header    Log Return Request
    Verify Return Request Loading State Not Visible
    Scroll To Return Request Delivery Method Selector
    Verify Return Request Delivery Method Selector    I will return the items to a Takealot Pickup Point
    Click Returns Request Add Another Item
    Scroll To Element    ${cardReturnsOrderDetailItemWithLiquor}    20    ${containerReturnsHOrderDetail}
    Click Element    ${cardReturnsOrderDetailItemWithLiquor}
    Click Return Reason Reason Selector
    Click Return Reason Reason Non-Exchange Item
    Scroll To Return Reason Preferred Outcome Selector
    Click Return Reason Preferred Outcome Selector
    Click Return Reason Preferred Outcome Item
    Scroll To Return Reason Text Area
    Input Return Reason Text Area Text    Test Description
    Click Returns Call To Action Button
    Verify Returns Screen header    Log Return Request
    Verify Return Request Loading State Not Visible
    Verify Return Request Return Method Header Is Not Present
    Swipe Returns Request Item Left Fully By Index    1
    Click Returns Request Delete Dialog Remove Option
    Verify Return Request Loading State Not Visible
    Swipe Returns Request Item Left Fully By Index    1   
    Click Returns Request Delete Dialog Remove Option
    Verify Return Request Loading State Not Visible
    [Teardown]    Tear Down

Apps > SS Returns > Select Return Method > Return Method Invalid (Remove Item) > QASA-90
    [Tags]    QASA-90
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Click Menu Exchanges And Returns
    Add Single Return Item To Return Request
    Verify Toolbar Title    Log Return Request
    Verify Return Request Loading State Not Visible
    Click Returns Request Add Another Item
    Scroll To Element    ${cardReturnsOrderDetailItemWithLiquor}    20    ${containerReturnsHOrderDetail}
    Click Element    ${cardReturnsOrderDetailItemWithLiquor}
    Click Return Reason Reason Selector
    Click Return Reason Reason Non-Exchange Item
    Scroll To Return Reason Preferred Outcome Selector
    Click Return Reason Preferred Outcome Selector
    Click Return Reason Preferred Outcome Item
    Scroll To Return Reason Text Area
    Input Return Reason Text Area Text    Test Description
    Click Returns Call To Action Button
    Verify Toolbar Title    Log Return Request
    Verify Return Request Loading State Not Visible
    Click Returns Call To Action Button
    Verify Return Select Delivery Method Pickup Point Option Is Not Active
    Click Return Select Return Method Address
    Click Return Select Address Item
    Verify Toolbar Title    Log Return Request
    Verify Return Request Loading State Not Visible
    Swipe Returns Request Item Left Fully By Index    1
    Click Returns Request Delete Dialog Remove Option
    Verify Return Request Loading State Not Visible
    Verify Return Request Return Method Header Is Not Present
    Swipe Returns Request Item Left Fully By Index    1    2s
    Click Returns Request Delete Dialog Remove Option
    Verify Return Request Loading State Not Visible
    [Teardown]    Tear Down

Apps > SS Returns > Request a Return > Select Address > QASA-409 > User with saved addresses
    [Tags]    QASA-409
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Click Menu Exchanges And Returns
    Add Single Return Item To Return Request
    Click Returns Call To Action Button
    Click Return Select Return Method Address
    Verify Returns Screen header    Select Address
    Verify Return Select Address Item
    Click Returns Back
    Verify Returns Screen header   Select Return Method
    [Teardown]    Tear Down

Apps > SS Returns > Request a Return > Select Address > QASA-409 > User with no saved addresses
    [Tags]    QASA-409
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Click Menu Exchanges And Returns
    Add Single Return Item To Return Request
    Click Returns Call To Action Button
    Click Return Select Return Method Address
    Verify Returns Screen header    Select Address
    Verify Return Address Empty State
    Verify Return Address Add Option
    Click Returns Back
    Verify Returns Screen header    Select Return Method
    [Teardown]    Tear Down


Apps > SS Returns > Request a Return > Select Address > QASA-409 > Add Address
    [Tags]    QASA-409
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Click Menu Exchanges And Returns
    Add Single Return Item To Return Request
    Click Returns Call To Action Button
    Click Return Select Return Method Address
    Verify Returns Screen header    Select Address
    Click Return Address Add Option
    Click Residential
    Add Delivery Address    Tester Residential    0744404494    13 Caro Road
    Sleep    5s
    Verify Returns Screen header    Log Return Request
    Swipe Up    ${windowScroll}
    Verify Return Request Delivery Method Selector    Takealot to collect from my address
    Verify Return Request Delivery Method Address Title
    Verify Return Request Delivery Method Address Details    RESIDENTIAL    Tester Residential    ABC, 13 Caro Road, Robertsham, Johannesburg South, Gauteng, 2091
    [Teardown]    Tear Down

Apps > SS Returns > Request a Return > Select Address > QASA-409 > Edit Address
    [Tags]    QASA-409
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Click Menu Exchanges And Returns
    Add Single Return Item To Return Request
    Click Returns Call To Action Button
    Click Return Select Return Method Address
    Verify Returns Screen header    Select Address
    Verify Return Select Address Item
    Click Return Address Item Edit
    Verify Returns Screen header    Edit Delivery Address
    Swipe Up    ${windowScroll}
    Click Save Address
    Sleep    2s
    Verify Returns Screen header    Select Address
    [Teardown]    Tear Down

Apps > SS Returns > Request a Return > Select Address > QASA-409 > Delete Address
    [Tags]    QASA-409
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Click Menu Exchanges And Returns
    Add Single Return Item To Return Request
    Click Returns Call To Action Button
    Click Return Select Return Method Address
    Verify Returns Screen header    Select Address
    Verify Return Select Address Item
    Click Return Address Item Delete
    # we cannot confirm the delete dialogue on iOS as long as https://takealotgroup.atlassian.net/browse/MAQ-852 is not complete as it is cancelled before we can check
    Confirm Return Address Item Delete Dialog
    Verify Returns Screen header    Select Address
    [Teardown]    Tear Down

Apps > SS Returns > Request a Return > Select Address > Incomplete Address > QASA-408
    [Tags]    QASA-408
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Click Menu Exchanges And Returns
    Add Single Return Item To Return Request
    Click Returns Call To Action Button
    Click Return Select Return Method Address
    Verify Returns Screen header    Select Address
    Click Return Address Incomplete Item
    Verify Returns Screen header    Edit Delivery Address
    Update Incomplete Address    Tester Residential    0744404494    13 Caro Road
    Sleep    5s
    Verify Returns Screen header    Select Address
    Click Return Address Incomplete Item
    Sleep    5s
    Swipe Up    ${windowScroll}
    Verify Return Request Delivery Method Selector    Takealot to collect from my address
    Verify Return Request Delivery Method Address Title
    [Teardown]    Tear Down

Apps > SS Returns > SMS Contact Details (Collect) > QASA-258
    [Tags]    QASA-258
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Click Menu Exchanges And Returns
    Add Single Return Item To Return Request
    Click Returns Call To Action Button
    Click Return Select Return Method Address
    Click Return Select Address Item
    Verify Return Request Loading State Not Visible
    Scroll To Return Request Contact Detail Section
    Verify Return Request Contact Details Section
    Verify Return Request Contact Details Info    Dedrick: +27 79 739 0806
    Click Return Request Contact Details Selector
    Verify Returns Screen header    Contact Details
    Verify Return Contact Details Input Fields    Dedrick    797390806
    Clear Return Contact Details Input Fields
    Click Returns Call To Action Button
    Verify Return Contact Details Input Field Validation    Please enter a Full Name    Please enter a valid Mobile Number
    Edit Return Contact Details Input    Tester Residential    744404494
    Click Returns Call To Action Button
    Sleep    5s
    Verify Returns Screen header    Log Return Request
    Verify Return Request Loading State Not Visible
    Scroll To Return Request Contact Detail Section
    Verify Return Request Contact Details Section
    Verify Return Request Contact Details Info    Tester Residential: +27 74 440 4494
    [Teardown]    Tear Down

Apps > SS Returns > SMS Contact Details (Drop-Off) > QASA-65
    [Tags]    QASA-65
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Click Menu Exchanges And Returns
    Add Single Return Item To Return Request
    Click Returns Call To Action Button
    Click Return Select Delivery Method Pickup Point Option
    Click Return Select Delivery Method Pickup Point Item
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Returns Call To Action Title    ADD CONTACT DETAILS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Returns Call To Action Title    Add Contact Details
    Click Returns Call To Action Button
    Verify Returns Screen header    Contact Details
    [Teardown]    Tear Down

Apps > SS Returns > Request a Return > Select Takealot Pickup Point > QASA-410
    [Tags]    QASA-410
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Click Menu Exchanges And Returns
    Add Single Return Item To Return Request
    Click Returns Call To Action Button
    Click Return Select Delivery Method Pickup Point Option
    Verify Returns Screen header    Select Takealot Pickup Point
    Verify Return Select Delivery Method Pickup Point Item Title
    Verify Return Select Delivery Method Pickup Point Item Subtitle
    Verify Return Select Delivery Method Pickup Point Item Info Button
    Click Return Select Pickup Point Filter Option
    Sleep    1s
    Verify Returns Screen header    Filter by Province
    Click Returns Close
    Sleep    1s
    Verify Returns Screen header    Select Takealot Pickup Point
    Verify Return Select Pickup Point Province Title
    Sleep    3
    Click Return Select Pickup Point Item Info
    Verify Return Pickup Point Info Details    Berea    East London, Eastern Cape    33 Devereux Avenue, East London, 5241    We'll send you an email to confirm your return eligibility. If eligible, you’ll have 7 days to drop-off your return items.
    Verify Return Pickup Point Info Call To Action    SELECT PICKUP POINT
    Click Return Pickup Point Info Call To Action
    Sleep    5s
    Verify Return Request Loading State Not Visible
    Verify Returns Screen header    Log Return Request
    Swipe Up    ${windowScroll}
    Verify Return Request Delivery Method Selector    I will return the items to a Takealot Pickup Point
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Returns Call To Action Title    ADD CONTACT DETAILS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Returns Call To Action Title    Add Contact Details
    [Teardown]    Tear Down

Apps > SS Returns > Return Request Submitted > Success (Drop Off) > QASA-407
    [Tags]    QASA-407
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Click Menu Exchanges And Returns
    Add Single Return First Item To Return Request
    Click Returns Call To Action Button
    Click Return Select Delivery Method Pickup Point Option
    Click Return Select Delivery Method Pickup Point Item
    Click Returns Call To Action Button
    Edit Return Contact Details Input    Tester Residential    744404494
    Click Returns Call To Action Button
    Sleep    5s
    Verify Return Success Flow From Return Request
    [Teardown]    Tear Down

Apps > SS Returns > Return Request Submitted > Success (Collect) > QASA-263
    [Tags]    QASA-263
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu My Account
    Click Menu Exchanges And Returns
    Add Single Return Item To Return Request
    Click Returns Call To Action Button
    Click Return Select Return Method Address
    Click Return Select Address Item
    Sleep    5s
    Verify Return Success Flow From Return Request
    [Teardown]    Tear Down