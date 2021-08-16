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
