*** Settings ***
Default Tags      search_autocomplete
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Search: Autocomplete > Recent Searches(Search history) - QA-10012
    [Tags]    QA-10012
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    Close Application
    Start Application
    Click Home
    Click Only Search Home
    Verify Element On Screen    ${btnSearchClearAll}    30s
    Verify Text On Screen    Recent Search    2s
    Verify Text On Screen    Trending    2s
    [Teardown]    Tear Down

Apps > Search: Autocomplete > Trending Model - QA-5158
    [Tags]    QA-5158
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Close Application
    Start Application
    Click Home
    Click Search Home
    Verify Text On Screen    Trending    30s
    Click Search Trending
    Close Application
    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Only Search Home
    Verify Element On Screen    ${btnSearchClearAll}    30s
    Verify Text On Screen    Recent Search    2s
    Verify Text On Screen    Trending    2s
    [Teardown]    Tear Down

Apps > Search: Autocomplete > Auto-complete Model - QA-5154
    [Tags]    QA-5154
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    pencil
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    PENCIL
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    [Teardown]    Tear Down

Apps > Search: Autocomplete > Recent Searches(New User) - QA-5155
    [Tags]    QA-5155
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    Click Search Icon
    Verify Element On Screen    ${btnSearchClearAll}    10s
    Verify Text On Screen    Recent Search    2s
    Verify Text On Screen    Trending    2s
    Verify Text On Screen    ${query_result_search}    2s
    Close Application
    Start Application
    Click Menu
    Click Menu Login
    Close Application
    Start Application
    Click Home
    Click Search Home
    Verify Text On Screen    Trending    5s
    Close Application
    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Verify Element On Screen    ${btnSearchClearAll}    10s
    Verify Text On Screen    Recent Search    2s
    Verify Text On Screen    Trending    2s
    Verify Text On Screen    ${query_result_search}    2s
    [Teardown]    Tear Down

Apps > Sponsored Ads (PLP) > Sort, Filtering, Paging and Recalling - QA-6320
    [Tags]    QA-6320
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    Verify Text On Screen    Sponsored    2s
    Click Search Product Sort
    Click Sort High To Low
    Verify Text On Screen    Sponsored    2s
    Swipe Up    ${windowScroll}
    Swipe Up    ${windowScroll}
    Swipe Up    ${windowScroll}
    Check Text On Screen Not    Sponsored
    [Teardown]    Tear Down

Apps > Sponsored Ads (PLP) > Product Card Components (UI) - QA-6322
    [Tags]    QA-6322
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Pen
    Click Product from API
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    Verify Text On Screen    Sponsored    2s
    Verify Element On Screen    ${btnProductWidget}    2s
    Verify Text On Screen    In stock    2s
    Click Product From Title    In stock
    Verify Element On Screen    ${btnAddToCart}    2s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Pen
    Click Product from API
    Click Search Product Sort
    Click Sort High To Low
    Verify Text On Screen    Sponsored    10s
    Verify Element On Screen    ${btnProductWidget}    2s
    Verify Text On Screen    In stock    2s
    Click Product From Title    In stock
    Verify Element On Screen    ${btnAddToCart}    2s
    [Teardown]    Tear Down

Uploaded image for project Quality Assurance - Engineering Quality Assurance - Engineering - QA-6323
    [Tags]    QA-6323
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Pen
    Click Product from API
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    Verify Text On Screen    Sponsored    2s
    Click Product From Title    In stock
    Verify Element On Screen    ${btnAddToCart}    2s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Pen
    Click Product from API
    Click Search Product Sort
    Click Sort High To Low
    Verify Text On Screen    Sponsored    10s
    Click Product Grid View
    Click Product From Title    Sponsored
    Verify Text On Screen    You're seeing this ad based on the product's relevance to your search query    5s
    [Teardown]    Tear Down
