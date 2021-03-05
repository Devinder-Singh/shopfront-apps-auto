*** Settings ***
Library           TalLibrary
Resource    kwAPI.robot

*** Keywords ***
Click Search Home
    Wait Until Element Is Visible    ${btnSearchHome}    10s
    Click Element    ${btnSearchHome}

Search Product
    [Arguments]    ${search}

    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Clear Text    ${btnSearchHome}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Input Text    ${btnSearchHome}    ${search}

    Run Keyword If    '${PLATFORM_NAME}'=='android'    Clear Text    ${txtSearch}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Input Text    ${txtSearch}    ${search}

    ${searchFirstOptionIOS}=    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Get First Search Option iOS    ${search}
    ${searchFirstOptionAndroid}=    Run Keyword If    '${PLATFORM_NAME}'=='android'    Get First Search Option Android    ${search}

    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${searchFirstOptionIOS}    15s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${searchFirstOptionIOS}

    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${searchFirstOptionAndroid}    15s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${searchFirstOptionAndroid}
