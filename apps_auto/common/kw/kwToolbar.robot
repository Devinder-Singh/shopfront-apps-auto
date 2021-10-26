*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Verify Toolbar Title
    [Arguments]    ${expectedTitle}

    Wait Until Page Contains Element    ${txtToolbarTitle}    ${MIN_TIMEOUT}
    Element Should Be Visible    ${txtToolbarTitle}
    Element Text Should Be    ${txtToolbarTitle}    ${expectedTitle}
