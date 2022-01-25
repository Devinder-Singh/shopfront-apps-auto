*** Settings ***
Resource          ../config/defaultConfig.robot
Library    DateTime

*** Variables ***


*** Keywords ***
Get New Email Address
    ${newEmailAddress}=    Set Variable    ''
    ${date}=      Get Current Date    exclude_millis=True
    ${convert}=      Convert Date      ${date}      result_format=%Y%m%d%H%M%S
    ${newEmailAddress}=    Set Variable    takealot.qa.apps.${convert}@gmaill.com
    Set Global Variable    ${new_email_address}    ${newEmailAddress}
    [Return]    ${newEmailAddress}

Swipe Down
    [Arguments]       ${locator}
    Wait Until Page Contains Element    ${locator}    ${MIN_TIMEOUT}
    ${element_size}=    Get Element Size    ${locator}
    ${element_location}=    Get Element Location    ${locator}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500

Swipe Up
    [Arguments]       ${locator}
    Wait Until Page Contains Element    ${locator}    ${MIN_TIMEOUT}
    ${element_size}=    Get Element Size    ${locator}
    ${element_location}=    Get Element Location    ${locator}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500

Swipe Right
    [Arguments]       ${locator}
    ${element_size}=    Get Element Size    ${locator}
    ${element_location}=    Get Element Location    ${locator}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.3)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.5)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.7)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.5)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  1000

Swipe Left
    [Documentation]    This keyword will perform a a swipe on an element. By default it will fully swipe an element else
                        ...    else you can use the 'swipePartially' flag partial swipe instead of a full swipe on an element.
    [Arguments]       ${element}    ${swipeSpeed}=1500    ${swipePartially}=${False}
    wait until element is Visible     ${element}
    ${element_size}=    Get Element Size    ${element}
    ${element_location}=    Get Element Location    ${element}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.7)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.5)
    ${end_x}=    Set Variable    ${None}
    IF    ${swipePartially} == ${True}
        ${end_x}=    Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ELSE
        ${end_x}=    Evaluate      ${element_location['x']} + (${element_size['width']} * 0.1)    
    END
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.5)
    Swipe    ${start_x}    ${start_y}  ${end_x}  ${end_y}  ${swipeSpeed}

Verify eBucks On Screen
    ${result}=    Evaluate    ${query_result_CartProductPrice} * 10
    ${result}=    Convert To String    ${result}
    ${cnt}=    Get length    ${result}

    ${resultFinal}=    Set Variable    ${result}

    IF    ${cnt} < 4
        Verify Text On Screen    eB${resultFinal}    ${MIN_TIMEOUT}
    END   
    
    ${resultLeft}=    Set Variable    ${None}
    ${resultRight}=    Set Variable    ${None}

    IF    ${cnt} == 4
        ${resultLeft}=    Get Substring    ${result}    0    1
        ${resultRight}=    Get Substring    ${result}    1    4
    END

    IF    ${resultLeft} != 'None'
        ${resultFinal}=    Set Variable    ${resultLeft},${resultRight}
    END

    IF    ${cnt} == 4
        Verify Text On Screen    eB${resultFinal}    ${MIN_TIMEOUT}
    END

    IF    ${cnt} == 5
        ${resultLeft}=    Get Substring    ${result}    0    2
        ${resultRight}=    Get Substring    ${result}    2    5
    END

    IF    ${resultLeft} != 'None'
        ${resultFinal}=    Set Variable    ${resultLeft},${resultRight}
    END

    IF    ${cnt} == 5
        Verify Text On Screen    eB${resultFinal}    ${MIN_TIMEOUT}
    END    

Verify Price On Screen
    [Arguments]    ${title}    ${delay}=5s

    ${result}=    Convert To String    ${title}
    ${cnt}=    Get length    ${result}

    ${resultFinal}=    Set Variable    ${result}
    IF    ${cnt} < 4
        Verify Text On Screen    ${resultFinal}    ${delay}
    END

    ${resultLeft}=    Set Variable    ${None}
    ${resultRight}=    Set Variable    ${None}
    ${resultFinal}=    Set Variable    ${None}

    IF    ${cnt} == 4
        ${resultLeft}=    Get Substring    ${result}    0    1
        ${resultRight}=    Get Substring    ${result}    1    4    
    END
    
    IF    ${resultLeft} != 'None'
        ${resultFinal}=    Set Variable    ${resultLeft},${resultRight}    
    END
    
    IF    ${cnt} == 4
        Verify Text On Screen    ${resultFinal}    ${delay}
    END

    IF    ${cnt} == 5
        ${resultLeft}=    Get Substring    ${result}    0    2
        ${resultRight}=    Get Substring    ${result}    2    5    
    END
    
    IF    ${resultLeft} != 'None'
        ${resultFinal}=    Set Variable    ${resultLeft},${resultRight}    
    END    
    
    IF    ${cnt} == 5
        Verify Text On Screen    ${resultFinal}    ${delay}
    END
    

Verify Text On Screen
    [Arguments]    ${verifyText}    ${timeout}=5s
        ${txtVerify}=    Set Variable    ${None}
    IF    '${PLATFORM_NAME}' == 'ios'
        ${txtVerify}=    Set Variable    chain=**/XCUIElementTypeStaticText[`label CONTAINS "${verifyText}"`]
    ELSE IF    '${PLATFORM_NAME}' == 'android'
        ${txtVerify}=    Set Variable    xpath=//*[contains(@text,'${verifyText}')]
    END
    ${chkTextSuccess}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${txtVerify}    ${timeout}
    Should Be True    ${chkTextSuccess} == ${True}

Verify Text Not On Screen
    [Arguments]    ${verifyText}    ${timeout}=5s
        ${txtVerify}=    Set Variable    ${None}
    IF    '${PLATFORM_NAME}' == 'ios'
        ${txtVerify}=    Set Variable    chain=**/XCUIElementTypeStaticText[`label CONTAINS "${verifyText}"`]
    ELSE IF    '${PLATFORM_NAME}' == 'android'
        ${txtVerify}=    Set Variable    xpath=//*[contains(@text,'${verifyText}')]
    END
    ${chkTextSuccess}=    Run Keyword And Return Status    Wait Until Page Does Not Contain Element    ${txtVerify}    ${timeout}
    Should Be True    ${chkTextSuccess} == ${True}

Verify Product Review
    ${txtProduct}=    Get Product List Review
    ${txtProduct}=    Convert To String    ${query_result_Rating}
    Wait Until Element Is Visible    ${btnProductSearchFilter}    ${MIN_TIMEOUT}
    Scroll To Text    ${txtProduct}
   
Check Text On Screen Not
    [Arguments]    ${verifyText}
    Wait Until Page Does Not Contain    ${verifyText}    ${MIN_TIMEOUT} 

Verify Element On Screen
    [Arguments]    ${verifyElement}    ${timeout}
    Wait Until Page Contains Element    ${verifyElement}    ${timeout}

Verify Element Not On Screen
    [Arguments]    ${verifyElement}    ${delay}=5s
    Wait Until Page Does Not Contain Element    ${verifyElement}    ${timeout}

Click Back Screen
    IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Element Is Visible    ${navBack}    ${MIN_TIMEOUT}
        Click Element    ${navBack}
    ELSE IF    '${PLATFORM_NAME}' == 'ios'
        Wait Until Element Is Visible    ${navBack}    ${MIN_TIMEOUT}
        Click Element    ${navBack}
    END
    Sleep    1s

Click Back Android
    IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Element Is Visible    ${navBack}    ${MIN_TIMEOUT}
        Click Element    ${navBack}
    END
    Sleep    1s

Click Window Android
    IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Element Is Visible    ${windowScroll}    ${MIN_TIMEOUT}
        Click Element    ${windowScroll}
    END
    #Sleep    2s

Click Back iOS
    [Arguments]    ${elementID}
    ${backiOS}=    Set Variable    chain=**/XCUIElementTypeButton[`label CONTAINS "${elementID}"`]
    IF    '${PLATFORM_NAME}' == 'ios'
        Wait Until Element Is Visible    ${backiOS}    ${MAX_TIMEOUT}
        Click Element    ${backiOS}
    END
    Sleep    1s

Click Cancel Screen
    IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Element Is Visible    ${navBack}    ${MIN_TIMEOUT}
        Click Element    ${navBack}
    ELSE IF    '${PLATFORM_NAME}' == 'ios'
        Wait Until Element Is Visible    ${navBack}    ${MIN_TIMEOUT}
        Click Element    ${navBack}
    END
    Sleep    1s

Click Element On Scroll
    [Arguments]    ${clickElement}    ${loopTimes}=10
    Scroll To Element    ${clickElement}    ${loopTimes}    ${windowScroll}
    Click Element    ${clickElement}

Verify Snack Bar
    [Documentation]    This keyword will verify that a snack bar popup contains the specified text.
    [Arguments]    ${textToVerify}
    ${dynamicSnackBarPopupWithText}=    Set Variable    ${None}
    IF    '${PLATFORM_NAME}'=='android'
        ${dynamicSnackBarPopupWithText}=    Set Variable    xpath=(//android.widget.TextView[@text='${textToVerify}' and @resource-id='fi.android.takealot.debug:id/snackbar_text'])
    END
    
    Verify Element On Screen    ${dynamicSnackBarPopupWithText}    ${MIN_TIMEOUT}
    
Scroll To Text
    [Arguments]    ${text}    ${loopTimes}=10
    ${element}=      Set Variable    ${EMPTY}
    IF    '${PLATFORM_NAME}'== 'android'
        ${element}=    Set Variable    xpath=//*[contains(@text,"${text}")]
    ELSE
        ${element}=    Set Variable    chain=**/XCUIElementTypeButton[`label CONTAINS "${text}"`]
    END
    Scroll To Element   ${element}    ${loopTimes}    ${windowScroll}
    Page Should Contain Element    ${element}

Scroll To Element
    [Arguments]    ${element}    ${loopTimes}=10    ${scrollElement}=${windowScroll}

    Set Implicitly Wait    1
    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    ${loopTimes}
        ${chkProdVisible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${element}    1s

        IF    ${chkProdVisible}==${True}
            Exit For Loop
        END

        Swipe Up    ${scrollElement}
        ${index}=    Evaluate    ${index} + 1
    END
    Set Implicitly Wait    5
    Page Should Contain Element    ${element}