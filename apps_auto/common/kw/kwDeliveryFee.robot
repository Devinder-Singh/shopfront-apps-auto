*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Free Delivery
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${scrDeliveryFeeAndroid}    ${MIN_TIMEOUT}

    ${chkTextSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnFree}    ${MIN_TIMEOUT}
    IF    ${chkTextSuccess} == ${True}
        Click Element    ${btnFree}
    END

    ${chkTextSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${txtSurchargeDelivery}    2s
    IF    ${chkTextSuccess} == ${True}
        Click Surcharge Delivery
    ELSE
        Click Standard Collect
    END

Click Free Delivery Android
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${scrDeliveryFeeAndroid}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnFree}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnFree}

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

Click Got It Thanks
    Wait Until Element Is Visible    ${btnGotItThanks}    ${MIN_TIMEOUT}
    Click Element    ${btnGotItThanks}

Click +2 Show Details
    Wait Until Element Is Visible    ${btnPlusTwo}    ${MIN_TIMEOUT}
    Click Element    ${btnPlusTwo}

Verify Delivery Options Thimbnail Images
    Wait Until Element Is Visible    ${imgDelOptionsOne}    10s
    Wait Until Element Is Visible    ${imgDelOptionsTwo}    1s
    Wait Until Element Is Visible    ${imgDelOptionsThree}    1s
    Wait Until Element Is Visible    ${imgDelOptionsFour}    1s
    Wait Until Element Is Visible    ${imgDelOptionsFive}    1s

Verify Delivery Options Text
    [Arguments]    ${verifyText}
    Wait Until Page Contains    ${verifyText}    ${MIN_TIMEOUT}
