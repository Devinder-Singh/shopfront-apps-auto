*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Register Takealot
    [Arguments]    ${name}    ${surname}    ${email}    ${password}
    Get New Email Address
    IF    '${email}' == '?'
        ${email}=    Set Variable    ${new_email_address}
    ELSE
       ${email}=    Set Variable    ${email}
    END 
    Set Global Variable    ${G_EMAIL}    ${email}
    Set Global Variable    ${G_PASSWORD}    ${password}
    Wait Until Element Is Visible    ${txtRegFirstName}    ${MIN_TIMEOUT}
    Wait Until Element Is Visible    ${btnRegRegister}    ${MIN_TIMEOUT}
    Input Text    ${txtRegFirstName}    ${name}
    Input Text    ${txtRegSurname}    ${surname}
    Input Text    ${txtRegEmail}    ${email}
    Input Text    ${txtRegPassword}    ${password}
    Input Text    ${txtRegConfirmPwd}    ${password}
    Click Element    ${btnRegRegister} 
    IF    '${PLATFORM_NAME}' == 'android'
        Verify Text On Screen    You are now successfully registered and logged in    ${MAX_TIMEOUT}
    ELSE IF    '${PLATFORM_NAME}' == 'ios'
        Verify Text On Screen    Logged in successfully.    ${MAX_TIMEOUT}
    END

Register Takealot Unverify
    [Arguments]    ${name}    ${surname}    ${email}    ${password}
    Wait Until Element Is Visible    ${txtRegFirstName}    ${MIN_TIMEOUT}
    Wait Until Element Is Visible    ${btnRegRegister}    ${MIN_TIMEOUT}
    Input Text    ${txtRegFirstName}    ${name}
    Input Text    ${txtRegSurname}    ${surname}
    Input Text    ${txtRegEmail}    ${email}
    Input Text    ${txtRegPassword}    ${password}
    Input Text    ${txtRegConfirmPwd}    ${password}
    Click Element    ${btnRegRegister}

Click Login Register
    Wait Until Element Is Visible    ${btnLoginRegRegister}    ${MIN_TIMEOUT}
    Click Element    ${btnLoginRegRegister}

Verify Register Takealot Blank
    IF    '${PLATFORM_NAME}' == 'android'
        Verify Text On Screen    Please enter your first name    ${MIN_TIMEOUT}
        Verify Text On Screen    Please enter your surname    ${MIN_TIMEOUT}
        Verify Text On Screen    Please enter your email address    ${MIN_TIMEOUT}
        Verify Text On Screen    Please enter your password    ${MIN_TIMEOUT}
        Verify Text On Screen    Please confirm your password    ${MIN_TIMEOUT}
    ELSE IF    '${PLATFORM_NAME}' == 'ios'
        Verify Text On Screen    Please provide your first name    ${MIN_TIMEOUT}
        Verify Text On Screen    Please provide your last name    ${MIN_TIMEOUT}
        Verify Text On Screen    Please enter your email address    ${MIN_TIMEOUT}
        Verify Text On Screen    Please provide password    ${MIN_TIMEOUT}
        Verify Text On Screen    Please confirm your password    ${MIN_TIMEOUT}    
    END