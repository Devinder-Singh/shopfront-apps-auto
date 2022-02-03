*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Search Home
    [Arguments]    ${clearAll}=${True}

    Wait Until Element Is Visible    ${btnSearchHome}    10s
    Click Element    ${btnSearchHome}

    ${btnPresentSearchHistory}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnSearchClearAll}    10s
    Run Keyword If    ${btnPresentSearchHistory} and ${clearAll}    Click Element    ${btnSearchClearAll}

Click Search PLP Clear Text
    Wait Until Element Is Visible    ${btnSearchClearText}    10s
    Click Element    ${btnSearchClearText}

Click Only Search Home
    [Arguments]    ${clearAll}=${True}

    Wait Until Element Is Visible    ${btnSearchHome}    10s
    Click Element    ${btnSearchHome}

Search Product
    [Arguments]    ${search}
    IF    '${PLATFORM_NAME}' == 'ios'
        Input Text    ${btnSearchHome}    ${search}
    ELSE IF    '${PLATFORM_NAME}' == 'android'
        Input Text    ${txtSearch}    ${search}
    END

    ${searchFirstOption}=    Get First Search Option    ${search}
    Wait Until Element Is Visible    ${searchFirstOption}    ${MIN_TIMEOUT}
    Click Element    ${searchFirstOption}
       
Search and Press Enter
    [Arguments]    ${search}

    IF    '${PLATFORM_NAME}'=='ios'
        Run Keyword If    '${PLATFORM_NAME}'=='ios'    Input Text    ${btnSearchHome}    ${search}
        Sleep    1s
        ${searchiOS}=    Set Variable    chain=**/XCUIElementTypeButton[`label == "search"`]
        Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${searchiOS}
    ELSE
        Run Keyword If    '${PLATFORM_NAME}'=='android'    Input Text    ${txtSearch}    ${search}
        Sleep    1s
        Run Keyword If    '${PLATFORM_NAME}'=='android'    Press Keycode    66        
    END
    
Click Search Recent
    Wait Until Element Is Visible    ${btnSearchRecent}    ${MIN_TIMEOUT}
    Click Element    ${btnSearchRecent}

Click Search Trending
    Wait Until Element Is Visible    ${btnSearchTrending}    ${MIN_TIMEOUT}
    Click Element    ${btnSearchTrending}

Click Search Trending Option By Index
    [Arguments]    ${index}
    ${dynamicTrendingOptionAndroid}=    Set Variable    xpath=(//android.widget.TextView)/preceding-sibling::android.widget.HorizontalScrollView//android.widget.Button[${index}]
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${dynamicTrendingOptionAndroid}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${dynamicTrendingOptionAndroid}
    
Enter Search Text
    [Documentation]    This method will enter search text
                        ...    This will not initiate the search
    [Arguments]    ${search}
    IF    '${PLATFORM_NAME}' == 'ios'
        Input Text    ${btnSearchHome}    ${search}
    ELSE IF    '${PLATFORM_NAME}' == 'android'
        Input Text    ${txtSearch}    ${search}
    END 

Clear Search Text
    Wait Until Element Is Visible    ${btnSearchClearText}    ${MIN_TIMEOUT}
    Click Element    ${btnSearchClearText}
