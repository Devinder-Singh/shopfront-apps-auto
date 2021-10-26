*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Domestic TV Licence
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${scrTvLicType}    ${MIN_TIMEOUT}
    Wait Until Element Is Visible    ${btnDomestic}    ${MIN_TIMEOUT}
    Click Element    ${btnDomestic}

Enter TV Licence
    [Arguments]    ${licemce}
    Wait Until Element Is Visible    ${txtLicence}    ${MIN_TIMEOUT}
    Input Text    ${txtLicence}    ${licemce}
    Click Element    ${btnVerify}

Click Verify TV Licence
    Wait Until Element Is Visible    ${btnVerify}    ${MIN_TIMEOUT}
    Click Element    ${btnVerify}

Click Business TV Licence
    Wait Until Element Is Visible    ${btnTvLicBusiness}    ${MIN_TIMEOUT}
    Click Element    ${btnTvLicBusiness}

Click Holiday TV Licence
    Wait Until Element Is Visible    ${btnTvLicHoliday}    ${MIN_TIMEOUT}
    Click Element    ${btnTvLicHoliday}

Click Back TV Licence
    Wait Until Element Is Visible    ${btnTvLicBack}    ${MIN_TIMEOUT}
    Click Element    ${btnTvLicBack}

Verify Tv Licence Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${btnVerify}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s

Verify Tv Licence Element Exists
    [Arguments]    ${verifyElement}
    Wait Until Page Contains Element    ${verifyElement}
