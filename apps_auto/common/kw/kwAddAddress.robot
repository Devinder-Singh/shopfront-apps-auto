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
    Click Element    ${txtRecipientStreet}
    Press Keycode    AndroidKeyCode.ENTER
    Wait Until Element Is Visible    ${lblStreetAddress}    10s
    Click Element    ${lblStreetAddress}
    Click Element    ${btnSaveAddress}

Add Delivery Address My Acc
    [Arguments]    ${name}    ${mobile}    ${street}
    Wait Until Element Is Visible    ${txtRecipientName}    5s
    Clear Text    ${txtRecipientName}
    Input Text    ${txtRecipientName}    ${name}
    Input Text    ${txtRecipientMobile}    ${mobile}
    Input Text    ${txtRecipientStreet}    ${street}
    Comment    PAUSE
    Press Keycode    20
    Press Keycode    20
    Press Keycode    66
    Click Element    ${btnSaveAddress}
