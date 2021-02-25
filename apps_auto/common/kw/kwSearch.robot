*** Settings ***
Library           TalLibrary
Resource    kwAPI.robot

*** Keywords ***
Click Search Home
    Wait Until Element Is Visible    ${txtSearch}    10s
    Click Element    ${txtSearch}

Search Product
    [Arguments]    ${search}

    Clear Text    ${txtSearch}
    Input Text    ${txtSearch}    ${search}

    ${searchFirstOption}=    Get First Search Option    ${search}

    Wait Until Element Is Visible    ${searchFirstOption}    15s
    Click Element    ${searchFirstOption}
