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