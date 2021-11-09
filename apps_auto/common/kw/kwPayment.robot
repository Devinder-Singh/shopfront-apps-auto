*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Pay With Mobi
    Wait Until Element Is Visible    ${btnPayWithMobi}    ${MIN_TIMEOUT}
    Click Element    ${btnPayWithMobi}

Click Pay With Ozow
    Wait Until Element Is Visible    ${btnPayWithOzow}    ${MIN_TIMEOUT}
    Click Element    ${btnPayWithOzow}

Click Donate No Thanks
    Wait Until Element Is Visible    ${btnNoThanks}    ${MIN_TIMEOUT}
    Click Element    ${btnNoThanks}

Click Payment Donate
    Wait Until Element Is Visible    ${lblPaymentDonate}    ${MIN_TIMEOUT}
    Click Element    ${lblPaymentDonate}

Click Payment Confirm Order
    Wait Until Element Is Visible    ${btnPayWithCash}    ${MIN_TIMEOUT}
    Click Element    ${btnPayWithCash}

Click Pay With Credit Card
    Wait Until Element Is Visible    ${btnCreditCard}    ${MIN_TIMEOUT}
    Click Element    ${btnCreditCard}

Click Pay With eBucks
    Wait Until Element Is Visible    ${btnPayWithEBucks}    ${MIN_TIMEOUT}
    Click Element    ${btnPayWithEBucks}

Select Earn eBucks
    Wait Until Element Is Visible    ${txtPaymentEBucks}    ${MIN_TIMEOUT}
    Click Element    ${txtPaymentEBucks}

Click Change Payment Method
    Wait Until Element Is Visible    ${txtPaymentVoucher}    ${MIN_TIMEOUT}
    
    ${rdoPaymentCredit}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${rdoPaymentUseMyCredit}    1s
    IF    ${rdoPaymentCredit} == ${True}
        Click Element    ${rdoPaymentUseMyCredit}
    END

    Wait Until Element Is Visible    ${btnChange}    ${MIN_TIMEOUT}
    Click Element    ${btnChange}

Click Change Payment Method Only
    Wait Until Element Is Visible    ${btnChange}    ${MIN_TIMEOUT}
    Click Element    ${btnChange}

Click Payment Cancel
    Wait Until Element Is Visible    ${txtPaymentCancel}    ${MIN_TIMEOUT}
    Click Element    ${txtPaymentCancel}

Click Change Payment Delivery Method
    Wait Until Element Is Visible    ${btnChange}    ${MIN_TIMEOUT}
    swipe by percent    50    70    50    100    1000
    Wait Until Element Is Visible    ${txtChangePaymentDeliveryMethod}    ${MIN_TIMEOUT}
    Click Element    ${txtChangePaymentDeliveryMethod}

Click Change Payment Pickup Point
    Wait Until Element Is Visible    ${btnChange}    ${MIN_TIMEOUT}
    swipe by percent    50    70    50    100    1000
    Wait Until Element Is Visible    ${txtChangePaymentPickup}    ${MIN_TIMEOUT}
    Click Element    ${txtChangePaymentPickup}

Click Payment Show Details
    Wait Until Element Is Visible    ${btnChange}    ${MIN_TIMEOUT}
    swipe by percent    50    70    50    100    1000
    Wait Until Element Is Visible    ${txtPaymentShowDetails}    ${MIN_TIMEOUT}
    Click Element    ${txtPaymentShowDetails}

Click Pay With Payfast
    Wait Until Element Is Visible    ${btnPayWithFast}    ${MIN_TIMEOUT}
    Click Element    ${btnPayWithFast}

Click Back Payment Screen
    Wait Until Element Is Visible    ${btnBackPayment}    ${MIN_TIMEOUT}
    Click Element    ${btnBackPayment}

Click Add Gift
    Wait Until Element Is Visible    ${txtGiftAdd}    ${MIN_TIMEOUT}
    Click Element    ${txtGiftAdd}

Click Add Payment Voucher
    Wait Until Element Is Visible    ${txtPaymentVoucher}    ${MIN_TIMEOUT}
    Click Element    ${txtPaymentVoucher}

Click Payment Donation Info Icon
    Wait Until Element Is Visible    ${btnPaymentDonationIcon}    ${MIN_TIMEOUT}
    Click Element    ${btnPaymentDonationIcon}

Click Payment Donation Ok
    Wait Until Element Is Visible    ${btnPaymentDonationOK}    ${MIN_TIMEOUT}
    Click Element    ${btnPaymentDonationOK}

Click Payment Donation Deselect
    Wait Until Element Is Visible    ${rdoDonationSelected}    ${MIN_TIMEOUT}
    Click Element    ${rdoDonationSelected}

Verify Payment Text
    [Arguments]    ${verifyText}
    Wait Until Page Contains    ${verifyText}    ${MIN_TIMEOUT}

Click Payment Donation
    Wait Until Element Is Visible    ${rdoPaymentDonation}    ${MIN_TIMEOUT}
    Click Element    ${rdoPaymentDonation}

Verify Payment Details Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${txtPaymentCancel}    ${MIN_TIMEOUT}

    IF    ${PLATFORM_NAME} == 'ios'
        Page Should Contain Text    ${verifyText}
    ELSE IF    ${PLATFORM_NAME} == 'android'
        Wait Until Page Contains    ${verifyText}    10s
    END

Verify Payment Text Not
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${btnChange}    ${MIN_TIMEOUT}

    IF    ${PLATFORM_NAME} == 'ios'
        Page Should Not Contain Text    ${verifyText}
    ELSE IF    ${PLATFORM_NAME} == 'android'
        Wait Until Page Does Not Contain    ${verifyText}
    END

Verify Payment Donation Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${btnNoThanks}    ${MIN_TIMEOUT}
    
    IF    ${PLATFORM_NAME} == 'ios'
        Page Should Contain Text    ${verifyText}
    ELSE IF    ${PLATFORM_NAME} == 'android'
        Wait Until Page Contains    ${verifyText}    ${MIN_TIMEOUT}
    END

Verify Payment Donation Info Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${btnPaymentDonationOK}    ${MIN_TIMEOUT}

    IF    ${PLATFORM_NAME} == 'ios'
        Page Should Contain Text    ${verifyText}
    ELSE IF    ${PLATFORM_NAME} == 'android'
         Wait Until Page Contains    ${verifyText}    ${MIN_TIMEOUT}
    END

Verify Payment Element Not Exists
    [Arguments]    ${verifyElement}
    Wait Until Element Is Visible    ${btnBackPayment}    ${MIN_TIMEOUT}
    swipe by percent    50    70    50    100    1000
    Wait Until Page Does Not Contain Element    ${verifyElement}

Verify Payment Element Exists
    [Arguments]    ${verifyElement}
    Wait Until Page Contains Element    ${verifyElement}
