*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Enter Payment Voucher Code
    Wait Until Element Is Visible    ${btnVoucherApply}    ${MIN_TIMEOUT}

    ${coupon}=    Get Payment Voucher Number
    Clear Text    ${txtVoucherCode}
    Input Text    ${txtVoucherCode}    ${coupon}

Enter Payment Voucher Expired
    Wait Until Element Is Visible    ${btnVoucherApply}    ${MIN_TIMEOUT}

    ${coupon}=    Get Payment Voucher Number Expired
    Clear Text    ${txtVoucherCode}
    Input Text    ${txtVoucherCode}    ${coupon}

Enter Payment Voucher Used
    Wait Until Element Is Visible    ${btnVoucherApply}    ${MIN_TIMEOUT}

    Clear Text    ${txtVoucherCode}
    Input Text    ${txtVoucherCode}    ${query_result_voucher}

Click Apply Payment Voucher
    Wait Until Element Is Visible    ${btnVoucherApply}    ${MIN_TIMEOUT}
    Click Element    ${btnVoucherApply}

Click Back Payment Voucher
    Wait Until Element Is Visible    ${btnVoucherCancel}    ${MIN_TIMEOUT}
    Click Element    ${btnVoucherCancel}

Verify Payment Voucher Text
    [Arguments]    ${verifyText}
    Wait Until Page Contains    ${verifyText}    ${MIN_TIMEOUT}
