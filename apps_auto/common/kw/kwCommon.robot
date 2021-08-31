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

Verify eBucks On Screen
    ${result}=    Evaluate    ${query_result_CartProductPrice} * 10
    ${result}=    Convert To String    ${result}
    ${cnt}=    Get length    ${result}

    ${resultFinal}=    Set Variable    ${result}
    Run Keyword If    ${cnt}<4    Verify Text On Screen Android    eB${resultFinal}    30s
    Run Keyword If    ${cnt}<4    Verify Text On Screen iOS    eB${resultFinal}    30s

    ${resultLeft}=    Run Keyword If    ${cnt}==4    Get Substring    ${result}    0    1
    ${resultRight}=    Run Keyword If    ${cnt}==4    Get Substring    ${result}    1    4
    ${resultFinal}=    Set Variable If    '${resultLeft}'!='None'    ${resultLeft},${resultRight}
    Run Keyword If    ${cnt}==4    Verify Text On Screen Android    eB${resultFinal}    30s
    Run Keyword If    ${cnt}==4    Verify Text On Screen iOS    eB${resultFinal}    30s

    ${resultLeft}=    Run Keyword If    ${cnt}==5    Get Substring    ${result}    0    2
    ${resultRight}=    Run Keyword If    ${cnt}==5    Get Substring    ${result}    2    5
    ${resultFinal}=    Set Variable If    '${resultLeft}'!='None'    ${resultLeft},${resultRight}
    Run Keyword If    ${cnt}==5    Verify Text On Screen Android    eB${resultFinal}    30s
    Run Keyword If    ${cnt}==5    Verify Text On Screen iOS    eB${resultFinal}    30s

Verify Price On Screen
    [Arguments]    ${title}    ${delay}

    ${result}=    Convert To String    ${title}
    ${cnt}=    Get length    ${result}

    ${resultFinal}=    Set Variable    ${result}
    Run Keyword If    ${cnt}<4    Verify Text On Screen Android    ${resultFinal}    ${delay}
    Run Keyword If    ${cnt}<4    Verify Text On Screen iOS    ${resultFinal}    ${delay}

    ${resultLeft}=    Run Keyword If    ${cnt}==4    Get Substring    ${result}    0    1
    ${resultRight}=    Run Keyword If    ${cnt}==4    Get Substring    ${result}    1    4
    ${resultFinal}=    Set Variable If    '${resultLeft}'!='None'    ${resultLeft},${resultRight}
    Run Keyword If    ${cnt}==4    Verify Text On Screen Android    ${resultFinal}    ${delay}
    Run Keyword If    ${cnt}==4    Verify Text On Screen iOS    ${resultFinal}    ${delay}

    ${resultLeft}=    Run Keyword If    ${cnt}==5    Get Substring    ${result}    0    2
    ${resultRight}=    Run Keyword If    ${cnt}==5    Get Substring    ${result}    2    5
    ${resultFinal}=    Set Variable If    '${resultLeft}'!='None'    ${resultLeft},${resultRight}
    Run Keyword If    ${cnt}==5    Verify Text On Screen Android    ${resultFinal}    ${delay}
    Run Keyword If    ${cnt}==5    Verify Text On Screen iOS    ${resultFinal}    ${delay}

Verify Text On Screen
    [Arguments]    ${verifyText}    ${delay}
    Wait Until Page Contains    ${verifyText}    ${delay}

Verify Text On Screen Android
    [Arguments]    ${verifyText}    ${delay}

    ${chkProdVisible}=    Run Keyword And Return Status    Verify Text On Screen    ${verifyText}    ${delay}

    ${checkElement}=    Set Variable If    '${PLATFORM_NAME}'=='android'    xpath=//*[contains(@text,"${verifyText}")]
    Run Keyword If    '${PLATFORM_NAME}'=='android' and ${chkProdVisible}==False    Wait Until Page Contains Element    ${checkElement}    1s

Verify Text On Screen iOS
    [Arguments]    ${verifyText}    ${delay}
    ${chkProdVisible}=    Run Keyword And Return Status    Wait Until Page Contains    ${verifyText}    ${delay}

    ${checkElement}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label CONTAINS '${verifyText}'`]
    Run Keyword If    '${PLATFORM_NAME}'=='ios' and ${chkProdVisible}==False    Wait Until Page Contains Element    ${checkElement}    1s

Verify Text Element On Screen iOS
    [Arguments]    ${verifyText}    ${delay}    ${scrollElement}    ${verifyScreenElement}

    Wait Until Element Is Visible    ${verifyScreenElement}    30s
    ${checkElement}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label CONTAINS '${verifyText}'`]

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    15
        ${chkProdVisible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${checkElement}    1s

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Run Keyword If
            ...    '${PLATFORM_NAME}'=='android'
            ...    Exit For Loop

        Swipe Up    ${scrollElement}
        ${index}=    Evaluate    ${index} + 1
    END
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${checkElement}    2s

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

Verify Text On Screen Scroll Android
    [Arguments]    ${verifyText}    ${delay}    ${scrollElement}    ${verifyScreenElement}

    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${verifyScreenElement}    30s

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    15
        ${chkProdVisible}=    Run Keyword And Return Status    Wait Until Page Contains    ${verifyText}    1s

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Run Keyword If
            ...    '${PLATFORM_NAME}'=='ios'
            ...    Exit For Loop

        Swipe Up    ${scrollElement}
        ${index}=    Evaluate    ${index} + 1
    END
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    ${verifyText}    1s

Verify Text On Screen Scroll iOS
    [Arguments]    ${verifyText}    ${delay}    ${scrollElement}    ${verifyScreenElement}

    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${verifyScreenElement}    30s

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    15
        ${chkProdVisible}=    Run Keyword And Return Status    Wait Until Page Contains    ${verifyText}    1s

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Run Keyword If
            ...    '${PLATFORM_NAME}'=='android'
            ...    Exit For Loop

        Swipe Up    ${scrollElement}
        ${index}=    Evaluate    ${index} + 1
    END
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Page Contains    ${verifyText}    1s

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

Verify Element On Screen Scroll iOS
    [Arguments]    ${verifyElement}    ${delay}    ${scrollElement}    ${verifyScreenElement}

    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${verifyScreenElement}    ${delay}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    15
        ${chkProdVisible}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${verifyElement}    1s

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        Run Keyword If
            ...    '${PLATFORM_NAME}'=='android'
            ...    Exit For Loop

        Swipe Up    ${scrollElement}
        ${index}=    Evaluate    ${index} + 1
    END
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Page Contains Element    ${verifyElement}    1s

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

Verify Element On Screen Not
    [Arguments]    ${verifyElement}    ${delay}
    ${txtProduct}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label == '${verifyElement}'`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${verifyElement}']
    ${chkTextSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${txtProduct}    ${delay}
    Should Be True    ${chkTextSuccess}==False

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
