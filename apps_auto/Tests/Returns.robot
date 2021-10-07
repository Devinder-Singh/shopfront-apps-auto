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