*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Register Takealot
    [Arguments]    ${name}    ${surname}    ${email}    ${password}

    Get New Email Address
    ${G_EMAIL}=    Set Variable If    '${email}'=='?'    ${new_email_address}    '${email}'!='?'    ${email}
    ${email}=    Set Variable If    '${email}'=='?'    ${new_email_address}    '${email}'!='?'    ${email}

    Wait Until Element Is Visible    ${txtRegFirstName}    30s
    Wait Until Element Is Visible    ${btnRegRegister}    30s

    Input Text    ${txtRegFirstName}    ${name}
    Input Text    ${txtRegSurname}    ${surname}
    Input Text    ${txtRegEmail}    ${email}
    Input Text    ${txtRegPassword}    ${password}
    Input Text    ${txtRegConfirmPwd}    ${password}

    Click Element    ${btnRegRegister}

    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    You are now successfully registered and logged in    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Logged in successfully    30s

Register Takealot Unverify
    [Arguments]    ${name}    ${surname}    ${email}    ${password}

    Wait Until Element Is Visible    ${txtRegFirstName}    30s
    Wait Until Element Is Visible    ${btnRegRegister}    30s

    Input Text    ${txtRegFirstName}    ${name}
    Input Text    ${txtRegSurname}    ${surname}
    Input Text    ${txtRegEmail}    ${email}
    Input Text    ${txtRegPassword}    ${password}
    Input Text    ${txtRegConfirmPwd}    ${password}

    Click Element    ${btnRegRegister}

Click Login Register
    Wait Until Element Is Visible    ${btnLoginRegRegister}    30s
    Click Element    ${btnLoginRegRegister}

Verify Register Takealot Blank
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Please enter your first name    10s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Please enter your surname    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Please enter your email address    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Please enter your password    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Please confirm your password    1s

    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Please provide your first name    10s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Please provide your last name    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Please enter your email address    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Please provide password    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Please confirm your password    1s
