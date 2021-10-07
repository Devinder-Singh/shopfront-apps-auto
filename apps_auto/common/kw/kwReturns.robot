*** Settings ***
Resource          ../config/defaultConfig.robot
Library    XML

*** Keywords ***
Verify Returns Menu Item    
    Element Should Be Visible    ${btnMenuExchReturns}
    Element Should Contain Text    ${btnMenuExchReturnsTitle}    Returns

Verify Returns Screen header
    Verify Toolbar Title    Returns

Verify Returns Empty State Visible
    ${index}=    Set Variable    0
    
    FOR    ${index}    IN RANGE    10
        ${isEmptyStateVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${containerReturnsEmptyState}
        Run Keyword If    ${isEmptyStateVisible}==True    Exit For Loop

        Swipe Up    ${containerReturnsHistory}
        Sleep    1s
        
        ${index}=    Evaluate    ${index} + 1
    END

Verify Returns Empty State Step Visible
    [Arguments]    ${stepTitle}    ${stepSubtitle}

    Verify Text On Screen    ${stepTitle}     5s
    Verify Text On Screen    ${stepSubtitle}     5s

Verify Returns History Item Visible
    Wait Until Element Is Visible    ${cardReturnsHistoryItem}    30s
    
Verify Returns History Item Contains RRN
    Wait Until Element Is Visible    ${cardReturnsHistoryItemTitle}    30s
    Element Should Contain Text    ${cardReturnsHistoryItemTitle}    RRN

Verify Returns History Item Contains Status
    Wait Until Element Is Visible    ${cardReturnsHistoryItemStatus}    30s

Verify Returns History Item Contains Image
    Wait Until Element Is Visible    ${cardReturnsHistoryItemImage}    30s

Click Returns History Item
    Click Element    ${cardReturnsHistoryItem}

Verify Returns Call To Action Title
    [Arguments]    ${expectedTitle}

    Wait Until Element Is Visible    ${btnReturnsCallToAction}    30s
    Element Text Should Be    ${btnReturnsCallToAction}    ${expectedTitle}

Scoll To Returns History Policy
    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    20
        ${isPolicyVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${cardReturnsHistoryPolicyItem}
        Run Keyword If    ${isPolicyVisible}==True    Exit For Loop
        
        Swipe Up    ${containerReturnsHistory}
        ${index}=    Evaluate    ${index} + 1
    END

Verify Returns History Policy Title
    [Arguments]    ${expectedTitle}

    Wait Until Element Is Visible    ${cardReturnsHistoryPolicyItem}    30s
    Element Text Should Be    ${cardReturnsHistoryPolicyItem}    ${expectedTitle}

Swipe To Empty State Step 2
    ${emptyStateItemSize}=    Get Element Size    ${cardReturnsHistoryEmptyState1}
    ${emptyStateItemLocation}=    Get Element Location    ${cardReturnsHistoryEmptyState1}
    ${startPositionX}=    Evaluate    ${emptyStateItemLocation['x']} + ${emptyStateItemSize['width']}
    ${startPositionY}=    Evaluate    ${emptyStateItemLocation['y']} + 0
    ${endPositionX}=    Evaluate    ${startPositionX} - ${emptyStateItemSize['width']}
    ${endPositionY}=    Evaluate    ${emptyStateItemLocation['y']} + 0

    Swipe    ${startPositionX}    ${startPositionY}    ${endPositionX}    ${endPositionY}
    Sleep    5s

Click Returns Call To Action Button
    Wait Until Element Is Visible    ${btnReturnsCallToAction}    30s
    Click Element    ${btnReturnsCallToAction}

Verify Returns Order History Filter Option View Visible
    Wait Until Element Is Visible    ${returnsOrderHistoryFilterOptionContainer}    30s

Verify Returns Order History Filter Option Button Title
    Wait Until Element Is Visible    ${btnReturnsOrderHistoryFilterOptionChange}    30s
    Element Text Should Be    ${btnReturnsOrderHistoryFilterOptionChange}    CHANGE

Click Returns Order History Filter Option Button
    Wait Until Element Is Visible    ${btnReturnsOrderHistoryFilterOptionChange}    30s
    Click Element    ${btnReturnsOrderHistoryFilterOptionChange}

Verify Returns Order History Filter Options
    Verify Text On Screen    Last 3 months    30s
    Verify Text On Screen    Last 6 months    30s

Verify Returns Order History Item Visible
    Wait Until Element Is Visible    ${cardReturnsOrderHistoryItem}    30s

Verify Returns Order History Item Title
    Wait Until Element Is Visible    ${cardReturnsOrderHistoryItemTitle}    30s
    Element Should Contain Text    ${cardReturnsOrderHistoryItemTitle}    Order #

Verify Returns Order History Item Subtitle
    Wait Until Element Is Visible    ${cardReturnsOrderHistoryItemSubtitle}    30s
    Element Should Contain Text    ${cardReturnsOrderHistoryItemSubtitle}    Ordered

Verify Returns Order History Item Image Container
    Wait Until Element Is Visible    ${cardReturnsOrderHistoryItemImageContainer}    30s

Click Returns Order History Item
    Click Element    ${cardReturnsOrderHistoryItem}