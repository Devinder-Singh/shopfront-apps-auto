*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Verify Load Gift Voucher Screen
    Wait Until Element Is Visible    ${txtAddGiftVoucher}    15s
    Wait Until Element Is Visible    ${btnApplyVoucher}    1s

Apply Gift Voucher Code
    Wait Until Element Is Visible    ${btnApplyVoucher}    30s

    ${coupon}=    Get Payment Voucher Number
    Input Text    ${txtAddGiftVoucher}    ${coupon}
    Click Element    ${btnApplyVoucher}

Apply Dummy Gift Voucher Code
    Wait Until Element Is Visible    ${btnApplyVoucher}    30s

#    ${coupon}=    Get Payment Voucher Number
    ${coupon}=    Set Variable    'TVX-MOB-OPL'
    Input Text    ${txtAddGiftVoucher}    ${coupon}
    Click Element    ${btnApplyVoucher}
