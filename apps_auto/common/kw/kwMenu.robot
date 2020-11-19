*** Settings ***
Library           TalLibrary

*** Keywords ***
Click Menu
    Click Element    ${btnMenu}

Click Menu Login
    Click Element    ${btnMenuLogin}

Click Menu Logout
    Click Element    ${btnLogout}
    Page Should Contain Element    ${btnMenuLogin}

Login Takealot
    [Arguments]    ${email}    ${password}
    Clear Text    ${txtEmail}
    Input Text    ${txtEmail}    ${email}
    Input Text    ${txtPassword}    ${password}
    Click Element    ${btnLogin}

Start Application
    &{cap}=    Get Capabilities    ${False}    ${True}
    Log Many    &{cap}
    Open Application    ${REMOTE_URL}    &{cap}
    Set Implicitly Wait    5

Tear Down
    Capture Page Screenshot
    Close Application

Verify Logged In
    [Arguments]    ${verifyText}
    ${lblUserName}=    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Set Variable    id=${verifyText}
    ...    ELSE    Set Variable    ${lblUserName}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${lblUserName}    10s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Logged in successfully
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    You are logged in    10s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Element Should Contain Text    ${lblUserName}    ${verifyText}
