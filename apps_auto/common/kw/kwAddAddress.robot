*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Residential
    IF    ${PLATFORM_NAME} == 'android'
        Wait Until Element Is Visible    ${btnResidential}    ${MIN_TIMEOUT}    
    END
    
    Wait Until Element Is Visible    ${btnResidential}    ${MIN_TIMEOUT}
    Click Element    ${btnResidential}

Click Address Business
    Wait Until Element Is Visible    ${lblAddressBusiness}    ${MIN_TIMEOUT}
    Click Element    ${lblAddressBusiness}

Click Edit Address Business
    Wait Until Element Is Visible    ${lblEditAddressBusiness}    ${MIN_TIMEOUT}
    Click Element    ${lblEditAddressBusiness}

Click Save Address
    Wait Until Element Is Visible    ${btnSaveAddress}    ${MIN_TIMEOUT}
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
    Wait Until Element Is Visible    ${txtRecipientStreet}    ${MIN_TIMEOUT}
    Clear Text    ${txtRecipientName}
    Input Text    ${txtRecipientName}    ${name}
    Input Text    ${txtRecipientMobile}    ${mobile}
    Input Text    ${txtRecipientStreet}    ${street}

    IF    ${PLATFORM_NAME} == 'android'
        Click Element    ${txtRecipientStreet}
        Sleep    5s
        Press Keycode    20
        Sleep    1s
        Press Keycode    20
        Sleep    1s
        Press Keycode    66
    ELSE IF    ${PLATFORM_NAME} == 'ios'
        Wait Until Element Is Visible    ${lblAddresOption}    ${MIN_TIMEOUT}
        Click Element    ${lblAddresOption}    
    END
       
    Sleep    3s
    Click Save Address

Add Delivery Address My Acc
    [Arguments]    ${name}    ${mobile}    ${street}
    Wait Until Element Is Visible    ${txtRecipientStreetMyAcc}    ${MIN_TIMEOUT}
    Clear Text    ${txtRecipientNameMyAcc}
    Input Text    ${txtRecipientNameMyAcc}    ${name}
    Input Text    ${txtRecipientMobileMyAcc}    ${mobile}
    Input Text    ${txtRecipientComplexMyAcc}    ABC
    Input Text    ${txtRecipientStreetMyAcc}    ${street}
    
    IF    ${PLATFORM_NAME} == 'android'
        Click Element    ${txtRecipientStreetMyAcc}    
    END
    
    Sleep    10s
    
    IF    ${street} == '""'
        Click Element    ${txtRecipientMobileMyAcc}
        Swipe Up    ${windowScroll}
    ELSE IF    '${street}'=='&*'
        Click Element    ${txtRecipientMobileMyAcc}
        Swipe Up    ${windowScroll}
    END

    IF    ${PLATFORM_NAME} == 'android'
        Press Keycode    20
        Sleep    1s
        Press Keycode    20
        Sleep    1s
        Press Keycode    66
    ELSE IF    ${PLATFORM_NAME} == 'ios' and ${street} != '&*'
        Wait Until Element Is Visible    ${lblAddresOption}    ${MIN_TIMEOUT}
        Click Element    ${lblAddresOption}
    END
        
    Sleep    3s
    Swipe Up    ${windowScroll}
    Click Save Address

Add Delivery Address Business My Acc No Name
    [Arguments]    ${name}    ${mobile}    ${street}  
    Wait Until Element Is Visible    ${txtRecipientStreetMyAcc}    ${MIN_TIMEOUT}
    Clear Text    ${txtRecipientNameMyAcc}
    Input Text    ${txtRecipientNameMyAcc}    ${name}
    Input Text    ${txtRecipientMobileMyAcc}    ${mobile}
    Input Text    ${txtRecipientStreetMyAcc}    ${street}

    IF    ${PLATFORM_NAME} == 'android'
        Click Element    ${txtRecipientStreetMyAcc}
    END
    
    Sleep    10s
    
    IF    ${street} == '""'
        Click Element    ${txtRecipientMobileMyAcc}
        Swipe Down    ${windowScroll}
    ELSE IF    ${street} == '&*'
        Click Element    ${txtRecipientMobileMyAcc}
        Swipe Down    ${windowScroll}
    END
    
    IF    ${PLATFORM_NAME} == 'android'
        Press Keycode    20
        Sleep    1s
        Press Keycode    20
        Sleep    1s
        Press Keycode    66
    ELSE IF    ${PLATFORM_NAME} == 'ios' and ${street} != '""' and ${street} != ''
        Wait Until Element Is Visible    ${lblAddresOption}    ${MIN_TIMEOUT}
        Click Element    ${lblAddresOption}
    END
    
    Sleep    3s
    
    IF    ${PLATFORM_NAME} == 'ios' and ${street} == ''
        Click Element    ${txtBusinessNameMyAcc}
        
    END

    Swipe Up    ${windowScroll}
    Click Save Address

Add Delivery Address Business My Acc
    [Arguments]    ${name}    ${mobile}    ${street}
    Wait Until Element Is Visible    ${txtRecipientStreetMyAcc}    ${MIN_TIMEOUT}
    Clear Text    ${txtRecipientNameMyAcc}
    Input Text    ${txtRecipientNameMyAcc}    ${name}
    Input Text    ${txtRecipientMobileMyAcc}    ${mobile}
    Input Text    ${txtBusinessNameMyAcc}    ABC
    Input Text    ${txtRecipientStreetMyAcc}    ${street}
    
    IF    ${PLATFORM_NAME} == 'android'
        Click Element    ${txtRecipientStreetMyAcc}
    END
           
    Sleep    10s
    
    IF    ${street} == '""'
        Click Element    ${txtRecipientMobileMyAcc}
        Swipe Down    ${windowScroll}
    ELSE IF    ${street} == '&*'
        Click Element    ${txtRecipientMobileMyAcc}
        Swipe Down    ${windowScroll}
    END
    
    IF    ${PLATFORM_NAME} == 'android'
        Press Keycode    20
        Sleep    1s
        Press Keycode    20
        Sleep    1s
        Press Keycode    66
    ELSE IF    ${PLATFORM_NAME} == 'ios' and ${street} != '""' 
        Wait Until Element Is Visible    ${lblAddresOption}    ${MIN_TIMEOUT}
        Click Element    ${lblAddresOption}
    END
     
    Sleep    3s
    #Swipe Up    ${windowScroll}
    Click Save Address

Edit Delivery Address On Map
    [Arguments]    ${street}   
    Wait Until Element Is Visible    ${txtSearchAddressOnMap}    ${MIN_TIMEOUT}
    Click Element    ${txtSearchAddressOnMap}
    Clear Text    ${txtSearchAddressOnMap}
    Input Text    ${txtSearchAddressOnMap}    ${street}

    Sleep    10s

    IF    ${PLATFORM_NAME} == 'android'
        Click Element    ${txtSearchAddressOnMap}
        Sleep    5s
        Press Keycode    67
        Sleep    5s
        Press Keycode    32
        Sleep    10s
        Press Keycode    20
        Sleep    1s
        Press Keycode    66
    ELSE IF    ${PLATFORM_NAME} == 'ios' and ${street} != '""' 
        Wait Until Element Is Visible    ${lblAddresOption}    ${MIN_TIMEOUT}
        Click Element    ${lblAddresOption}
    END

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

    IF     ${PLATFORM_NAME} == 'android'
        Click Element    ${txtSearchAddressOnMap}
        Sleep    5s
        Press Keycode    67
        Sleep    5s
        Press Keycode    32
        Sleep    10s
        Press Keycode    20
        Sleep    1s
        Press Keycode    66
    ELSE IF    ${PLATFORM_NAME} == 'ios' and ${street} != '""'
        Wait Until Element Is Visible    ${lblAddresOptionMyAccMap}    ${MIN_TIMEOUT}
        Click Element    ${lblAddresOptionMyAccMap}
    END

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

    IF     ${PLATFORM_NAME} == 'android'
    Click Element    ${txtSearchAddressOnMap}
    Sleep    5s
    Press Keycode    67
    Sleep    5s
    Press Keycode    32
    Sleep    10s
    Press Keycode    20
    Sleep    1s
    Press Keycode    66
    ELSE IF    ${PLATFORM_NAME} == 'ios' and ${street} != '""'
        Wait Until Element Is Visible    ${lblAddresOptionMyAccMapSuburb}    ${MIN_TIMEOUT}
        Click Element    ${lblAddresOptionMyAccMapSuburb}
    END
 
    Sleep    3s
    Wait Until Element Is Visible    ${lblEditAddressMapLocation}    ${MIN_TIMEOUT}
    Click Element    ${lblEditAddressMapLocation}

Edit Delivery Address Mobile Number
    [Arguments]    ${mobile}
    Wait Until Element Is Visible    ${btnSaveAddress}    ${MIN_TIMEOUT}
    Clear Text    ${txtRecipientMobile}
    Input Text    ${txtRecipientMobile}    ${mobile}

Clear Delivery Address Mobile Number Dyneamic
    [Arguments]    ${mobile}    ${field}
    Wait Until Element Is Visible    ${lblAddAddress}    ${MIN_TIMEOUT}

    ${txtMobile}=    Set Variable    ${None}
    IF    ${PLATFORM_NAME} == 'android'
        ${txtMobile}=    Set Variable    xpath=//*[@text='${field}']
    ELSE IF    ${PLATFORM_NAME} == 'ios'
        ${txtMobile}=    Set Variable    chain=**/XCUIElementTypeTextField[`value == "${field}"`]
    END           

    Swipe Down    ${windowScroll}
    Clear Text    ${txtMobile}

Edit Delivery Address Postal Code
    [Arguments]    ${postalCode}
    Wait Until Element Is Visible    ${txtRecipientMobile}    ${MIN_TIMEOUT}
    Swipe Up    ${windowScroll}

    Wait Until Element Is Visible    ${txtRecipientPostCode}    ${MIN_TIMEOUT}
    Clear Text    ${txtRecipientPostCode}
    Input Text    ${txtRecipientPostCode}    ${postalCode}

    #Sleep    1s
    IF    ${PLATFORM_NAME} == 'ios'
        Click Back iOS    Close
    END  

    Swipe Up    ${windowScroll}

Edit Delivery Address Postal Code My Acc
    [Arguments]    ${postalCode}
    Wait Until Element Is Visible    ${lblRecepientMobile}    ${MIN_TIMEOUT}
    Swipe Up    ${windowScroll}

    Wait Until Element Is Visible    ${txtRecipientPostCodeEdit}    ${MIN_TIMEOUT}
    Clear Text    ${txtRecipientPostCodeEdit}
    Input Text    ${txtRecipientPostCodeEdit}    ${postalCode}

    #Sleep    1s
    Click Element    ${lblRecepientPostCode}
    Swipe Up    ${windowScroll}

Edit Delivery Address Suburb My Acc
    Wait Until Element Is Visible    ${lblRecepientMobile}    ${MIN_TIMEOUT}
    Swipe Up    ${windowScroll}

    Wait Until Element Is Visible    ${lblAddresOptionMyAccSuburb}    ${MIN_TIMEOUT}
    Click Element    ${lblAddresOptionMyAccSuburb}

    #Sleep    1s
    Wait Until Element Is Visible    ${lblAddresMyAccSuburb}    ${MIN_TIMEOUT}
    Click Element    ${lblAddresMyAccSuburb}
    Swipe Up    ${windowScroll}

Edit Delivery Address My Acc Empty
    Wait Until Element Is Visible    ${lblRecepientMobile}    ${MIN_TIMEOUT}
    Swipe Up    ${windowScroll}

    Clear Text    ${txtRecipientNameMyAcc}
    Clear Text    ${txtRecipientMobileMyAcc}
    Clear Text    ${txtRecipientSuburbMyAcc}
    Clear Text    ${txtRecipientCityMyAcc}

    #Sleep    1s
    Click Element    ${lblRecepientPostCode}
    Swipe Up    ${windowScroll}

Edit Delivery Address Confirm Address
    Wait Until Element Is Visible    ${lblAddresOptionChanged}    ${MIN_TIMEOUT}
    Click Element    ${lblAddresOptionChanged}

Edit Delivery Address Confirm Address My Acc
    Wait Until Element Is Visible    ${lblAddresOptionMyAcc}    ${MIN_TIMEOUT}
    Click Element    ${lblAddresOptionMyAcc}

Edit Delivery Address Confirm Address My Acc Suburb
    Wait Until Element Is Visible    ${lblAddresOptionMyAccGauteng}    ${MIN_TIMEOUT}
    Click Element    ${lblAddresOptionMyAccGauteng}

Edit Delivery Address Street
    [Arguments]    ${street}
    Wait Until Element Is Visible    ${txtRecipientStreet}    ${MIN_TIMEOUT}
    Clear Text    ${txtRecipientStreet}
    Input Text    ${txtRecipientStreet}    ${street}

    IF     ${PLATFORM_NAME} == 'android'
        Click Element    ${txtRecipientStreet}
    END
    
    Sleep    5s

Edit Delivery Address Street My Acc
    [Arguments]    ${street}
    Wait Until Element Is Visible    ${txtRecipientStreetMyAcc}    ${MIN_TIMEOUT}
    Clear Text    ${txtRecipientStreetMyAcc}
    Input Text    ${txtRecipientStreetMyAcc}    ${street}

    IF    ${PLATFORM_NAME} == 'android'
        Click Element    ${txtRecipientStreetMyAcc}
        Sleep    10s
        Press Keycode    20
        Sleep    1s
        Press Keycode    20
        Sleep    1s
        Press Keycode    66
        Sleep    2s
    ELSE IF    ${PLATFORM_NAME} == 'ios'
        Wait Until Element Is Visible    ${lblAddresOption}    ${MIN_TIMEOUT}
        Click Element    ${lblAddresOption}
    END
   
    Swipe Up    ${windowScroll}
    Click Save Address

Edit Delivery Address Street My Acc Only
    [Arguments]    ${street}

    Wait Until Element Is Visible    ${txtRecipientStreetMyAcc}    ${MIN_TIMEOUT}
    Clear Text    ${txtRecipientStreetMyAcc}
    Input Text    ${txtRecipientStreetMyAcc}    ${street}
    Click Element    ${txtRecipientMobileMyAcc}

Edit Delivery Address Suburb
    [Arguments]    ${suburb}
    Wait Until Element Is Visible    ${txtRecipientSuburbMyAcc}    ${MIN_TIMEOUT}
    Clear Text    ${txtRecipientSuburbMyAcc}
    Input Text    ${txtRecipientSuburbMyAcc}    ${suburb}

Edit Delivery Address City
    [Arguments]    ${city}
    Wait Until Element Is Visible    ${txtRecipientCityMyAcc}    ${MIN_TIMEOUT}
    Clear Text    ${txtRecipientCityMyAcc}
    Input Text    ${txtRecipientCityMyAcc}    ${city}

Edit Delivery Address Complex
    [Arguments]    ${complex}
    Wait Until Element Is Visible    ${txtRecipientComplexMyAcc}    ${MIN_TIMEOUT}
    Clear Text    ${txtRecipientComplexMyAcc}
    Input Text    ${txtRecipientComplexMyAcc}    ${complex}

Edit Delivery Address Business
    [Arguments]    ${business}
    Wait Until Element Is Visible    ${txtBusinessName}    ${MIN_TIMEOUT}
    Clear Text    ${txtBusinessName}
    Input Text    ${txtBusinessName}    ${business}

    #Sleep    1s
    IF    ${PLATFORM_NAME} == 'ios'
        Click Back iOS    Close
        Swipe Up    ${windowScroll}
    END
    

Edit Delivery Address Business My Acc
    [Arguments]    ${business}
    Wait Until Element Is Visible    ${txtBusinessNameMyAcc}    ${MIN_TIMEOUT}
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

    IF    ${PLATFORM_NAME} == 'android' 
        Wait Until Page Contains    ${verifyText}    ${MIN_TIMEOUT}
    ELSE IF    ${PLATFORM_NAME} == 'ios'
        Page Should Contain Text    ${verifyText}
    END    

Verify Add Address Province Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${navAddressProvince}    ${MIN_TIMEOUT}
    IF    ${PLATFORM_NAME} == 'android' 
        Wait Until Page Contains    ${verifyText}    ${MIN_TIMEOUT}
    ELSE IF    ${PLATFORM_NAME} == 'ios'
        Page Should Contain Text    ${verifyText}
    END
