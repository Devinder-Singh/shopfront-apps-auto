*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Login Takealot Only
    [Arguments]    ${email}    ${password}
    Clear Text    ${txtEmail}
    Input Text    ${txtEmail}    ${email}
    Input Text    ${txtPassword}    ${password}
    Click Element    ${btnLogin}

Login Takealot
    [Arguments]    ${email}    ${password}
    Clear Text    ${txtEmail}
    Input Text    ${txtEmail}    ${email}
    Input Text    ${txtPassword}    ${password}
    Click Element    ${btnLogin}

    Run Keyword If
        ...    '${PLATFORM_NAME}'=='android'
        ...    Return Android Login Status    ${email}    ${password}

    Run Keyword If
        ...    '${PLATFORM_NAME}'=='ios'
        ...    Return iOS Login Status    ${email}    ${password}

Login Takealot Forgot Password
    [Arguments]    ${email}

    Wait Until Element Is Visible    ${btnForgotPwd}    30s
    Click Element    ${btnForgotPwd}

    Wait Until Element Is Visible    ${txtEmailResetPwd}    30s
    Input Text    ${txtEmailResetPwd}    ${email}
    Click Element    ${btnRequestResetPwd}

Return Android Login Status
    [Arguments]    ${email}    ${password}
    ${chkLoginSuccess}=    Run Keyword And Return Status    Wait Until Page Contains    You are logged in    30s
    Run Keyword If    ${chkLoginSuccess}==False    Register Takealot    AutoTest    Test    ${email}    ${password}

Return iOS Login Status
    [Arguments]    ${email}    ${password}
#    ${chkLoginSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnSearchClearAll}    30s
    ${chkLoginSuccess}=    Run Keyword And Return Status    Wait Until Page Contains    Logged in successfully    30s
    Run Keyword If    ${chkLoginSuccess}==False    Register Takealot    AutoTest    Test    ${email}    ${password}

Verify Logged In
    [Arguments]    ${verifyText}
    ${lblUserName}=    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Set Variable    id=${verifyText}
    ...    ELSE    Set Variable    ${lblUserName}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    You are logged in    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Element Should Contain Text    ${lblUserName}    ${verifyText}
