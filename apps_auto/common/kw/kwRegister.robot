*** Settings ***
Library           TalLibrary

*** Keywords ***
Register Takealot
    [Arguments]    ${name}    ${surname}    ${email}    ${password}

    Wait Until Element Is Visible    ${txtRegFirstName}    30s
    Input Text    ${txtRegFirstName}    ${name}
    Input Text    ${txtRegSurname}    ${surname}
    Input Text    ${txtRegEmail}    ${email}
    Input Text    ${txtRegPassword}    ${password}
    Input Text    ${txtRegConfirmPwd}    ${password}

    Click Element    ${btnRegRegister}

Verify Register Text
    [Arguments]    ${verifyText}

    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Page Contains    ${verifyText}    10s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s
