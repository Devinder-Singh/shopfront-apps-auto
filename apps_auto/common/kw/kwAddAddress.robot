*** Settings ***
Library           TalLibrary

*** Keywords ***
Click Residential
    Wait Until Element Is Visible    ${btnResidential}    5s
    Click Element    ${btnResidential}

Add Delivery Address
    [Arguments]    ${name}    ${mobile}    ${street}

    Wait Until Element Is Visible    ${txtRecipientName}    5s

    Clear Text    ${txtRecipientName}
    Input Text    ${txtRecipientName}    ${name}
    Input Text    ${txtRecipientMobile}    ${mobile}
    Input Text    ${txtRecipientStreet}    ${street}

    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtRecipientStreet}
    Sleep    5s
    Sleep    5s
    Click Element    ${btnSaveAddress}

Add Delivery Address My Acc
    [Arguments]    ${name}    ${mobile}    ${street}

    Wait Until Element Is Visible    ${txtRecipientNameMyAcc}    5s

    Clear Text    ${txtRecipientNameMyAcc}
    Input Text    ${txtRecipientNameMyAcc}    ${name}
    Input Text    ${txtRecipientMobileMyAcc}    ${mobile}
    Input Text    ${txtRecipientStreetMyAcc}    ${street}

    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtRecipientStreetMyAcc}
    Sleep    10s
    Click Element    ${btnSaveAddress}
