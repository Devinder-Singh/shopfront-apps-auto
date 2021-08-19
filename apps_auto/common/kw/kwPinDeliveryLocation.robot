*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Map Address Option
    Wait Until Element Is Visible    ${txtMapAddressOption}    15s
    Click Element    ${txtMapAddressOption}

Click Use This Location
    Wait Until Element Is Visible    ${btnUseThisLocation}    30s
    Click Element    ${btnUseThisLocation}
    Sleep    5s

Add Map Street Address
    [Arguments]    ${street}
    Wait Until Element Is Visible    ${txtMapStreetAddress}    15s
    Clear Text    ${txtMapStreetAddress}
    Input Text    ${txtMapStreetAddress}    ${street}
