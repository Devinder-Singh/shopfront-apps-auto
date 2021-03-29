*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Product Widget First View All
    Wait Until Element Is Visible    ${btnProductViwAllFirst}    30s
    Click Element    ${btnProductViwAllFirst}
