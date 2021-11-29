*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Verify Confirmation Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${btnTrackOrder}    ${MIN_TIMEOUT}
    
    IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Page Contains    ${verifyText}    ${MIN_TIMEOUT}
    ELSE IF    '${PLATFORM_NAME}' == 'ios'
        Page Should Contain Text    ${verifyText}
    END

Verify Confirmation Element Exists
    [Arguments]    ${verifyElement}
    Wait Until Page Contains Element    ${verifyElement}

Click PayFast Cancel
    Wait Until Element Is Visible    ${btnPayFastCancel}    ${MIN_TIMEOUT}
    Click Element    ${btnPayFastCancel}

Click Track Order
    IF    '${PLATFORM_NAME}' == 'ios'
        ${chkbtnStatus}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnNotnow}
            IF    ${chkbtnStatus} == ${True}
                Click Element    ${btnNotnow}
            END
    ELSE IF    '${PLATFORM_NAME}' == 'android'
        ${chkbtnStatus}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnappReviewClose}
            IF    ${chkbtnStatus} == ${True}
                Click Element    ${btnappReviewClose}
            END
    END
    Wait Until Element Is Visible    ${btnTrackOrder}    ${MIN_TIMEOUT}
    Click Element    ${btnTrackOrder}

Close Ratings Popup
    [Documentation]    Clicks the "Not now" button within the ratings popup that appears on the confirmation page.
    Wait Until Element Is Visible    ${lblRatingsNotNowConfirmationPopup}    ${MAX_TIMEOUT}
    Click Element    ${lblRatingsNotNowConfirmationPopup}

verify Order Confirmation
    [Documentation]    Confirms that an order has been processed successfully.
    Verify Element On Screen    ${txtOrderConfirmation}    ${MIN_TIMEOUT}
