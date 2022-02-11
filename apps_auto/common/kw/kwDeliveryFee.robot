*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***

Click Any Delivery
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${scrDeliveryFeeAndroid}    ${MIN_TIMEOUT}
    Set Implicitly Wait    1
    ${chkTextSuccess}=    Set Variable    ${False}
    FOR    ${counter}    IN RANGE    1    15
        ${chkTextSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnFree}
        IF    ${chkTextSuccess} == ${True}
            Click Element    ${btnFree}
            Exit For Loop
        END
        ${chkTextSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${txtStandardDelivery}
        IF    ${chkTextSuccess} == ${True}
            Click Standard Delivery
            Exit For Loop
        END
        ${chkTextSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${txtSurchargeDelivery}
        IF    ${chkTextSuccess} == ${True}
            Click Surcharge Delivery
            Exit For Loop
        END
        ${chkTextSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${txtStandardCollect}
        IF    ${chkTextSuccess} == ${True}
            Click Standard Collect
            Exit For Loop
        END
    END
    IF    ${chkTextSuccess} == ${False}
        Fail    "Cannot find Delivery Option"
    END

Click Free Delivery
    Wait Until Element Is Visible    ${btnFree}    ${MIN_TIMEOUT}
    Click Element    ${btnFree}

Click Standard Collect
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${scrDeliveryFeeAndroid}    ${MIN_TIMEOUT}
    Wait Until Element Is Visible    ${txtStandardCollect}    ${MIN_TIMEOUT}
    Click Element    ${txtStandardCollect}

Click Delivery Show Details
    Wait Until Element Is Visible    ${lnkShowDetails}    ${MIN_TIMEOUT}
    Click Element    ${lnkShowDetails}

Click Surcharge Delivery
    Wait Until Element Is Visible    ${txtSurchargeDelivery}    ${MIN_TIMEOUT}
    Click Element    ${txtSurchargeDelivery}

Click Back Delivery Options
    Wait Until Element Is Visible    ${btnFree}    ${MIN_TIMEOUT}
    Click Element    ${navDeliveryOptBack}

Click Back Collect Options
    Wait Until Element Is Visible    ${btnFree}    ${MIN_TIMEOUT}
    Click Element    ${navCollectOptBack}

Click Why The Wait
    Wait Until Element Is Visible    ${btnWhyTheWait}    ${MIN_TIMEOUT}
    Click Element    ${btnWhyTheWait}

Click Standard Delivery
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${scrDeliveryFeeAndroid}    ${MIN_TIMEOUT}
    Wait Until Element Is Visible    ${txtStandardDelivery}    ${MIN_TIMEOUT}
    Click Element    ${txtStandardDelivery}

Click Got It Thanks
    Wait Until Element Is Visible    ${btnGotItThanks}    ${MIN_TIMEOUT}
    Click Element    ${btnGotItThanks}

Click +2 Show Details
    Wait Until Element Is Visible    ${btnPlusTwo}    ${MIN_TIMEOUT}
    Click Element    ${btnPlusTwo}

Verify Delivery Options Thimbnail Images
    Wait Until Element Is Visible    ${imgDelOptionsOne}    ${MIN_TIMEOUT}
    Wait Until Element Is Visible    ${imgDelOptionsTwo}
    Wait Until Element Is Visible    ${imgDelOptionsThree}
    Wait Until Element Is Visible    ${imgDelOptionsFour}
    Swipe Up    ${windowScroll}
    Wait Until Element Is Visible    ${imgDelOptionsFive}

Verify Delivery Options Text
    [Arguments]    ${verifyText}
    Wait Until Page Contains    ${verifyText}    ${MIN_TIMEOUT}



