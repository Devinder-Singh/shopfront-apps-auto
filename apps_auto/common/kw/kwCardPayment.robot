*** Settings ***
Library           TalLibrary

*** Keywords ***
Verify Card Payment
    [Arguments]    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${lblCardNumber}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Element Should Contain Text    ${lblCardNumber}    ${verifyText}
