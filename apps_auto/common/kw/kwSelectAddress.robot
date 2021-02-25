*** Settings ***
Library           TalLibrary

*** Keywords ***
Click Address
    Wait Until Element Is Visible    ${btnAddress}    30s
    Click Element    ${btnAddress}

Click Pickup Point
    Wait Until Element Is Visible    ${btnPickupPoint}    30s
    Click Element    ${btnPickupPoint}

Click Pickup Point Brackenfell
    Wait Until Element Is Visible    ${btnPickupPointBrackenfell}    30s
    Click Element    ${btnPickupPointBrackenfell}

Click Pickup Point Info
    Wait Until Element Is Visible    ${txtInfoAddress}    30s
    Click Element    ${txtInfoAddress}

Click Delete Address
    Wait Until Element Is Visible    ${txtDeleteAddress}    30s
    Click Element    ${txtDeleteAddress}
    Click Element    ${btnDeleteAddress}

Click Edit Address
    Wait Until Element Is Visible    ${btnEditAddress}    30s
    Click Element    ${btnEditAddress}

Click Filter Province
    Wait Until Element Is Visible    ${txtFilterProvince}    30s
    Click Element    ${txtFilterProvince}

Click Gauteng Province
    Wait Until Element Is Visible    ${txtGautengProvinceAddress}    30s
    Click Element    ${txtGautengProvinceAddress}

Click Western Cape Province
    Wait Until Element Is Visible    ${txtWCProvinceAddress}    30s
    Click Element    ${txtWCProvinceAddress}

Click All Available Provinces
    Wait Until Element Is Visible    ${txtAllProvinceAddress}    30s
    Click Element    ${txtAllProvinceAddress}

Verify Delivery Address Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${btnDeliveryAddress}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s

Verify Collect Address Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${txtFilterProvince}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s

Verify Pickup Point
    Wait Until Element Is Visible    ${txtFilterProvince}    30s
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
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Takealot Cape Town Warehouse Cape Town, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Brackenfell Cape Town, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Foreshore Cape Town, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    George George, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Malmesbury Malmesbury, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Milnerton Cape Town, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Ottery Cape Town, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Paarl Paarl, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Parklands Cape Town, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Parow Cape Town, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Plumstead Cape Town, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Retreat Cape Town, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Somerset West Cape Town, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Stellenbosch Stellenbosch, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Tygervalley Cape Town, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Vredendal Vredendal, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Woodstock Cape Town, Western Cape

Verify Pickup Points Gauteng
    Wait Until Element Is Visible    ${txtFilterProvince}    30s
#    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    GAUTENG
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Midrand (N1 Bridge) Johannesburg, Gauteng
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Alberton Alberton, Gauteng
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Benoni Benoni, Gauteng
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Boksburg Boksburg, Gauteng
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Booysens Reserve Johannesburg, Gauteng
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Bramley Johannesburg, Gauteng
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Bryanston Sandton, Gauteng
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    GAUTENG
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Midrand (N1 Bridge) Johannesburg, Gauteng
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Alberton Alberton, Gauteng
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Benoni Benoni, Gauteng
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Boksburg Boksburg, Gauteng
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Booysens Reserve Johannesburg, Gauteng
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Bramley Johannesburg, Gauteng
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Bryanston Sandton, Gauteng

Verify All Pickup Points
    Wait Until Element Is Visible    ${txtFilterProvince}    30s
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
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Ballito Ballito, KwaZulu-Natal
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Mount Edgecombe Durban, KwaZulu-Natal
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    North Beach Durban, KwaZulu-Natal
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Pietermaritzburg Pietermaritzburg, KwaZulu-Natal
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Pinetown Durban, KwaZulu-Natal
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Richards Bay Richards Bay, KwaZulu-Natal
#    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    LIMPOPO
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Louis Trichardt Louis Trichardt, Limpopo
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Polokwane Polokwane, Limpopo
#    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    MPUMALANGA
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    BKB Ermelo Ermelo, Mpumalanga
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    BKB Standerton Standerton, Mpumalanga
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
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    EASTERN CAPE
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Berea East London, Eastern Cape
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Grahamstown Grahamstown, Eastern Cape
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Hunters Retreat Port Elizabeth, Eastern Cape
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Kensington Port Elizabeth, Eastern Cape
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    FREE STATE
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Bethlehem Bethlehem, Free State
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Bloemfontein Bloemfontein, Free State
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    KWAZULU-NATAL
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Avoca Durban, KwaZulu-Natal
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Ballito Ballito, KwaZulu-Natal
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Mount Edgecombe Durban, KwaZulu-Natal
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    North Beach Durban, KwaZulu-Natal
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Pietermaritzburg Pietermaritzburg, KwaZulu-Natal
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Pinetown Durban, KwaZulu-Natal
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Richards Bay Richards Bay, KwaZulu-Natal
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    LIMPOPO
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Louis Trichardt Louis Trichardt, Limpopo
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Polokwane Polokwane, Limpopo
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    MPUMALANGA
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    BKB Ermelo Ermelo, Mpumalanga
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    BKB Standerton Standerton, Mpumalanga
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Middelburg Middelburg, Mpumalanga
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Nelspruit Nelspruit, Mpumalanga
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Secunda Secunda, Mpumalanga
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Witbank Witbank, Mpumalanga
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    NORTH WEST
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Mafikeng Mahikeng, North West
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Potchefstroom Potchefstroom, North West
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Rustenburg Rustenburg, North West
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    NORTHERN CAPE
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Kimberley Kimberley, Northern Cape
