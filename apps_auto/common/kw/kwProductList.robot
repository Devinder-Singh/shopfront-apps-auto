*** Settings ***
Library           TalLibrary

*** Keywords ***
Click Product
#    ${txtProduct}      Set Variable    chain=**/XCUIElementTypeStaticText[`label == "Omega 32" HD Ready LED TV"`]
    ${txtProduct}=    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Set Variable    chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeStaticText[1]
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${txtProduct}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${txtProduct}

    ${txtProduct}=    Run Keyword If    '${PLATFORM_NAME}'=='android'    Set Variable    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[4]
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${txtProduct}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtProduct}

Click Product Daily Deals
    Wait Until Element Is Visible    ${btnProductDailyDeals}    30s
    Click Element    ${btnProductDailyDeals}
