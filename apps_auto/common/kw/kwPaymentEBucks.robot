*** Settings ***
Library           TalLibrary

*** Keywords ***
Fill In EBucks Credentials
    Wait Until Element Is Visible    ${btnEBucksProceed}    ${MIN_TIMEOUT}

    Clear Text    ${txtEBucksRSAID}
    Input Text    ${txtEBucksRSAID}    7301255232964

    Clear Text    ${txtEBucksPIN}
    Input Text    ${txtEBucksPIN}    1969

    Click Element    ${btnEBucksProceed}

Click EBucks Balance
    Wait Until Element Is Visible    ${btnEBucksBalance}    ${MIN_TIMEOUT}
    Click Element    ${btnEBucksBalance}

Fill In EBucks Amount Form
    [Arguments]    ${amount}

    Wait Until Element Is Visible    ${txtEBucksAmt}    ${MIN_TIMEOUT}

    Clear Text    ${txtEBucksAmt}
    Input Text    ${txtEBucksAmt}    ${amount}
    Click Element    ${btnEBucksRequestOTP}

Fill In EBUcks OTP Form

    Wait Until Element Is Visible    ${txtEBucksOTP}    ${MIN_TIMEOUT}

    Clear Text    ${txtEBucksOTP}
    Input Text    ${txtEBucksOTP}    1110
    Click Element    ${btnEBucksPay}

Verify Payment EBucks Text
    [Arguments]    ${verifyText}
    Wait Until Page Contains    ${verifyText}    20s
