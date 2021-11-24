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

Enter EBUcks User ID and Password
    [Arguments]    ${userID}=7301255232964    ${pwd}=1969

    Wait Until Element Is Visible    ${btnEBucksLogin}    ${MIN_TIMEOUT}

    Input Text    ${txtEBucksUserID}    ${userID}
    Input Text    ${txtEBucksPwd}    ${pwd}
    Click Element    ${btnEBucksLogin}

Click EBUcks Account
    Wait Until Element Is Visible    ${lblEBucksAcc}    ${MIN_TIMEOUT}
    Click Element    ${lblEBucksAcc}

Enter EBUcks OTP
    Wait Until Element Is Visible    ${btnEBucksOTP}    ${MIN_TIMEOUT}
    Input Text    ${txtEBucksOTP}    331426
    Click Element    ${btnEBucksPay}

Enter EBUcks Amount
    Wait Until Element Is Visible    ${btnEBucksPay}    ${MIN_TIMEOUT}
    Input Text    ${txtEBucksAmt}    4990
    Click Element    ${btnEBucksOTP}
