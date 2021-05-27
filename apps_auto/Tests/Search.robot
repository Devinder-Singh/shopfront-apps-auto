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

Apps > Search Listings > Badges (Up to <% discount> off) - QA-8741
    [Setup]    Start Application
    Verify Product Percent Off Badge
    [Teardown]    Tear Down

Apps > Search Listings > Badges (Sale / Image) - QA-8742
    [Setup]    Start Application
    Verify Sales Badge
    [Teardown]    Tear Down

Apps > Search Listings > Badges (App Only Deal) - QA-8745
    [Setup]    Start Application
    Verify App Only Badge
    [Teardown]    Tear Down

Apps > Search Listings > Attributes - QA-8737
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Hisense
    Verify Text On Screen    Hisense    30s
    [Teardown]    Tear Down

Apps > Search Listings > Attributes 02 - QA-8737
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Book
    Verify Text On Screen    By    30s
    Verify Text On Screen Scroll    et al    5s    ${windowScroll}    ${btnProductSearchFilter}
    [Teardown]    Tear Down

Apps | Search Listings | Section below header - QA-3417
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    Verify Text On Screen    items    5s
    Click Search Product Sort
    Verify Text On Screen    Relevance    10s
    Verify Text On Screen    Price: High to Low    1s
    Verify Text On Screen    Price: Low to High    1s
    Verify Text On Screen    Top Rated    1s
    Verify Text On Screen    Newest Arrivals    1s
    Click Product Icon Close
    Click Search Product Sort
    Click Sort High To Low
    Click Product Grid View
    [Teardown]    Tear Down

Apps > Search Listings > UI Checks - QA-8841
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    Verify Text On Screen    items    5s
    Verify Element On Screen    ${btnProductSearchSort}    30s
    Click Product Grid View
    [Teardown]    Tear Down

Apps > Search Listings > Product Title - QA-8748
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    [Teardown]    Tear Down

Apps > Search Listings > Reviews - QA-8750
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Tear Down
    Start Application    ${False}
    Click Menu
    Click Menu Register
    Register Takealot    AutoTest    Test    ?    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    pencil
    Verify Element On Screen Scroll Android    ${lblRatingText}    30s    ${windowScroll}    ${btnProductSearchFilter}
    Verify Element On Screen Scroll Android    ${lblRatingNumber}    30s    ${windowScroll}    ${btnProductSearchFilter}
    Verify Product Review iOS
    Click Back Android
    Click Back iOS    Back
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click PDP Write Review
    Click Review Rating
    Enter Review Message    Auto Test
    Click Review Submit
    Verify Text On Screen    Thank you for your review    30s
    [Teardown]    Tear Down
