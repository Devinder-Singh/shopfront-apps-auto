*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Map Address Option
    Wait Until Element Is Visible    ${txtMapAddressOption}    ${MIN_TIMEOUT}
    Click Element    ${txtMapAddressOption}

Click Use This Location
    Wait Until Element Is Visible    ${btnUseThisLocation}    ${MIN_TIMEOUT}
    Click Element    ${btnUseThisLocation}
#    Sleep    5s

Add Map Street Address
    [Arguments]    ${street}
    Wait Until Element Is Visible    ${txtMapStreetAddress}    ${MIN_TIMEOUT}
    Clear Text    ${txtMapStreetAddress}
    Input Text    ${txtMapStreetAddress}    ${street}
