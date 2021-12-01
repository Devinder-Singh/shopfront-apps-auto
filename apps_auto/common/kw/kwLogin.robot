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

    IF     '${PLATFORM_NAME}' == 'android'
        Return Android Login Status    ${email}    ${password}
    ELSE IF    '${PLATFORM_NAME}' == 'ios'
        Return iOS Login Status    ${email}    ${password}
    END

Login Takealot Forgot Password
    [Arguments]    ${email}

    Wait Until Element Is Visible    ${btnForgotPwd}    ${MIN_TIMEOUT}
    Click Element    ${btnForgotPwd}

    Wait Until Element Is Visible    ${txtEmailResetPwd}    ${MIN_TIMEOUT}
    Input Text    ${txtEmailResetPwd}    ${email}
    Click Element    ${btnRequestResetPwd}

Return Android Login Status
    [Arguments]    ${email}    ${password}
    ${chkLoginSuccess}=    Run Keyword And Return Status    Wait Until Page Contains    You are logged in    ${MIN_TIMEOUT}

    IF    ${chkLoginSuccess} == ${False}
        Register From Login Takealot    ${email}    ${password}
    END   

Return iOS Login Status
    [Arguments]    ${email}    ${password}
#    ${chkLoginSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnSearchClearAll}    ${MIN_TIMEOUT}
    ${chkLoginSuccess}=    Run Keyword And Return Status    Verify Element On Screen    ${btnLogout}    ${MAX_TIMEOUT}

    IF    ${chkLoginSuccess} == ${False}
        Register From Login Takealot    ${email}    ${password}
    END

Register From Login Takealot
    [Arguments]    ${email}    ${password}
    Click Login Register
    Register Takealot    AutoTest    Test    ${email}    ${password}

Verify Logged In
    [Arguments]    ${verifyText}
    ${lblUserName}=    Set Variable    ${None}

    IF    '${PLATFORM_NAME}' == 'ios'
        ${lblUserName}=    Set Variable    id=${verifyText}
        Element Should Contain Text    ${lblUserName}    ${verifyText}
    ELSE IF    '${PLATFORM_NAME}' == 'android'
        ${lblUserName}=    Set Variable    ${lblUserName}
        Wait Until Page Contains    You are logged in    ${MIN_TIMEOUT}
    END
