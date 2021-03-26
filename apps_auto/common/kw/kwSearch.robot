*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Search Home
    Wait Until Element Is Visible    ${btnSearchHome}    10s
    Click Element    ${btnSearchHome}

Search Product
    [Arguments]    ${search}
    ${btnPresentSearchHistory}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnSearchClearAll}    10s
    Run Keyword If    ${btnPresentSearchHistory}    Click Element    ${btnSearchClearAll}

    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Input Text    ${btnSearchHome}    ${search}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Input Text    ${txtSearch}    ${search}
    ${searchFirstOption}=    Get First Search Option    ${search}
    Wait Until Element Is Visible    ${searchFirstOption}    15s
    Click Element    ${searchFirstOption}
