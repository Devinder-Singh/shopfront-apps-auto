*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Product Widget First View All
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnProductViwAllFirst}    30s
    Run Keyword If    ${chkElementExists}==True    Click Element    ${btnProductViwAllFirst}
