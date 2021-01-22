*** Settings ***
Library           TalLibrary

*** Keywords ***
Click Continue Airtime
    Wait Until Element Is Visible    ${btnContinueAirtime}    30s
    Click Element    ${btnContinueAirtime}
