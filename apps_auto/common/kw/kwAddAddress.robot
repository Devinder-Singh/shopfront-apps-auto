*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Residential
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${lytAddressType}    15s
    Wait Until Element Is Visible    ${btnResidential}    15s
    Click Element    ${btnResidential}

Click Address Business
    Wait Until Element Is Visible    ${lblAddressBusiness}    15s
    Click Element    ${lblAddressBusiness}

Click Save Address
    Wait Until Element Is Visible    ${btnSaveAddress}    15s
    Click Element    ${btnSaveAddress}

Click Address Mobile Question
    Wait Until Element Is Visible    ${btnAddressMobileQuestion}    30s
    Click Element    ${btnAddressMobileQuestion}

Click Address Got It Thanks
    Wait Until Element Is Visible    ${btnAddressGotItThanks}    30s
    Click Element    ${btnAddressGotItThanks}

Click Address Province
    Wait Until Element Is Visible    ${txtAddressProvince}    30s
    Click Element    ${txtAddressProvince}

Add Delivery Address
    [Arguments]    ${name}    ${mobile}    ${street}
    Wait Until Element Is Visible    ${txtRecipientStreet}    5s
    Clear Text    ${txtRecipientName}
    Input Text    ${txtRecipientName}    ${name}
    Input Text    ${txtRecipientMobile}    ${mobile}
    Input Text    ${txtRecipientStreet}    ${street}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtRecipientStreet}
    Sleep    5s
    Press Keycode    20
    Sleep    1s
    Press Keycode    20
    Sleep    1s
    Press Keycode    66
    Sleep    2s
    Click Save Address

Add Delivery Address My Acc
    [Arguments]    ${name}    ${mobile}    ${street}
    Wait Until Element Is Visible    ${txtRecipientStreet}    5s
    Clear Text    ${txtRecipientNameMyAcc}
    Input Text    ${txtRecipientNameMyAcc}    ${name}
    Input Text    ${txtRecipientMobileMyAcc}    ${mobile}
    Input Text    ${txtRecipientStreet}    ${street}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtRecipientStreet}
    Sleep    5s
    Run Keyword If    '${street}'=='""'    Click Element    ${txtRecipientMobileMyAcc}
    Run Keyword If    '${street}'=='""'    swipe by percent    50    50    50    100    1000
    Run Keyword If    '${street}'=='&*'    Click Element    ${txtRecipientMobileMyAcc}
    Run Keyword If    '${street}'=='&*'    swipe by percent    50    50    50    100    1000
    Press Keycode    20
    Sleep    1s
    Press Keycode    20
    Sleep    1s
    Press Keycode    66
    Sleep    2s
    Click Save Address

Edit Delivery Address Mobile Number
    [Arguments]    ${mobile}
    Wait Until Element Is Visible    ${lblAddAddress}    15s
    Clear Text    ${txtRecipientMobile}
    Input Text    ${txtRecipientMobile}    ${mobile}

Edit Delivery Address Postal Code
    [Arguments]    ${postalCode}
    Wait Until Element Is Visible    ${txtRecipientMobile}    15s
    swipe by percent    50    50    50    100    1000
    Wait Until Element Is Visible    ${txtRecipientPostCode}    15s
    Clear Text    ${txtRecipientPostCode}
    Input Text    ${txtRecipientPostCode}    ${postalCode}
    swipe by percent    50    50    50    100    1000

Edit Delivery Address Street
    [Arguments]    ${street}
    Wait Until Element Is Visible    ${txtRecipientStreet}    15s
    Clear Text    ${txtRecipientStreet}
    Input Text    ${txtRecipientStreet}    ${street}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtRecipientStreet}
    Sleep    5s

Edit Delivery Address Street My Acc
    [Arguments]    ${street}
    Wait Until Element Is Visible    ${txtRecipientStreetMyAcc}    15s
    Clear Text    ${txtRecipientStreetMyAcc}
    Input Text    ${txtRecipientStreetMyAcc}    ${street}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtRecipientStreetMyAcc}
    Sleep    5s
    Press Keycode    20
    Sleep    1s
    Press Keycode    20
    Sleep    1s
    Press Keycode    66
    Sleep    2s
    Click Element    ${txtRecipientMobileMyAcc}
    swipe by percent    50    70    50    100    1000
    Click Save Address

Edit Delivery Address Suburb
    [Arguments]    ${suburb}
    Wait Until Element Is Visible    ${txtRecipientSuburbMyAcc}    15s
    Clear Text    ${txtRecipientSuburbMyAcc}
    Input Text    ${txtRecipientSuburbMyAcc}    ${suburb}

Edit Delivery Address City
    [Arguments]    ${city}
    Wait Until Element Is Visible    ${txtRecipientCityMyAcc}    15s
    Clear Text    ${txtRecipientCityMyAcc}
    Input Text    ${txtRecipientCityMyAcc}    ${city}

Edit Delivery Address Complex
    [Arguments]    ${complex}
    Wait Until Element Is Visible    ${txtRecipientComplexMyAcc}    15s
    Clear Text    ${txtRecipientComplexMyAcc}
    Input Text    ${txtRecipientComplexMyAcc}    ${complex}

Edit Delivery Address Business
    [Arguments]    ${business}
    Wait Until Element Is Visible    ${txtBusinessName}    15s
    Clear Text    ${txtBusinessName}
    Input Text    ${txtBusinessName}    ${business}

Edit Delivery Address Business My Acc
    [Arguments]    ${business}
    Wait Until Element Is Visible    ${txtBusinessNameMyAcc}    15s
    Clear Text    ${txtBusinessNameMyAcc}
    Input Text    ${txtBusinessNameMyAcc}    ${business}
    swipe by percent    50    50    50    100    1000
    swipe by percent    50    50    50    100    1000

Verify Edit Address Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${lblEditAddress}    30s
    Wait Until Page Contains    ${verifyText}    30s

Verify Add Address Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${lblAddAddress}    30s
    Wait Until Page Contains    ${verifyText}    30s

Verify Add Address Question Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${btnAddressGotItThanks}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s

Verify Add Address Province Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${navAddressProvince}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s
