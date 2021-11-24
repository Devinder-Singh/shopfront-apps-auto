*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Domestic TV Licence
    [Arguments]    ${licemce}=Domestic

    IF    '${PLATFORM_NAME}' == 'ios'
        ${txtProduct}=    Set Variable    chain=**/XCUIElementTypeStaticText[`label CONTAINS '${licemce}'`]
    ELSE IF    '${PLATFORM_NAME}' == 'android'
        ${txtProduct}=    Set Variable    xpath=//*[contains(@text, '${licemce}')]
    END

    IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Element Is Visible    ${scrTvLicType}    ${MIN_TIMEOUT}
    END
 
    Wait Until Element Is Visible    ${txtProduct}    ${MIN_TIMEOUT}
    Click Element    ${txtProduct}

Enter TV Licence
    [Arguments]    ${licemce}
    Wait Until Element Is Visible    ${txtLicence}    ${MIN_TIMEOUT}
    Input Text    ${txtLicence}    ${licemce}
    Click Element    ${btnVerify}

Click Verify TV Licence
    Wait Until Element Is Visible    ${btnVerify}    ${MIN_TIMEOUT}
    Click Element    ${btnVerify}

Click Back TV Licence
    Wait Until Element Is Visible    ${btnTvLicBack}    ${MIN_TIMEOUT}
    Click Element    ${btnTvLicBack}

Click Cancel TV Licence
    Wait Until Element Is Visible    ${btnLicenceCancel}    ${MIN_TIMEOUT}
    Click Element    ${btnLicenceCancel}

Verify Tv Licence Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${btnVerify}    ${MIN_TIMEOUT}

    IF    '${PLATFORM_NAME}' == 'ios'
        Page Should Contain Text    ${verifyText}
    ELSE IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Page Contains    ${verifyText}    ${MIN_TIMEOUT}
    END
    
Verify Tv Licence Element Exists
    [Arguments]    ${verifyElement}
    Wait Until Page Contains Element    ${verifyElement}

Enter Business TV Licence
    [Arguments]    ${licemce}    ${reg}
    Wait Until Element Is Visible    ${txtLicenceCompReg}    ${MIN_TIMEOUT}
    Input Text    ${txtLicenceCompReg}    ${licemce}
    Input Text    ${txtLicenceBusiness}    ${licemce}
    Click Element    ${btnVerify}

Enter Holiday Home TV Licence
    [Arguments]    ${licemce}
    Wait Until Element Is Visible    ${txtLicenceHolidayHome}    ${MIN_TIMEOUT}
    Input Text    ${txtLicenceHolidayHome}    ${licemce}
    Click Element    ${btnVerify}

Enter Dealer TV Licence
    [Arguments]    ${licemce}    ${reg}
    Wait Until Element Is Visible    ${txtLicenceCompRegDealer}    ${MIN_TIMEOUT}
    Input Text    ${txtLicenceCompRegDealer}    ${licemce}
    Input Text    ${txtLicenceDealer}    ${licemce}
    Click Element    ${btnVerify}
