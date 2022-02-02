*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Confirmed Address
    Wait Until Element Is Visible    ${txtConfirmAddress}    ${MIN_TIMEOUT}
    Click Element    ${txtConfirmAddress}

Click Confirm Address Partially
    [Documentation]    Selects an option on the confirm address screen by using a partial address. This means you dont have to specify the full address
                        ...    but you can enter the first few starting chars of the address for example 12 grove.. etc.
    [Arguments]    ${partialAddress}
    ${dynamicPartialAddress}=    Set Variable    ${None}
     IF    '${PLATFORM_NAME}' == 'android'
        ${dynamicPartialAddress}=    Set Variable    xpath=(//android.widget.TextView[@resource-id='fi.android.takealot.debug:id/navigation_widget_title' and starts-with(@text,'${partialAddress}')])
    END
    Wait Until Element Is Visible    ${dynamicPartialAddress}
    Click Element    ${dynamicPartialAddress}