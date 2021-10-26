*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Search Home
    [Arguments]    ${clearAll}=${True}

    Wait Until Element Is Visible    ${btnSearchHome}    10s
    Click Element    ${btnSearchHome}

    ${btnPresentSearchHistory}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnSearchClearAll}    10s
    Run Keyword If    ${btnPresentSearchHistory} and ${clearAll}    Click Element    ${btnSearchClearAll}

Click Only Search Home
    [Arguments]    ${clearAll}=${True}

    Wait Until Element Is Visible    ${btnSearchHome}    10s
    Click Element    ${btnSearchHome}

Search Product
    [Arguments]    ${search}

    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Input Text    ${btnSearchHome}    ${search}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Input Text    ${txtSearch}    ${search}
    ${searchFirstOption}=    Get First Search Option    ${search}
    Wait Until Element Is Visible    ${searchFirstOption}    15s
    Click Element    ${searchFirstOption}

#    Sleep    2s

Search and Press Enter
    [Arguments]    ${search}

    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Input Text    ${btnSearchHome}    ${search}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Input Text    ${txtSearch}    ${search}

    Sleep    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Press Keycode    66
    ${searchiOS}=    Set Variable    chain=**/XCUIElementTypeButton[`label == "search"`]
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${searchiOS}

Click Search Recent
    Wait Until Element Is Visible    ${btnSearchRecent}    ${MIN_TIMEOUT}
    Click Element    ${btnSearchRecent}

Click Search Trending
    Wait Until Element Is Visible    ${btnSearchTrending}    ${MIN_TIMEOUT}
    Click Element    ${btnSearchTrending}
