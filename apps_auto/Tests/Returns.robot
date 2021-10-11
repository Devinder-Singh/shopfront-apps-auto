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
    [Tags]    data    QA-9256
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
    [Tags]    data    QA-5429
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
    [Tags]    data    QA-5430
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
