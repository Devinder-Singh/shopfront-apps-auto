*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Verify Toolbar Title
    [Arguments]    ${expectedTitle}

    ${toolbarTitleLocator}=    Set Variable If    '${PLATFORM_NAME}'=='android'    ${txtToolbarTitle}    ''
    Wait Until Page Contains Element    ${toolbarTitleLocator}    30s
    Element Should Be Visible    ${toolbarTitleLocator}
    Element Should Contain Text    ${toolbarTitleLocator}    ${expectedTitle}
