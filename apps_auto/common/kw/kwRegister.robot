*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Register Takealot
    [Arguments]    ${name}    ${surname}    ${email}    ${password}

    Wait Until Element Is Visible    ${btnLoginRegRegister}    30s
    Click Element    ${btnLoginRegRegister}

    Wait Until Element Is Visible    ${txtRegFirstName}    30s
    Input Text    ${txtRegFirstName}    ${name}
    Input Text    ${txtRegSurname}    ${surname}
    Input Text    ${txtRegEmail}    ${email}
    Input Text    ${txtRegPassword}    ${password}
    Input Text    ${txtRegConfirmPwd}    ${password}

    Click Element    ${btnRegRegister}

    Verify Text On Screen    You are now successfully registered and logged in    30s
