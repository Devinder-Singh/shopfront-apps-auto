*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Login Takealot
    [Arguments]    ${email}    ${password}
    Clear Text    ${txtEmail}
    Input Text    ${txtEmail}    ${email}
    Input Text    ${txtPassword}    ${password}
    Click Element    ${btnLogin}

#    ${chkLoginSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnSearchClearAll}    30s
    ${chkLoginSuccess}=    Run Keyword And Return Status    Wait Until Page Contains    You are logged in    30s
    Run Keyword If    ${chkLoginSuccess}==False    Register Takealot    AutoTest    Test    take2Automation+201905213934@gmail.com    t@ke@!ot1234

Verify Logged In
    [Arguments]    ${verifyText}
    ${lblUserName}=    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Set Variable    id=${verifyText}
    ...    ELSE    Set Variable    ${lblUserName}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    You are logged in    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Element Should Contain Text    ${lblUserName}    ${verifyText}
