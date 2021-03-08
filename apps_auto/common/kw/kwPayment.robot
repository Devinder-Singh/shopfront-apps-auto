*** Settings ***
Library           TalLibrary

*** Keywords ***
Click Pay With Mobi
    Wait Until Element Is Visible    ${btnPayWithMobi}    30s
    Click Element    ${btnPayWithMobi}

Click Pay With Ozow
    Wait Until Element Is Visible    ${btnPayWithOzow}    30s
    Click Element    ${btnPayWithOzow}

Click Donate No Thanks
    Wait Until Element Is Visible    ${btnNoThanks}    30s
    Click Element    ${btnNoThanks}

Click Payment Donate
    Wait Until Element Is Visible    ${lblPaymentDonate}    30s
    Click Element    ${lblPaymentDonate}

Click Payment Confirm Order
    Wait Until Element Is Visible    ${btnPayWithCash}    30s
    Click Element    ${btnPayWithCash}

Click Pay With Credit Card
    Wait Until Element Is Visible    ${btnCreditCard}    30s
    Click Element    ${btnCreditCard}

Click Pay With eBucks
    Wait Until Element Is Visible    ${btnPayWithEBucks}    30s
    Click Element    ${btnPayWithEBucks}

Select Earn eBucks
    Wait Until Element Is Visible    ${txtPaymentEBucks}    30s
    Click Element    ${txtPaymentEBucks}

Click Change Payment Method
    Wait Until Element Is Visible    ${btnChange}    30s
    Click Element    ${btnChange}

Click Payment Cancel
    Wait Until Element Is Visible    ${txtPaymentCancel}    30s
    Click Element    ${txtPaymentCancel}

Click Change Payment Delivery Method
    Wait Until Element Is Visible    ${btnChange}    30s
    swipe by percent    50     70     50    100  1000
    Wait Until Element Is Visible    ${txtChangePaymentDeliveryMethod}    30s
    Click Element    ${txtChangePaymentDeliveryMethod}

Click Change Payment Pickup Point
    Wait Until Element Is Visible    ${btnChange}    30s
    swipe by percent    50     70     50    100  1000
    Wait Until Element Is Visible    ${txtChangePaymentPickup}    30s
    Click Element    ${txtChangePaymentPickup}

Click Payment Show Details
    Wait Until Element Is Visible    ${btnChange}    30s
    swipe by percent    50     70     50    100  1000
    Wait Until Element Is Visible    ${txtPaymentShowDetails}    30s
    Click Element    ${txtPaymentShowDetails}

Click Pay With Payfast
    Wait Until Element Is Visible    ${btnPayWithFast}    30s
    Click Element    ${btnPayWithFast}

Click Back Payment Screen
    Wait Until Element Is Visible    ${btnBackPayment}    30s
    Click Element    ${btnBackPayment}

Click Add Gift
    Wait Until Element Is Visible    ${txtGiftAdd}    30s
    Click Element    ${txtGiftAdd}

Click Payment Donation Info Icon
    Wait Until Element Is Visible    ${btnPaymentDonationIcon}    30s
    Click Element    ${btnPaymentDonationIcon}

Click Payment Donation Ok
    Wait Until Element Is Visible    ${btnPaymentDonationOK}    30s
    Click Element    ${btnPaymentDonationOK}

Click Payment Donation Deselect
    Wait Until Element Is Visible    ${rdoDonationSelected}    30s
    Click Element    ${rdoDonationSelected}

Verify Payment Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${btnChange}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s

Verify Payment Details Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${txtPaymentCancel}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s

Verify Payment Text Not
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${btnChange}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Not Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Does Not Contain    ${verifyText}

Verify Payment Donation Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${btnNoThanks}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s

Verify Payment Donation Info Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${btnPaymentDonationOK}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s

Verify Payment Element Not Exists
    [Arguments]    ${verifyElement}
    Wait Until Element Is Visible    ${btnBackPayment}    30s
    swipe by percent    50     70     50    100  1000
    Wait Until Page Does Not Contain Element    ${verifyElement}

Verify Payment Element Exists
    [Arguments]    ${verifyElement}
    Wait Until Page Contains Element    ${verifyElement}
