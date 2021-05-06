*** Settings ***
Default Tags      login
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Search Listings > Image - QA-8738
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    take2Automation+201905213934@gmail.com    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product Daily Deals
    [Teardown]    Tear Down

Apps > Search Listings > Badges (Daily Deal) - QA-8739
    [Setup]    Start Application
    Verify Product Daily Deals Badge
    [Teardown]    Tear Down

Apps > Search Listings > Badges (Daily Deal) - QA-8740
    [Setup]    Start Application
    Verify Product Percent Off Badge
    [Teardown]    Tear Down
