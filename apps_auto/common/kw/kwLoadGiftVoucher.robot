*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Verify Load Gift Voucher Screen
    Wait Until Element Is Visible    ${txtAddGiftVoucher}    ${MIN_TIMEOUT}
    Wait Until Element Is Visible    ${btnApplyVoucher}    ${MIN_TIMEOUT}

Apply Gift Voucher Code
    Wait Until Element Is Visible    ${btnApplyVoucher}    ${MIN_TIMEOUT}

    ${coupon}=    Get Payment Voucher Number
    Input Text    ${txtAddGiftVoucher}    ${coupon}
    Click Element    ${btnApplyVoucher}

Apply Dummy Gift Voucher Code
    Wait Until Element Is Visible    ${btnApplyVoucher}    ${MIN_TIMEOUT}

#    ${coupon}=    Get Payment Voucher Number
    ${coupon}=    Set Variable    'TVX-MOB-OPL'
    Input Text    ${txtAddGiftVoucher}    ${coupon}
    Click Element    ${btnApplyVoucher}
