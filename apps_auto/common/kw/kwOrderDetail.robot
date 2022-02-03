*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Pay Now Button
    [Documentation]    Clicks the pay now button within the order detail screen. Usually available for awaiting orders.
    Wait Until Element Is Visible    ${btnPayNow}
    Click Element    ${btnPayNow}

Click View QR Code Button
    [Documentation]    Clicks the View QR Code Button on the Order Detail screen if Order is Ready for Collection
    Wait Until Element Is Visible    ${btnViewQRCode}
    Click Element    ${btnViewQRCode}
 
Click and Verify Collect Order Disclaimer
    [Documentation]    This will open the Collection Disclaimer on a Collect order, view the details and dismiss the pop up
    Wait Until Element Is Visible    ${txtCollectDisclaimer}
    Click Element    ${txtCollectDisclaimer}
    Verify Element On Screen    ${txtVerifyCollectDisclaimerHeader}    ${MIN_TIMEOUT}
    Verify Element On Screen    ${txtVerifyCollectDisclaimerBody}    ${MIN_TIMEOUT}
    Wait Until Element Is Visible    ${btnGotItThanks}
    Click Element    ${btnGotItThanks}

View and Verify Collect Order
    [Documentation]    This will verify that on the bottom of the order details page that the order in question is a Collect Order
    Swipe Up    ${windowScroll}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Standard Collect
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Element On Screen    chain=**/XCUIElementTypeStaticText[`label == "Standard Collect"`]    ${MIN_TIMEOUT}
    
Click Track Order Detail
    [Documentation]    Clicks the Track button within the order detail screen. Usually available for Delivery orders.
    Wait Until Element Is Visible    ${btnOrderTrack}
    Click Element    ${btnOrderTrack}
