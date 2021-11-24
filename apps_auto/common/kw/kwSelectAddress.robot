*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Address
    Wait Until Element Is Visible    ${btnAddress}    ${MIN_TIMEOUT}
    Click Element    ${btnAddress}

Click Address Android
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnAddress}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnAddress}

Click Pickup Point
    [Arguments]    ${point}=Takealot Cape Town Warehouse Cape Town, Western Cape

    Wait Until Element Is Visible    ${txtFilterProvince}    ${MIN_TIMEOUT}

    IF    '${PLATFORM_NAME}' == 'ios'
        ${txtProduct}=    Set Variable    chain=**/XCUIElementTypeStaticText[`label CONTAINS '${point}'`]
    ELSE IF    '${PLATFORM_NAME}' == 'android'
        ${txtProduct}=    Set Variable    xpath=//*[contains(@text, '${point}')]
    END

    Click Element On Scroll    ${txtProduct}    25
#    Sleep    3s
#    ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${txtProduct}
#    Run Keyword If    ${chkProdVisible}==${True}    Click Element    ${txtProduct}

Click Pickup Point Info
    Wait Until Element Is Visible    ${txtInfoAddress}    ${MIN_TIMEOUT}
    Click Element    ${txtInfoAddress}

Click Delete Address
    Wait Until Element Is Visible    ${btnDeleteAddress}    ${MIN_TIMEOUT}
    Click Element    ${btnDeleteAddress}
    Wait Until Element Is Visible    ${btnConfDeleteAddress}    5s
    Click Element    ${btnConfDeleteAddress}

Click Edit Address
    Wait Until Element Is Visible    ${btnEditAddress}    ${MIN_TIMEOUT}
    Click Element    ${btnEditAddress}

Display WC Province Pickup Points
    Wait Until Element Is Visible    ${txtFilterProvince}    ${MIN_TIMEOUT}

    ${chkTextSuccess}=    Run Keyword And Return Status    Verify Text On Screen    Western Cape    2s
    IF    ${chkTextSuccess} == ${False}
        Click Filter Province
        Click Western Cape Province    
    END
    
Click Filter Province
    Wait Until Element Is Visible    ${txtFilterProvince}    ${MIN_TIMEOUT}
    Click Element    ${txtFilterProvince}

Click Gauteng Province
    Wait Until Element Is Visible    ${txtGautengProvinceAddress}    ${MIN_TIMEOUT}
    Click Element    ${txtGautengProvinceAddress}

Click Western Cape Province
    Wait Until Element Is Visible    ${txtWCProvinceAddress}    ${MIN_TIMEOUT}
    Click Element    ${txtWCProvinceAddress}

Click All Available Provinces
    Wait Until Element Is Visible    ${txtAllProvinceAddress}    ${MIN_TIMEOUT}
    Click Element    ${txtAllProvinceAddress}

Click Delivery Address Back
    Wait Until Element Is Visible    ${btnEditAddress}    ${MIN_TIMEOUT}
    Click Element    ${navDeliveryAddressBack}

Click Collect Address Back
    Wait Until Element Is Visible    ${txtFilterProvince}    ${MIN_TIMEOUT}
    Click Element    ${navCollectAddressBack}

Verify Delivery Address Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${btnDeliveryAddress}    ${MIN_TIMEOUT}
    IF    '${PLATFORM_NAME}' == 'ios'
        Page Should Contain Text    ${verifyText}
    ELSE IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Page Contains    ${verifyText}    ${MIN_TIMEOUT}
    END

Verify Collect Address Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${txtFilterProvince}    ${MIN_TIMEOUT}
    IF    '${PLATFORM_NAME}' == 'ios'
        Page Should Contain Text    ${verifyText}
    ELSE IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Page Contains    ${verifyText}    ${MIN_TIMEOUT}
    END

Verify Pickup Point
    Wait Until Element Is Visible    ${txtFilterProvince}    ${MIN_TIMEOUT}
    #    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    WESTERN CAPE
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Takealot Cape Town Warehouse Cape Town, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Brackenfell Cape Town, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Foreshore Cape Town, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    George George, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Malmesbury Malmesbury, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Milnerton Cape Town, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Ottery Cape Town, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Paarl Paarl, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Parklands Cape Town, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Parow Cape Town, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Plumstead Cape Town, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Retreat Cape Town, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Somerset West Cape Town, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Stellenbosch Stellenbosch, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Tygervalley Cape Town, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Vredendal Vredendal, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Woodstock Cape Town, Western Cape
    #    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    WESTERN CAPE
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Takealot Cape Town Warehouse
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Brackenfell
    Swipe Up    ${windowScroll}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Foreshore
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    George
    Swipe Up    ${windowScroll}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Malmesbury
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Milnerton
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Ottery
    Swipe Up    ${windowScroll}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Paarl
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Parklands
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Parow
    Swipe Up    ${windowScroll}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Plumstead
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Retreat
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Somerset West
    Swipe Up    ${windowScroll}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Stellenbosch
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Tygervalley
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Vredendal
    Swipe Up    ${windowScroll}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Woodstock

Verify Pickup Points Gauteng
    Wait Until Element Is Visible    ${txtFilterProvince}    ${MIN_TIMEOUT}
    #    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    GAUTENG
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Midrand (N1 Bridge) Johannesburg, Gauteng
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Alberton Alberton, Gauteng
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Benoni Benoni, Gauteng
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Boksburg Boksburg, Gauteng
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Booysens Reserve Johannesburg, Gauteng
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Bramley Johannesburg, Gauteng
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Bryanston Sandton, Gauteng
    #    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    GAUTENG
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Midrand (N1 Bridge)
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Alberton
    Swipe Up    ${windowScroll}
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Benoni
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Boksburg
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Booysens Reserve
    Swipe Up    ${windowScroll}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Bramley
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Bryanston

Verify All Pickup Points
    Wait Until Element Is Visible    ${txtFilterProvince}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    EASTERN CAPE
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Berea East London, Eastern Cape
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Grahamstown Grahamstown, Eastern Cape
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Hunters Retreat Port Elizabeth, Eastern Cape
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Kensington Port Elizabeth, Eastern Cape
    #    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    FREE STATE
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Bethlehem Bethlehem, Free State
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Bloemfontein Bloemfontein, Free State
    #    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    KWAZULU-NATAL
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Avoca Durban, KwaZulu-Natal
#    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Ballito Ballito, KwaZulu-Natal
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Mount Edgecombe Durban, KwaZulu-Natal
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    North Beach Durban, KwaZulu-Natal
#    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Pietermaritzburg Pietermaritzburg, KwaZulu-Natal
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Pinetown Durban, KwaZulu-Natal
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Richards Bay Richards Bay, KwaZulu-Natal
    #    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    LIMPOPO
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Louis Trichardt Louis Trichardt, Limpopo
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Polokwane Polokwane, Limpopo
    #    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    MPUMALANGA
#    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    BKB Ermelo Ermelo, Mpumalanga
#    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    BKB Standerton Standerton, Mpumalanga
    Swipe Up    ${windowScroll}
    Swipe Up    ${windowScroll}
    Swipe Up    ${windowScroll}
    Swipe Up    ${windowScroll}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Middelburg Middelburg, Mpumalanga
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Nelspruit Nelspruit, Mpumalanga
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Secunda Secunda, Mpumalanga
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Witbank Witbank, Mpumalanga
    #    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    NORTH WEST
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Mafikeng Mahikeng, North West
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Potchefstroom Potchefstroom, North West
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Rustenburg Rustenburg, North West
    #    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    NORTHERN CAPE
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Kimberley Kimberley, Northern Cape
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    EASTERN CAPE
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Berea
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Grahamstown
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Hunters Retreat
    Swipe Up    ${windowScroll}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Kensington
    #    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    FREE STATE
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Bethlehem
#    Swipe Up    ${windowScroll}
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Bloemfontein
#    Swipe Up    ${windowScroll}
#    Swipe Up    ${windowScroll}
#    Swipe Up    ${windowScroll}
#   Swipe Up    ${windowScroll}
#    Swipe Up    ${windowScroll}
#    Swipe Up    ${windowScroll}
#    Swipe Up    ${windowScroll}
#    Swipe Up    ${windowScroll}
#    Swipe Up    ${windowScroll}
#    Swipe Up    ${windowScroll}
#    Swipe Up    ${windowScroll}
#    #    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    KWAZULU-NATAL
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Avoca
#    Swipe Up    ${windowScroll}
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Ballito
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Mount Edgecombe
#    Swipe Up    ${windowScroll}
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Newcastle
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    North Beach
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Park Rynie
#    Swipe Up    ${windowScroll}
##    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Pietermaritzburg
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Pinetown
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Richards Bay
#    Swipe Up    ${windowScroll}
#    #    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    LIMPOPO
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Louis Trichardt
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Polokwane
#    Swipe Up    ${windowScroll}
#    #    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    MPUMALANGA
##    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    BKB Ermelo
##    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    BKB Standerton
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Middelburg
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Nelspruit
#    Swipe Up    ${windowScroll}
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Secunda
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Witbank
#    #    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    NORTH WEST
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Mafikeng
#    Swipe Up    ${windowScroll}
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Potchefstroom
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Rustenburg
#    Swipe Up    ${windowScroll}
#    #    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    NORTHERN CAPE
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Kathu
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Kimberley
#    Swipe Up    ${windowScroll}
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Upington
