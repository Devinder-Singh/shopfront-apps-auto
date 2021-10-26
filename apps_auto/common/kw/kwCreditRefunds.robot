*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Menu Credit History
    Wait Until Element Is Visible    ${mnuCreditHistory}    ${MIN_TIMEOUT}
    Click Element    ${mnuCreditHistory}

Click Menu Refund History
    Wait Until Element Is Visible    ${mnuRefundHistory}    ${MIN_TIMEOUT}
    Click Element    ${mnuRefundHistory}

Click Back Credit and Refunds
    Wait Until Element Is Visible    ${btnBackCredit}    5s
    Click Element    ${btnBackCredit}
