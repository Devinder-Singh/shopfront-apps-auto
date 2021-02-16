*** Settings ***
Library           TalLibrary

*** Keywords ***
Click Address
    Wait Until Element Is Visible    ${btnAddress}    30s
    Click Element    ${btnAddress}

Click Pickup Point
    Wait Until Element Is Visible    ${btnPickupPoint}    30s
    Click Element    ${btnPickupPoint}

Click Delete Address
    Wait Until Element Is Visible    ${txtDeleteAddress}    30s
    Click Element    ${txtDeleteAddress}
    Click Element    ${btnDeleteAddress}

Click Edit Address
    Wait Until Element Is Visible    ${btnEditAddress}    30s
    Click Element    ${btnEditAddress}

Verify Delivery Address Text
    [Arguments]    ${verifyText}
    Wait Until Element Is Visible    ${btnDeliveryAddress}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    10s

Verify Pickup Point
    Wait Until Element Is Visible    ${btnPickupPoint}    30s
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
