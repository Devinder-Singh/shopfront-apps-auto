*** Settings ***
Library           TalLibrary

*** Variables ***
${navBack}      accessibility_id=Navigate up
${navBackiOS}      id=Cancel

*** Keywords ***
Swipe Down
    [Arguments]       ${locator}
    ${element_size}=    Get Element Size    ${locator}
    ${element_location}=    Get Element Location    ${locator}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1

Swipe Up
    [Arguments]       ${locator}
    ${element_size}=    Get Element Size    ${locator}
    ${element_location}=    Get Element Location    ${locator}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1

Verify Text On Screen
    [Arguments]    ${verifyText}    ${delay}
    Wait Until Page Contains    ${verifyText}    ${delay}

Check Text On Screen Not
    [Arguments]    ${verifyText}
    Page Should Not Contain Text    ${verifyText}

Verify Element On Screen
    [Arguments]    ${verifyElement}    ${delay}
    Wait Until Page Contains Element    ${verifyElement}    ${delay}

Click Back Screen
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${navBack}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${navBack}

    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${navBackiOS}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${navBackiOS}