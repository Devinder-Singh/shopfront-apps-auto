*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Verify Returns Menu Item
    ${returnsMenuItemTitle}=    Set Variable If    '${PLATFORM_NAME}'=='android'    ${btnMenuExchReturnsTitle}    ${btnMenuExchReturns}
    
    Element Should Be Visible    ${btnMenuExchReturns}
    Element Should Contain Text    ${returnsMenuItemTitle}    Returns

Verify Returns Screen header
    Verify Toolbar Title    Returns

Verify Returns Empty State Visible
    ${index}=    Set Variable    0
    
    FOR    ${index}    IN RANGE    10
        ${isEmptyStateVisible}=    Run Keyword And Return    Element Should Be Visible    ${containerReturnsEmptyState}
        Run Keyword If    ${isEmptyStateVisible}==True    Exit For Loop

        Swipe Up    ${containerReturnsHistory}
        Sleep    1s
        
        ${index}=    Evaluate    ${index} + 1
    END

Verify Returns Empty State Step Visible
    [Arguments]    ${stepTitle}    ${stepSubtitle}

    Verify Text On Screen    ${stepTitle}     5s
    Verify Text On Screen    ${stepSubtitle}     5s
    
Swipe To Empty State Step 2
    ${emptyStateItemSize}=    Get Element Size    ${cardReturnsHistoryEmptyState1}
    ${emptyStateItemLocation}=    Get Element Location    ${cardReturnsHistoryEmptyState1}
    ${startPositionX}=    Evaluate    ${emptyStateItemLocation['x']} + ${emptyStateItemSize['width']}
    ${startPositionY}=    Evaluate    ${emptyStateItemLocation['y']} + 0
    ${endPositionX}=    Evaluate    ${startPositionX} - ${emptyStateItemSize['width']}
    ${endPositionY}=    Evaluate    ${emptyStateItemLocation['y']} + 0

    Swipe    ${startPositionX}    ${startPositionY}    ${endPositionX}    ${endPositionY}
    Sleep    5s