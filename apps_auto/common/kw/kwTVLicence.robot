*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Domestic TV Licence
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${scrTvLicType}    30s
    Wait Until Element Is Visible    ${btnDomestic}    30s
    Click Element    ${btnDomestic}

Enter TV Licence
    [Arguments]    ${licemce}
    Wait Until Element Is Visible    ${txtLicence}    30s
    Input Text    ${txtLicence}    ${licemce}
    Click Element    ${btnVerify}

Click Verify TV Licence
    Wait Until Element Is Visible    ${btnVerify}    30s
    Click Element    ${btnVerify}

Click Business TV Licence
    Wait Until Element Is Visible    ${btnTvLicBusiness}    30s
    Click Element    ${btnTvLicBusiness}

Click Holiday TV Licence
    Wait Until Element Is Visible    ${btnTvLicHoliday}    30s
    Click Element    ${btnTvLicHoliday}

Click Back TV Licence
    Wait Until Element Is Visible    ${btnTvLicBack}    30s
    Click Element    ${btnTvLicBack}

Verify Tv Licence Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${btnVerify}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s

Verify Tv Licence Element Exists
    [Arguments]    ${verifyElement}
    Wait Until Page Contains Element    ${verifyElement}
