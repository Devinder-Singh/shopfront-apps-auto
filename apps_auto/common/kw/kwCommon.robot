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
    ${element_size}=    Get Element Size    ${locator}
    ${element_location}=    Get Element Location    ${locator}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
#    Sleep  1

Swipe Up
    [Arguments]       ${locator}
    ${element_size}=    Get Element Size    ${locator}
    ${element_location}=    Get Element Location    ${locator}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  1000
#    Sleep  1

Swipe Right
    [Arguments]       ${locator}
    ${element_size}=    Get Element Size    ${locator}
    ${element_location}=    Get Element Location    ${locator}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.3)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.5)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.7)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.5)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  1000
#    Sleep  1

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
    [Arguments]    ${verifyText}    ${delay}=5s
    Wait Until Page Contains    ${verifyText}    ${delay}

Verify Text Element On Screen iOS
    [Arguments]    ${verifyText}    ${delay}    ${scrollElement}    ${verifyScreenElement}

    Wait Until Element Is Visible    ${verifyScreenElement}    ${MIN_TIMEOUT}
    ${checkElement}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label CONTAINS '${verifyText}'`]

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    15
        ${chkProdVisible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${checkElement}    1s

        IF    ${chkProdVisible} == ${True} or '${PLATFORM_NAME}' == 'android'
            Exit For Loop
        END

        Swipe Up    ${scrollElement}
        ${index}=    Evaluate    ${index} + 1
    END
    IF    '${PLATFORM_NAME}' == 'ios'
        Wait Until Element Is Visible    ${checkElement}    ${MIN_TIMEOUT}
    END

Verify Text On Screen Scroll
    [Arguments]    ${verifyText}    ${delay}    ${scrollElement}    ${verifyScreenElement}

    Wait Until Element Is Visible    ${verifyScreenElement}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    15
        ${chkProdVisible}=    Run Keyword And Return Status    Wait Until Page Contains    ${verifyText}    1s

        IF    ${chkProdVisible} == ${True}
           Exit For Loop
        END

        Swipe Up    ${scrollElement}
        ${index}=    Evaluate    ${index} + 1
    END
    Wait Until Page Contains    ${verifyText}    1s

Verify Text On Screen Scroll Android
    [Arguments]    ${verifyText}    ${delay}    ${scrollElement}    ${verifyScreenElement}

    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${verifyScreenElement}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    15
        ${chkProdVisible}=    Run Keyword And Return Status    Wait Until Page Contains    ${verifyText}    1s

        IF    ${chkProdVisible} == ${True} or '${PLATFORM_NAME}' == 'ios'
            Exit For Loop
        END

        Swipe Up    ${scrollElement}
        ${index}=    Evaluate    ${index} + 1
    END
    IF    '${PLATFORM_NAME}' == 'android'
       Wait Until Page Contains    ${verifyText}    ${MIN_TIMEOUT} 
    END

Verify Text On Screen Scroll iOS
    [Arguments]    ${verifyText}    ${delay}    ${scrollElement}    ${verifyScreenElement}

    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${verifyScreenElement}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    15
        ${chkProdVisible}=    Run Keyword And Return Status    Wait Until Page Contains    ${verifyText}    1s

         IF    ${chkProdVisible} == ${True} or '${PLATFORM_NAME}' == 'android'
            Exit For Loop
        END

        Swipe Up    ${scrollElement}
        ${index}=    Evaluate    ${index} + 1
    END
    IF    '${PLATFORM_NAME}' == 'ios'
        Wait Until Page Contains    ${verifyText}    ${MIN_TIMEOUT}
    END     

Verify Element On Screen Scroll
    [Arguments]    ${verifyElement}    ${delay}    ${scrollElement}    ${verifyScreenElement}

    Wait Until Element Is Visible    ${verifyScreenElement}    ${delay}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    15
        ${chkProdVisible}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${verifyElement}    1s

        IF    ${chkProdVisible} == ${True}
            Exit For Loop
        END

        Swipe Up    ${scrollElement}
        ${index}=    Evaluate    ${index} + 1
    END
    Wait Until Page Contains Element    ${verifyElement}    1s

Verify Element On Screen Scroll Android
    [Arguments]    ${verifyElement}    ${delay}    ${scrollElement}    ${verifyScreenElement}

    IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Element Is Visible    ${verifyScreenElement}    ${delay}
    END

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    15
        ${chkProdVisible}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${verifyElement}    1s

        IF    ${chkProdVisible} == ${True} or '${PLATFORM_NAME}' == 'ios'
            Exit For Loop
        END

        Swipe Up    ${scrollElement}
        ${index}=    Evaluate    ${index} + 1
    END
    IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Page Contains Element    ${verifyElement}    ${MIN_TIMEOUT}
    END 

Verify Element On Screen Scroll iOS
    [Arguments]    ${verifyElement}    ${delay}    ${scrollElement}    ${verifyScreenElement}

    IF    '${PLATFORM_NAME}' == 'ios'
        Wait Until Element Is Visible    ${verifyScreenElement}    ${delay}
    END

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    15
        ${chkProdVisible}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${verifyElement}    1s

        IF    ${chkProdVisible} == ${True} or '${PLATFORM_NAME}' == 'android'
            Exit For Loop
        END

        Swipe Up    ${scrollElement}
        ${index}=    Evaluate    ${index} + 1
    END
    IF    '${PLATFORM_NAME}' == 'ios'
        Wait Until Page Contains Element    ${verifyElement}    ${MIN_TIMEOUT}
    END

Verify Product Review iOS

    Get Product List Review

    ${txtProduct}=    Convert To String    ${query_result_Rating}
    IF    '${PLATFORM_NAME}' == 'ios'
        Wait Until Element Is Visible    ${btnProductSearchFilter}    ${MIN_TIMEOUT}
    END

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Verify Text On Screen    ${txtProduct}    1s

        IF    ${chkProdVisible} == ${True} or '${PLATFORM_NAME}' == 'android'
            Exit For Loop
        END

        Swipe Up    ${windowScroll}
        ${index}=    Evaluate    ${index} + 1
    END
    IF     '${PLATFORM_NAME}' == 'ios'
         Verify Text On Screen    ${txtProduct}    ${MIN_TIMEOUT}
    Verify Text On Screen    (${query_result_Review})    ${MIN_TIMEOUT}
    END
   
Check Text On Screen Not
    [Arguments]    ${verifyText}
    Wait Until Page Does Not Contain    ${verifyText}    ${MIN_TIMEOUT}

Check Text On Screen Not Android
    [Arguments]    ${verifyText}
    IF    '${PLATFORM_NAME}' == 'android'
         Wait Until Page Does Not Contain    ${verifyText}    ${MIN_TIMEOUT}
    END  

Verify Element On Screen
    [Arguments]    ${verifyElement}    ${delay}
    Wait Until Page Contains Element    ${verifyElement}    ${delay}

Verify Element On Screen Not
    [Arguments]    ${verifyElement}    ${delay}=5s
    
    ${txtProduct}=    Set Variable    ${None}
    IF    '${PLATFORM_NAME}' == 'ios'
        ${txtProduct}=    Set Variable    chain=**/XCUIElementTypeStaticText[`label == '${verifyElement}'`]
    ELSE IF    '${PLATFORM_NAME}' == 'android'
        ${txtProduct}=    Set Variable    xpath=//*[@text='${verifyElement}']
    END
    ${chkTextSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${txtProduct}    ${delay}
    Should Be True    ${chkTextSuccess} == ${False}

#TODO Make 1 keyword
Verify Element On Screen iOS
    [Arguments]    ${verifyElement}    ${delay}
    IF    '${PLATFORM_NAME}' == 'ios'
        Wait Until Page Contains Element    ${verifyElement}    ${delay}
    END

#TODO Make 1 keyword
Verify Element On Screen Android
    [Arguments]    ${verifyElement}    ${delay}
    IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Page Contains Element    ${verifyElement}    ${delay}
    END

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
        Wait Until Element Is Visible    ${backiOS}    ${MIN_TIMEOUT}
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

Scroll To Element In Container
    [Arguments]    ${elementLocator}    ${scrollContainerLocator}    ${retryCount}
    ${index}=    Set Variable    0
    
    FOR    ${index}    IN RANGE    ${retryCount}
        ${isElementVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${elementLocator}
        IF    ${isElementVisible} == ${True}
            Exit For Loop
        END

        Swipe Up    ${scrollContainerLocator}
        ${index}=    Evaluate    ${index} + 1
    END

Click Element On Scroll
    [Arguments]    ${clickElement}    ${loopTimes}=10

    Set Implicitly Wait    1
    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    ${loopTimes}
        ${chkProdVisible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${clickElement}    5s

        IF    ${chkProdVisible}==${True}
            Exit For Loop
        END

        Swipe Up    ${windowScroll}
        ${index}=    Evaluate    ${index} + 1
    END
    Set Implicitly Wait    5
    Click Element    ${clickElement}
