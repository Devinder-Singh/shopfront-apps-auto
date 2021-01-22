*** Settings ***
Library           TalLibrary

*** Keywords ***
Click Domestic TV Licence
    Wait Until Element Is Visible    ${btnDomestic}    30s
    Click Element    ${btnDomestic}

Enter TV Licence
    [Arguments]    ${licemce}
    Wait Until Element Is Visible    ${txtLicence}    30s
    Clear Text    ${txtLicence}
    Input Text    ${txtLicence}    ${licemce}
    Click Element    ${btnVerify}

Click Verify TV Licence
    Wait Until Element Is Visible    ${btnVerify}    30s
    Click Element    ${btnVerify}
