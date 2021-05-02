*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Search Home
    Wait Until Element Is Visible    ${btnSearchHome}    10s
    Click Element    ${btnSearchHome}

    ${btnPresentSearchHistory}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnSearchClearAll}    15s
    Run Keyword If    ${btnPresentSearchHistory}    Click Element    ${btnSearchClearAll}

Search Product
    [Arguments]    ${search}

    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Input Text    ${btnSearchHome}    ${search}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Input Text    ${txtSearch}    ${search}
    ${searchFirstOption}=    Get First Search Option    ${search}
    Wait Until Element Is Visible    ${searchFirstOption}    15s
    Click Element    ${searchFirstOption}

Click Search Recent
    Wait Until Element Is Visible    ${btnSearchRecent}    30s
    Click Element    ${btnSearchRecent}

Click Search Trending
    Wait Until Element Is Visible    ${btnSearchTrending}    30s
    Click Element    ${btnSearchTrending}
