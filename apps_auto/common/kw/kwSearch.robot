*** Settings ***
Library           TalLibrary

*** Keywords ***
Click Search Home
    Click Element    ${btnSearch}

Search Product
    [Arguments]    ${search}
    Clear Text    ${txtSearch}
    Input Text    ${txtSearch}    ${search}
    Wait Until Element Is Visible    ${btnSearchOption}    30s
    Click Element    ${btnSearchOption}
