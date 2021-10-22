*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Free Delivery
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${scrDeliveryFeeAndroid}    30s

    ${chkTextSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnFree}    30s
    Run Keyword If    ${chkTextSuccess}==${True}    Click Element    ${btnFree}
    Run Keyword If    ${chkTextSuccess}==${False}    Click Surcharge Delivery
#    Wait Until Element Is Visible    ${btnFree}    30s
#    Click Element    ${btnFree}

Click Free Delivery Android
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${scrDeliveryFeeAndroid}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnFree}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnFree}

Click Surcharge Delivery
    Wait Until Element Is Visible    ${txtSurchargeDelivery}    30s
    Click Element    ${txtSurchargeDelivery}

Click Collection Fee R25
    Wait Until Element Is Visible    ${txtCollectionFee}    30s
    Click Element    ${txtCollectionFee}

Click Back Delivery Options
    Wait Until Element Is Visible    ${btnFree}    30s
    Click Element    ${navDeliveryOptBack}

Click Back Collect Options
    Wait Until Element Is Visible    ${btnFree}    30s
    Click Element    ${navCollectOptBack}

Click Why The Wait
    Wait Until Element Is Visible    ${btnWhyTheWait}    30s
    Click Element    ${btnWhyTheWait}

Click Got It Thanks
    Wait Until Element Is Visible    ${btnGotItThanks}    30s
    Click Element    ${btnGotItThanks}

Click +2 Show Details
    Wait Until Element Is Visible    ${btnPlusTwo}    30s
    Click Element    ${btnPlusTwo}

Verify Delivery Options Thimbnail Images
    Wait Until Element Is Visible    ${imgDelOptionsOne}    10s
    Wait Until Element Is Visible    ${imgDelOptionsTwo}    1s
    Wait Until Element Is Visible    ${imgDelOptionsThree}    1s
    Wait Until Element Is Visible    ${imgDelOptionsFour}    1s
    Wait Until Element Is Visible    ${imgDelOptionsFive}    1s

Verify Delivery Options Text
    [Arguments]    ${verifyText}
    Wait Until Page Contains    ${verifyText}    30s
