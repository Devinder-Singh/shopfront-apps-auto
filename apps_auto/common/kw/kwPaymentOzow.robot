*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Back Payment Ozow
    Wait Until Element Is Visible    ${navOzow}    ${MIN_TIMEOUT}
    Click Element    ${btnBackOzow}

Verify Payment Ozow Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${navOzow}    ${MIN_TIMEOUT}
    IF    '${PLATFORM_NAME}' == 'ios'
        Page Should Contain Text    ${verifyText}
    ELSE IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Page Contains    ${verifyText}    ${MIN_TIMEOUT}
    END

Click Ozow Payment Bank
    Wait Until Element Is Visible    ${btnOzowBank}    ${MIN_TIMEOUT}
    Click Element    ${btnOzowBank}

Enter Ozow Username Password Submit
    [Arguments]    ${userName}    ${pwd}
    Wait Until Element Is Visible    ${btnOzowSubmitUser}    ${MIN_TIMEOUT}
    Input Text    ${txtOzowUsername}    ${userName}
    Input Text    ${txtOzowPassword}    ${pwd}
    Click Element    ${btnOzowSubmitUser}

Select Ozow Acc No Submit
    Wait Until Element Is Visible    ${btnOzowAccNo}    ${MIN_TIMEOUT}
    Click Element    ${btnOzowAccNo}
    Click Element    ${btnOzowSubmitAcc}

Enter Ozow OTP Submit
    [Arguments]    ${otp}=12345
    Wait Until Element Is Visible    ${btnOzowSubmitOTP}    ${MIN_TIMEOUT}
    Input Text    ${txtOzowOTP}    ${otp}
    Click Element    ${btnOzowSubmitOTP}
