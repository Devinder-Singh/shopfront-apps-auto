*** Settings ***
Library           TalLibrary
Resource    kwAPI.robot

*** Keywords ***
Select Filter Option
    [Arguments]    ${option}

    ${chkProdFilter}=    Set Variable    ${None}
    IF    '${PLATFORM_NAME}' == 'android'
        ${chkProdFilter}=    Set Variable    xpath=//*[@text="${option}"]  
    ELSE IF    '${PLATFORM_NAME}' == 'ios'
        ${chkProdFilter}=    Set Variable    //XCUIElementTypeStaticText[@name="${option}"]
    END    

    Wait Until Element Is Visible    ${chkProdFilter}    ${MIN_TIMEOUT}
    Click Element    ${chkProdFilter}

Select Daily Deals Filter Option From API
    ${option}=    Get Product Daily Deals Slug
    ${txtFilterOpt}=    Get Product Filter    ${option}

    Wait Until Element Is Visible    ${btnProdFilterApply}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${txtFilterOpt}

        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${windowScroll}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${txtFilterOpt}

Select App Only Deals Filter Option From API
    ${option}=    Get Product App Only Deals Slug
    ${txtFilterOpt}=    Get Product Filter    ${option}

    Wait Until Element Is Visible    ${btnProdFilterApply}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${txtFilterOpt}

        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${windowScroll}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${txtFilterOpt}

Select Third Deals Filter Option From API
    ${option}=    Get Product Deals Third Tab Slug
    ${txtFilterOpt}=    Get Product Filter    ${option}

    Wait Until Element Is Visible    ${btnProdFilterApply}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${txtFilterOpt}

        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${windowScroll}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${txtFilterOpt}

Select Third Deals From API
    ${dealName}=    Get Product Deals Third Tab Name

    Wait Until Element Is Visible    ${btnProductSearchFilter}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${dealName}

        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${windowScroll}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${dealName}

Click Apply Filter
    Wait Until Element Is Visible    ${btnProdFilterApply}    ${MIN_TIMEOUT}
    Click Element    ${btnProdFilterApply}
