*** Settings ***
Library           TalLibrary

*** Keywords ***
Click Donate No Thanks
    Wait Until Element Is Visible    ${btnNoThanks}    30s
    Click Element    ${btnNoThanks}

Click Pay With Credit Card
    Wait Until Element Is Visible    ${btnCreditCard}    30s
    Click Element    ${btnCreditCard}

Click Change Payment Method
    Wait Until Element Is Visible    ${btnChange}    30s
    Click Element    ${btnChange}

Click Pay With Payfast
    Wait Until Element Is Visible    ${btnPayWithFast}    30s
    Click Element    ${btnPayWithFast}
