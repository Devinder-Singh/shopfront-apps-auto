*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Got It Thanks
    Wait Until Element Is Visible    ${btnGotItThanks}    30s
    Click Element    ${btnGotItThanks}

Click Map Address Option
    Wait Until Element Is Visible    ${txtMapAddressOption}    15s
    Click Element    ${txtMapAddressOption}

Click Use This Location
    Wait Until Element Is Visible    ${btnUseThisLocation}    30s
    Click Element    ${btnUseThisLocation}

Add Map Street Address
    [Arguments]    ${street}
    Wait Until Element Is Visible    ${txtMapStreetAddress}    15s
    Clear Text    ${txtMapStreetAddress}
    Input Text    ${txtMapStreetAddress}    ${street}
