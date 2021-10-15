*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Verify Toolbar Title
    [Arguments]    ${expectedTitle}

    Wait Until Page Contains Element    ${txtToolbarTitle}    30s
    Element Should Be Visible    ${txtToolbarTitle}
    Element Text Should Be    ${txtToolbarTitle}    ${expectedTitle}
