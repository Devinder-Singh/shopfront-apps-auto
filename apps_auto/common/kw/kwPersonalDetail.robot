*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Update Personal Detail Name
    [Arguments]    ${name}
    Wait Until Element Is Visible    ${lblPersonalDetailName}    5s
    Click Element    ${lblPersonalDetailName}
    Clear Text    ${txtFirstName}
    Input Text    ${txtFirstName}    ${name}
    Click Element    ${btnSaveDetail}

Update Personal Detail Email
    [Arguments]    ${email}    ${pwd}
    Wait Until Element Is Visible    ${lblPersonalDetailEmail}    5s
    Click Element    ${lblPersonalDetailEmail}

    Input Text    ${txtNewEmail}    ${email}
    Input Text    ${txtConfNewEmail}    ${email}
    Input Text    ${txtPDPwd}    ${pwd}
    Click Element    ${btnSaveDetail}

Update Personal Detail Mobile
    [Arguments]    ${mobile}
    Wait Until Element Is Visible    ${lblPersonalDetailMobile}    5s
    Click Element    ${lblPersonalDetailMobile}

    Input Text    ${txtPDMobile}    ${mobile}
    Click Element    ${btnSaveDetail}

Update Personal Detail Password
    [Arguments]    ${currentPwd}    ${newPwd}
    Wait Until Element Is Visible    ${lblPersonalDetailPwd}    5s
    Click Element    ${lblPersonalDetailPwd}

    Input Text    ${txtCurrentPwd}    ${currentPwd}
    Input Text    ${txtNewPwd}    ${newPwd}
    Input Text    ${txtConfNewPwd}    ${newPwd}
    Click Element    ${btnSaveDetail}

Update Personal Detail Business
    [Arguments]    ${businessName}    ${vat}
    Wait Until Element Is Visible    ${lblPersonalDetailBusiness}    5s
    Click Element    ${lblPersonalDetailBusiness}

    Input Text    ${txtPDBusName}    ${businessName}
    Input Text    ${txtPDVat}    ${vat}
    Click Element    ${btnSaveDetail}
