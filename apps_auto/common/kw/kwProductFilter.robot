*** Settings ***
Library           TalLibrary
Resource    kwAPI.robot

*** Keywords ***
Select Filter Option
    [Arguments]    ${option}

    ${chkProdFilter}=    Set Variable    xpath=//*[@text="${option}"]
    Wait Until Element Is Visible    ${chkProdFilter}    30s
    Click Element    ${chkProdFilter}

Click Apply Filter
    Wait Until Element Is Visible    ${btnProdFilterApply}    30s
    Click Element    ${btnProdFilterApply}
