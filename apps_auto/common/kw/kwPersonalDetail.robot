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

Update Personal Detail LastName
    [Arguments]    ${name}
    Wait Until Element Is Visible    ${lblPersonalDetailName}    5s
    Click Element    ${lblPersonalDetailName}
    Clear Text    ${txtLastName}
    Input Text    ${txtLastName}    ${name}
    Click Element    ${btnSaveDetail}

Clear Personal Detail
    Wait Until Element Is Visible    ${lblPersonalDetailName}    5s
    Click Element    ${lblPersonalDetailName}
    Clear Text    ${txtLastName}
    Clear Text    ${txtFirstName}
    Click Element    ${btnSaveDetail}

Update Personal Detail Email
    [Arguments]    ${email}    ${pwd}

    Get New Email Address
    ${email}=    Set Variable If    '${email}'=='?'    ${new_email_address}    '${email}'!='?'    ${email}

    Wait Until Element Is Visible    ${lblPersonalDetailEmail}    10s
    Click Element    ${lblPersonalDetailEmail}

    Input Text    ${txtNewEmail}    ${email}
    Input Text    ${txtConfNewEmail}    ${email}
    Input Text    ${txtPDPwd}    ${pwd}
    Click Element    ${btnSaveDetail}

Update Personal Detail Invalid Email
    [Arguments]    ${email}    ${confEmail}    ${pwd}
    Wait Until Element Is Visible    ${lblPersonalDetailEmail}    5s
    Click Element    ${lblPersonalDetailEmail}

    Input Text    ${txtNewEmail}    ${email}
    Input Text    ${txtConfNewEmail}    ${confEmail}
    Input Text    ${txtPDPwd}    ${pwd}
    Click Element    ${btnSaveDetail}

Click Personal Detail Mobile
    Wait Until Element Is Visible    ${lblPersonalDetailMobile}    10s
    Click Element    ${lblPersonalDetailMobile}

Update Personal Detail Mobile
    [Arguments]    ${mobile}
    Wait Until Element Is Visible    ${lblPersonalDetailMobile}    5s
    Click Element    ${lblPersonalDetailMobile}
#    Sleep    2s

    ${chkTextSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${txtPDMobile}    5s
    Run Keyword If    ${chkTextSuccess}==${True}    Input Text    ${txtPDMobile}    ${mobile}
    Run Keyword If    ${chkTextSuccess}==${False}    Input Text    ${txtPDMobileEx}    ${mobile}

    Click Element    ${btnSaveDetail}

Update Personal Detail Mobile Country Code
    [Arguments]    ${mobile}
    Wait Until Element Is Visible    ${lblPersonalDetailMobile}    5s
    Click Element    ${lblPersonalDetailMobile}

    Click Element    ${lblPersonalDetailMobileCC}
#    Sleep    1s
#    Verify Text On Screen    Afghanistan    5s
    Wait Until Element Is Visible    ${lblPersonalDetailCCAfghanistan}    5s
    Click Element    ${lblPersonalDetailCCAfghanistan}
#    Sleep    2s

    Wait Until Element Is Visible    ${txtPDMobile}    5s
    Input Text    ${txtPDMobile}    ${mobile}
    Click Element    ${btnSaveDetail}

Click Why Add Personal Detail Mobile
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${lnkPDMobile}    10s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${lblPersonalDetailMobile}    10s
    Click Element    ${lnkPDMobile}

Click Why Add Personal Detail Business Detail
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${lnkPDBusiness}    10s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${lblPersonalDetailMobile}    10s
    Click Element    ${lnkPDBusiness}

Clear Personal Detail Mobile
    Wait Until Element Is Visible    ${lblPersonalDetailMobile}    10s
    Click Element    ${lblPersonalDetailMobile}

    Clear Text    ${txtPDMobile}
    Click Element    ${btnSaveDetail}

Update Personal Detail Password
    [Arguments]    ${currentPwd}    ${newPwd}
    Wait Until Element Is Visible    ${lblPersonalDetailPwd}    10s
    Click Element    ${lblPersonalDetailPwd}

    Input Text    ${txtCurrentPwd}    ${currentPwd}
    Input Text    ${txtNewPwd}    ${newPwd}
    Input Text    ${txtConfNewPwd}    ${newPwd}
    Click Element    ${btnSaveDetail}

Click Personal Details Password
    Wait Until Element Is Visible    ${lblPersonalDetailPwd}    10s
    Click Element    ${lblPersonalDetailPwd}

Update Personal Detail Invalid Password
    [Arguments]    ${currentPwd}    ${newPwd}    ${confPwd}

    Wait Until Element Is Visible    ${btnSaveDetail}    30s

    Clear Text    ${txtCurrentPwd}
    Input Text    ${txtCurrentPwd}    ${currentPwd}
    Clear Text    ${txtNewPwd}
    Input Text    ${txtNewPwd}    ${newPwd}
    Clear Text    ${txtConfNewPwd}
    Input Text    ${txtConfNewPwd}    ${confPwd}
    Click Element    ${btnSaveDetail}

Update Personal Detail Business
    [Arguments]    ${businessName}    ${vat}
    Wait Until Element Is Visible    ${lblPersonalDetailBusiness}    5s
    Click Element    ${lblPersonalDetailBusiness}

    Clear Text    ${txtPDBusName}
    Clear Text    ${txtPDVat}

    Input Text    ${txtPDBusName}    ${businessName}
    Input Text    ${txtPDVat}    ${vat}
    Click Element    ${btnSaveDetail}
