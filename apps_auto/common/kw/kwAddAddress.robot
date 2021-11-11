*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Residential
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnResidential}    15s
    Wait Until Element Is Visible    ${btnResidential}    15s
    Click Element    ${btnResidential}

Click Address Business
    Wait Until Element Is Visible    ${lblAddressBusiness}    15s
    Click Element    ${lblAddressBusiness}

Click Edit Address Business
    Wait Until Element Is Visible    ${lblEditAddressBusiness}    15s
    Click Element    ${lblEditAddressBusiness}

Click Save Address
    Wait Until Element Is Visible    ${btnSaveAddress}    15s
    Click Element    ${btnSaveAddress}

Click Address Mobile Question
    Wait Until Element Is Visible    ${btnAddressMobileQuestion}    ${MIN_TIMEOUT}
    Click Element    ${btnAddressMobileQuestion}

Click Address Got It Thanks
    Wait Until Element Is Visible    ${btnAddressGotItThanks}    ${MIN_TIMEOUT}
    Click Element    ${btnAddressGotItThanks}

Click Address Province
    Wait Until Element Is Visible    ${txtAddressProvince}    ${MIN_TIMEOUT}
    Click Element    ${txtAddressProvince}

Add Delivery Address
    [Arguments]    ${name}    ${mobile}    ${street}
    Wait Until Element Is Visible    ${txtRecipientStreet}    5s
    Clear Text    ${txtRecipientName}
    Input Text    ${txtRecipientName}    ${name}
    Input Text    ${txtRecipientMobile}    ${mobile}
    Input Text    ${txtRecipientStreet}    ${street}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtRecipientStreet}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Sleep    5s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Press Keycode    20
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Sleep    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Press Keycode    20
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Sleep    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Press Keycode    66

    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${lblAddresOption}    15s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${lblAddresOption}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Sleep    3s
    Click Save Address

Add Delivery Address My Acc
    [Arguments]    ${name}    ${mobile}    ${street}
    Wait Until Element Is Visible    ${txtRecipientStreetMyAcc}    5s
    Clear Text    ${txtRecipientNameMyAcc}
    Input Text    ${txtRecipientNameMyAcc}    ${name}
    Input Text    ${txtRecipientMobileMyAcc}    ${mobile}
    Input Text    ${txtRecipientComplexMyAcc}    ABC
    Input Text    ${txtRecipientStreetMyAcc}    ${street}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtRecipientStreetMyAcc}
    Wait Until Page Contains    ${street}    10s
    Run Keyword If    '${street}'=='""'    Click Element    ${txtRecipientMobileMyAcc}
    Run Keyword If    '${street}'=='""'    Swipe Up    ${windowScroll}
    Run Keyword If    '${street}'=='&*'    Click Element    ${txtRecipientMobileMyAcc}
    Run Keyword If    '${street}'=='&*'    Swipe Up    ${windowScroll}

    Run Keyword If    '${PLATFORM_NAME}'=='android'    Press Keycode    20
    Sleep    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Press Keycode    20
    Sleep    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Press Keycode    66

    Run Keyword If    '${PLATFORM_NAME}'=='ios' and '${street}'!='&*'    Wait Until Element Is Visible    ${lblAddresOption}    15s
    Run Keyword If    '${PLATFORM_NAME}'=='ios' and '${street}'!='&*'    Click Element    ${lblAddresOption}
    Sleep    3s
    Swipe Up    ${windowScroll}
    Click Save Address

Add Delivery Address Business My Acc No Name
    [Arguments]    ${name}    ${mobile}    ${street}
    Wait Until Element Is Visible    ${txtRecipientStreetMyAcc}    5s
    Clear Text    ${txtRecipientNameMyAcc}
    Input Text    ${txtRecipientNameMyAcc}    ${name}
    Input Text    ${txtRecipientMobileMyAcc}    ${mobile}
    Input Text    ${txtRecipientStreetMyAcc}    ${street}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtRecipientStreetMyAcc}
    Sleep    10s
    Run Keyword If    '${street}'=='""'    Click Element    ${txtRecipientMobileMyAcc}
    Run Keyword If    '${street}'=='""'    Swipe Down    ${windowScroll}
    Run Keyword If    '${street}'=='&*'    Click Element    ${txtRecipientMobileMyAcc}
    Run Keyword If    '${street}'=='&*'    Swipe Down    ${windowScroll}

    Run Keyword If    '${PLATFORM_NAME}'=='android'    Press Keycode    20
    Sleep    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Press Keycode    20
    Sleep    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Press Keycode    66

    Run Keyword If    '${PLATFORM_NAME}'=='ios' and '${street}'!='""' and '${street}'!=''    Wait Until Element Is Visible    ${lblAddresOption}    15s
    Run Keyword If    '${PLATFORM_NAME}'=='ios' and '${street}'!='""' and '${street}'!=''    Click Element    ${lblAddresOption}
    Sleep    3s

    Run Keyword If    '${PLATFORM_NAME}'=='ios' and '${street}'==''    Click Element    ${txtBusinessNameMyAcc}

    Swipe Up    ${windowScroll}
    Click Save Address

Add Delivery Address Business My Acc
    [Arguments]    ${name}    ${mobile}    ${street}
    Wait Until Element Is Visible    ${txtRecipientStreetMyAcc}    5s
    Clear Text    ${txtRecipientNameMyAcc}
    Input Text    ${txtRecipientNameMyAcc}    ${name}
    Input Text    ${txtRecipientMobileMyAcc}    ${mobile}
    Input Text    ${txtBusinessNameMyAcc}    ABC
    Input Text    ${txtRecipientStreetMyAcc}    ${street}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtRecipientStreetMyAcc}
    Sleep    10s
    Run Keyword If    '${street}'=='""'    Click Element    ${txtRecipientMobileMyAcc}
    Run Keyword If    '${street}'=='""'    Swipe Down    ${windowScroll}
    Run Keyword If    '${street}'=='&*'    Click Element    ${txtRecipientMobileMyAcc}
    Run Keyword If    '${street}'=='&*'    Swipe Down    ${windowScroll}

    Run Keyword If    '${PLATFORM_NAME}'=='android'    Press Keycode    20
    Sleep    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Press Keycode    20
    Sleep    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Press Keycode    66

    Run Keyword If    '${PLATFORM_NAME}'=='ios' and '${street}'!='""'    Wait Until Element Is Visible    ${lblAddresOption}    15s
    Run Keyword If    '${PLATFORM_NAME}'=='ios' and '${street}'!='""'    Click Element    ${lblAddresOption}
    Sleep    3s
#    Swipe Up    ${windowScroll}
    Click Save Address

Edit Delivery Address On Map
    [Arguments]    ${street}
    Wait Until Element Is Visible    ${txtSearchAddressOnMap}    ${MIN_TIMEOUT}
    Click Element    ${txtSearchAddressOnMap}
    Clear Text    ${txtSearchAddressOnMap}
    Input Text    ${txtSearchAddressOnMap}    ${street}

    Sleep    10s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtSearchAddressOnMap}
    Sleep    5s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Press Keycode    67
    Sleep    5s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Press Keycode    32
    Sleep    10s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Press Keycode    20
    Sleep    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Press Keycode    66

    Run Keyword If    '${PLATFORM_NAME}'=='ios' and '${street}'!='""'    Wait Until Element Is Visible    ${lblAddresOption}    15s
    Run Keyword If    '${PLATFORM_NAME}'=='ios' and '${street}'!='""'    Click Element    ${lblAddresOption}
    Sleep    3s

    Wait Until Element Is Visible    ${lblEditAddressMapLocation}    ${MIN_TIMEOUT}
    Click Element    ${lblEditAddressMapLocation}

Edit Delivery Address On Map My Acc
    [Arguments]    ${street}
    Wait Until Element Is Visible    ${txtSearchAddressOnMap}    ${MIN_TIMEOUT}
    Click Element    ${txtSearchAddressOnMap}
    Clear Text    ${txtSearchAddressOnMap}
    Input Text    ${txtSearchAddressOnMap}    ${street}

    Sleep    10s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtSearchAddressOnMap}
    Sleep    5s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Press Keycode    67
    Sleep    5s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Press Keycode    32
    Sleep    10s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Press Keycode    20
    Sleep    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Press Keycode    66

    Run Keyword If    '${PLATFORM_NAME}'=='ios' and '${street}'!='""'    Wait Until Element Is Visible    ${lblAddresOptionMyAccMap}    15s
    Run Keyword If    '${PLATFORM_NAME}'=='ios' and '${street}'!='""'    Click Element    ${lblAddresOptionMyAccMap}
    Sleep    3s

    Wait Until Element Is Visible    ${lblEditAddressMapLocation}    ${MIN_TIMEOUT}
    Click Element    ${lblEditAddressMapLocation}

Edit Delivery Address On Map My Acc Suburb
    [Arguments]    ${street}
    Wait Until Element Is Visible    ${txtSearchAddressOnMap}    ${MIN_TIMEOUT}
    Click Element    ${txtSearchAddressOnMap}
    Clear Text    ${txtSearchAddressOnMap}
    Input Text    ${txtSearchAddressOnMap}    ${street}

    Sleep    10s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtSearchAddressOnMap}
    Sleep    5s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Press Keycode    67
    Sleep    5s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Press Keycode    32
    Sleep    10s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Press Keycode    20
    Sleep    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Press Keycode    66

    Run Keyword If    '${PLATFORM_NAME}'=='ios' and '${street}'!='""'    Wait Until Element Is Visible    ${lblAddresOptionMyAccMapSuburb}    15s
    Run Keyword If    '${PLATFORM_NAME}'=='ios' and '${street}'!='""'    Click Element    ${lblAddresOptionMyAccMapSuburb}
    Sleep    3s

    Wait Until Element Is Visible    ${lblEditAddressMapLocation}    ${MIN_TIMEOUT}
    Click Element    ${lblEditAddressMapLocation}

Edit Delivery Address Mobile Number
    [Arguments]    ${mobile}
    Wait Until Element Is Visible    ${btnSaveAddress}    15s
    Clear Text    ${txtRecipientMobile}
    Input Text    ${txtRecipientMobile}    ${mobile}

Clear Delivery Address Mobile Number Dyneamic
    [Arguments]    ${mobile}    ${field}
    Wait Until Element Is Visible    ${lblAddAddress}    15s

    ${txtMobile}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeTextField[`value == "${field}"`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${field}']
    Swipe Down    ${windowScroll}

    Clear Text    ${txtMobile}

Edit Delivery Address Postal Code
    [Arguments]    ${postalCode}
    Wait Until Element Is Visible    ${txtRecipientMobile}    15s
    Swipe Up    ${windowScroll}

    Wait Until Element Is Visible    ${txtRecipientPostCode}    15s
    Clear Text    ${txtRecipientPostCode}
    Input Text    ${txtRecipientPostCode}    ${postalCode}

#    Sleep    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Back iOS    Close
    Swipe Up    ${windowScroll}

Edit Delivery Address Postal Code My Acc
    [Arguments]    ${postalCode}
    Wait Until Element Is Visible    ${lblRecepientMobile}    15s
    Swipe Up    ${windowScroll}

    Wait Until Element Is Visible    ${txtRecipientPostCodeEdit}    5s
    Clear Text    ${txtRecipientPostCodeEdit}
    Input Text    ${txtRecipientPostCodeEdit}    ${postalCode}

#    Sleep    1s
    Click Element    ${lblRecepientPostCode}
    Swipe Up    ${windowScroll}

Edit Delivery Address Suburb My Acc
    Wait Until Element Is Visible    ${lblRecepientMobile}    15s
    Swipe Up    ${windowScroll}

    Wait Until Element Is Visible    ${lblAddresOptionMyAccSuburb}    5s
    Click Element    ${lblAddresOptionMyAccSuburb}

#    Sleep    1s
    Wait Until Element Is Visible    ${lblAddresMyAccSuburb}    5s
    Click Element    ${lblAddresMyAccSuburb}
    Swipe Up    ${windowScroll}

Edit Delivery Address My Acc Empty
    Wait Until Element Is Visible    ${lblRecepientMobile}    15s
    Swipe Up    ${windowScroll}

    Clear Text    ${txtRecipientNameMyAcc}
    Clear Text    ${txtRecipientMobileMyAcc}
    Clear Text    ${txtRecipientSuburbMyAcc}
    Clear Text    ${txtRecipientCityMyAcc}

#    Sleep    1s
    Click Element    ${lblRecepientPostCode}
    Swipe Up    ${windowScroll}

Edit Delivery Address Confirm Address
    Wait Until Element Is Visible    ${lblAddresOptionChanged}    15s
    Click Element    ${lblAddresOptionChanged}

Edit Delivery Address Confirm Address My Acc
    Wait Until Element Is Visible    ${lblAddresOptionMyAcc}    15s
    Click Element    ${lblAddresOptionMyAcc}

Edit Delivery Address Confirm Address My Acc Suburb
    Wait Until Element Is Visible    ${lblAddresOptionMyAccGauteng}    15s
    Click Element    ${lblAddresOptionMyAccGauteng}

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
    Sleep    10s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Press Keycode    20
    Sleep    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Press Keycode    20
    Sleep    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Press Keycode    66
    Sleep    2s

    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${lblAddresOption}    15s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${lblAddresOption}
    Swipe Up    ${windowScroll}
    Click Save Address

Edit Delivery Address Street My Acc Only
    [Arguments]    ${street}

    Wait Until Element Is Visible    ${txtRecipientStreetMyAcc}    15s
    Clear Text    ${txtRecipientStreetMyAcc}
    Input Text    ${txtRecipientStreetMyAcc}    ${street}
    Click Element    ${txtRecipientMobileMyAcc}

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

#    Sleep    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Back iOS    Close
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Swipe Up    ${windowScroll}

Edit Delivery Address Business My Acc
    [Arguments]    ${business}
    Wait Until Element Is Visible    ${txtBusinessNameMyAcc}    15s
    Clear Text    ${txtBusinessNameMyAcc}
    Input Text    ${txtBusinessNameMyAcc}    ${business}
    Edit Delivery Address Street My Acc    13 Caro Road

Verify Edit Address Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${lblEditAddress}    ${MIN_TIMEOUT}
    Wait Until Page Contains    ${verifyText}    ${MIN_TIMEOUT}

Verify Add Address Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${lblAddAddress}    ${MIN_TIMEOUT}
    Wait Until Page Contains    ${verifyText}    ${MIN_TIMEOUT}

Verify Add Address Question Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${btnAddressGotItThanks}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s

Verify Add Address Province Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${navAddressProvince}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s
