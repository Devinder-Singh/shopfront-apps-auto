*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Enter Payment Voucher Code
    Wait Until Element Is Visible    ${btnVoucherApply}    30s

    ${coupon}=    Get Payment Voucher Number
    Clear Text    ${txtVoucherCode}
    Input Text    ${txtVoucherCode}    ${coupon}

Click Apply Payment Voucher
    Wait Until Element Is Visible    ${btnVoucherApply}    30s
    Click Element    ${btnVoucherApply}

Click Back Payment Voucher
    Wait Until Element Is Visible    ${btnVoucherCancel}    30s
    Click Element    ${btnVoucherCancel}

Verify Payment Voucher Text
    [Arguments]    ${verifyText}
    Wait Until Page Contains    ${verifyText}    20s
