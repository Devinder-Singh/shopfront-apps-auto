*** Settings ***
Library           TalLibrary

*** Keywords ***
Enter Payment Voucher Code
    [Arguments]    ${coupon}

    Wait Until Element Is Visible    ${btnVoucherApply}    30s

    Clear Text    ${txtVoucherCode}
    Input Text    ${txtVoucherCode}    ${coupon}

Click Apply Payment Voucher
    Wait Until Element Is Visible    ${btnVoucherApply}    30s
    Click Element    ${btnVoucherApply}

Verify Payment Voucher Text
    [Arguments]    ${verifyText}
    Wait Until Page Contains    ${verifyText}    20s
