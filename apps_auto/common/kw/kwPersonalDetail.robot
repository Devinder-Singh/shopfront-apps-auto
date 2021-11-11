*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Update Personal Detail Name
    [Arguments]    ${name}
    Wait Until Element Is Visible    ${lblPersonalDetailName}    ${MIN_TIMEOUT}
    Click Element    ${lblPersonalDetailName}
    Clear Text    ${txtFirstName}
    Input Text    ${txtFirstName}    ${name}
    Click Element    ${btnSaveDetail}

Update Personal Detail LastName
    [Arguments]    ${name}
    Wait Until Element Is Visible    ${lblPersonalDetailName}    ${MIN_TIMEOUT}
    Click Element    ${lblPersonalDetailName}
    Clear Text    ${txtLastName}
    Input Text    ${txtLastName}    ${name}
    Click Element    ${btnSaveDetail}

Clear Personal Detail
    Wait Until Element Is Visible    ${lblPersonalDetailName}    ${MIN_TIMEOUT}
    Click Element    ${lblPersonalDetailName}
    Clear Text    ${txtLastName}
    Clear Text    ${txtFirstName}
    Click Element    ${btnSaveDetail}

Update Personal Detail Email
    [Arguments]    ${email}    ${pwd}
    Get New Email Address

    ${email}=    Set Variable    ${None}
    IF    ${email} == '?'
        ${email}=    Set Variable    ${new_email_address}
    ELSE
        ${email}=    Set Variable    ${email}
    END

    Wait Until Element Is Visible    ${lblPersonalDetailEmail}    ${MIN_TIMEOUT}
    Click Element    ${lblPersonalDetailEmail}

    Input Text    ${txtNewEmail}    ${email}
    Input Text    ${txtConfNewEmail}    ${email}
    Input Text    ${txtPDPwd}    ${pwd}
    Click Element    ${btnSaveDetail}

Update Personal Detail Invalid Email
    [Arguments]    ${email}    ${confEmail}    ${pwd}
    Wait Until Element Is Visible    ${lblPersonalDetailEmail}    ${MIN_TIMEOUT}
    Click Element    ${lblPersonalDetailEmail}

    Input Text    ${txtNewEmail}    ${email}
    Input Text    ${txtConfNewEmail}    ${confEmail}
    Input Text    ${txtPDPwd}    ${pwd}
    Click Element    ${btnSaveDetail}

Click Personal Detail Mobile
    Wait Until Element Is Visible    ${lblPersonalDetailMobile}    ${MIN_TIMEOUT}
    Click Element    ${lblPersonalDetailMobile}

Update Personal Detail Mobile
    [Arguments]    ${mobile}
    Wait Until Element Is Visible    ${lblPersonalDetailMobile}    ${MIN_TIMEOUT}
    Click Element    ${lblPersonalDetailMobile}
#    Sleep    2s

    ${chkTextSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${txtPDMobile}    ${MIN_TIMEOUT}
    IF    ${chkTextSuccess} == ${True}
        Input Text    ${txtPDMobile}    ${mobile}
    ELSE
        Input Text    ${txtPDMobileEx}    ${mobile}
    END

    Click Element    ${btnSaveDetail}

Update Personal Detail Mobile Country Code
    [Arguments]    ${mobile}
    Wait Until Element Is Visible    ${lblPersonalDetailMobile}    ${MIN_TIMEOUT}
    Click Element    ${lblPersonalDetailMobile}

    Click Element    ${lblPersonalDetailMobileCC}
#    Sleep    1s
#    Verify Text On Screen    Afghanistan    5s
    Wait Until Element Is Visible    ${lblPersonalDetailCCAfghanistan}    ${MIN_TIMEOUT}
    Click Element    ${lblPersonalDetailCCAfghanistan}
#    Sleep    2s

    Wait Until Element Is Visible    ${txtPDMobile}    ${MIN_TIMEOUT}
    Input Text    ${txtPDMobile}    ${mobile}
    Click Element    ${btnSaveDetail}

Click Why Add Personal Detail Mobile
    IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Element Is Visible    ${lnkPDMobile}    ${MIN_TIMEOUT}
    ELSE IF    '${PLATFORM_NAME}' == 'ios'
        Wait Until Element Is Visible    ${lblPersonalDetailMobile}    ${MIN_TIMEOUT}
    END

    Click Element    ${lnkPDMobile}

Click Why Add Personal Detail Business Detail
    IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Element Is Visible    ${lnkPDBusiness}    ${MIN_TIMEOUT}
    ELSE IF    '${PLATFORM_NAME}' == 'ios'
       Wait Until Element Is Visible    ${lblPersonalDetailMobile}    ${MIN_TIMEOUT}
    END
    
    Click Element    ${lnkPDBusiness}

Clear Personal Detail Mobile
    Wait Until Element Is Visible    ${lblPersonalDetailMobile}    ${MIN_TIMEOUT}
    Click Element    ${lblPersonalDetailMobile}

    Clear Text    ${txtPDMobile}
    Click Element    ${btnSaveDetail}

Update Personal Detail Password
    [Arguments]    ${currentPwd}    ${newPwd}
    Wait Until Element Is Visible    ${lblPersonalDetailPwd}    ${MIN_TIMEOUT}
    Click Element    ${lblPersonalDetailPwd}

    Input Text    ${txtCurrentPwd}    ${currentPwd}
    Input Text    ${txtNewPwd}    ${newPwd}
    Input Text    ${txtConfNewPwd}    ${newPwd}
    Click Element    ${btnSaveDetail}

Click Personal Details Password
    Wait Until Element Is Visible    ${lblPersonalDetailPwd}    ${MIN_TIMEOUT}
    Click Element    ${lblPersonalDetailPwd}

Update Personal Detail Invalid Password
    [Arguments]    ${currentPwd}    ${newPwd}    ${confPwd}

    Wait Until Element Is Visible    ${btnSaveDetail}    ${MIN_TIMEOUT}

    Clear Text    ${txtCurrentPwd}
    Input Text    ${txtCurrentPwd}    ${currentPwd}
    Clear Text    ${txtNewPwd}
    Input Text    ${txtNewPwd}    ${newPwd}
    Clear Text    ${txtConfNewPwd}
    Input Text    ${txtConfNewPwd}    ${confPwd}
    Click Element    ${btnSaveDetail}

Update Personal Detail Business
    [Arguments]    ${businessName}    ${vat}
    Wait Until Element Is Visible    ${lblPersonalDetailBusiness}    ${MIN_TIMEOUT}
    Click Element    ${lblPersonalDetailBusiness}

    Clear Text    ${txtPDBusName}
    Clear Text    ${txtPDVat}

    Input Text    ${txtPDBusName}    ${businessName}
    Input Text    ${txtPDVat}    ${vat}
    Click Element    ${btnSaveDetail}
