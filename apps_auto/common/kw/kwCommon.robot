*** Settings ***
Resource          ../config/defaultConfig.robot
Library    DateTime

*** Variables ***


*** Keywords ***
Get New Email Address
    ${newEmailAddress}=    Set Variable    ''
    ${date}=      Get Current Date    exclude_millis=True
    ${convert}=      Convert Date      ${date}      result_format=%Y%m%d%H%M%S
    ${newEmailAddress}=    Set Variable    take2+${convert}@gmail.com
    Set Global Variable    ${new_email_address}    ${newEmailAddress}
    [Return]    ${newEmailAddress}

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

Verify Text On Screen Android
    [Arguments]    ${verifyText}    ${delay}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    ${delay}

Verify Text On Screen iOS
    [Arguments]    ${verifyText}    ${delay}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Page Contains    ${verifyText}    ${delay}

Verify Text On Screen Scroll
    [Arguments]    ${verifyText}    ${delay}    ${scrollElement}    ${verifyScreenElement}

    Wait Until Element Is Visible    ${verifyScreenElement}    30s

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    15
        ${chkProdVisible}=    Run Keyword And Return Status    Wait Until Page Contains    ${verifyText}    1s

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Swipe Up    ${scrollElement}
        ${index}=    Evaluate    ${index} + 1
    END
    Wait Until Page Contains    ${verifyText}    1s

Verify Element On Screen Scroll
    [Arguments]    ${verifyElement}    ${delay}    ${scrollElement}    ${verifyScreenElement}

    Wait Until Element Is Visible    ${verifyScreenElement}    ${delay}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    15
        ${chkProdVisible}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${verifyElement}    1s

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Swipe Up    ${scrollElement}
        ${index}=    Evaluate    ${index} + 1
    END
    Wait Until Page Contains Element    ${verifyElement}    1s

Verify Element On Screen Scroll Android
    [Arguments]    ${verifyElement}    ${delay}    ${scrollElement}    ${verifyScreenElement}

    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${verifyScreenElement}    ${delay}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    15
        ${chkProdVisible}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${verifyElement}    1s

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Run Keyword If
            ...    '${PLATFORM_NAME}'=='ios'
            ...    Exit For Loop

        Swipe Up    ${scrollElement}
        ${index}=    Evaluate    ${index} + 1
    END
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains Element    ${verifyElement}    1s

Verify Product Review iOS

    Get Product List Review

    ${txtProduct}=    Convert To String    ${query_result_Rating}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnProductSearchFilter}    30s

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Verify Text On Screen iOS    ${txtProduct}    1s

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Run Keyword If
            ...    '${PLATFORM_NAME}'=='android'
            ...    Exit For Loop

        Swipe Up    ${windowScroll}
        ${index}=    Evaluate    ${index} + 1
    END
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen iOS    ${txtProduct}    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen iOS    (${query_result_Review})    1s

Check Text On Screen Not
    [Arguments]    ${verifyText}
    Wait Until Page Does Not Contain    ${verifyText}    15s

Check Text On Screen Not Android
    [Arguments]    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Does Not Contain    ${verifyText}    15s

Verify Element On Screen
    [Arguments]    ${verifyElement}    ${delay}
    Wait Until Page Contains Element    ${verifyElement}    ${delay}

Verify Element On Screen iOS
    [Arguments]    ${verifyElement}    ${delay}
    Run Keyword If    '${PLATFORM_NAME}'=='iOS'    Wait Until Page Contains Element    ${verifyElement}    ${delay}

Verify Element On Screen Android
    [Arguments]    ${verifyElement}    ${delay}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains Element    ${verifyElement}    ${delay}

Click Back Screen
    [Arguments]    ${elementID}

    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${navBack}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${navBack}

    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${navBack}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${navBack}

    Sleep    2s

Click Back Android
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${navBack}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${navBack}

    Sleep    2s

Click Window Android
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${windowScroll}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${windowScroll}

    Sleep    2s

Click Back iOS
    [Arguments]    ${elementID}

    ${backiOS}=    Set Variable    chain=**/XCUIElementTypeButton[`label == "${elementID}"`]
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${backiOS}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${backiOS}

    Sleep    2s

Click Cancel Screen
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${navBack}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${navBack}

    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${navBack}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${navBack}

    Sleep    2s
