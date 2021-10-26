*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Free Delivery
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${scrDeliveryFeeAndroid}    ${MIN_TIMEOUT}

    ${chkTextSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnFree}    ${MIN_TIMEOUT}
    Run Keyword If    ${chkTextSuccess}==${True}    Click Element    ${btnFree}
    Run Keyword If    ${chkTextSuccess}==${False}    Click Surcharge Delivery
#    Wait Until Element Is Visible    ${btnFree}    ${MIN_TIMEOUT}
#    Click Element    ${btnFree}

Click Free Delivery Android
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${scrDeliveryFeeAndroid}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnFree}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnFree}

Click Surcharge Delivery
    Wait Until Element Is Visible    ${txtSurchargeDelivery}    ${MIN_TIMEOUT}
    Click Element    ${txtSurchargeDelivery}

Click Collection Fee R25
    Wait Until Element Is Visible    ${txtCollectionFee}    ${MIN_TIMEOUT}
    Click Element    ${txtCollectionFee}

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
