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
    Sleep    5s
    Click Element    ${cardReturnsOrderHistoryItem}

Verify Returns Order Detail Returnable Section
    Wait Until Element Is Visible    ${returnOrderDetailReturnableSectionTitle}    30s

Verify Returns Order Detail Non-Returnable Section
    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    20
        ${isNonReturnableSectionVisisble}=    Run Keyword And Return Status    Element Should Be Visible    ${returnOrderDetailNonReturnableSectionTitle}
        Run Keyword If    ${isNonReturnableSectionVisisble}==True    Exit For Loop
        
        Swipe Up    ${containerReturnsHOrderDetail}
        ${index}=    Evaluate    ${index} + 1
    END

Verify Returns Order Detail Item Image
    Wait Until Element Is Visible    ${cardReturnsOrderDetailItemImage}    30s

Verify Returns Order Detail Item Title
    Wait Until Element Is Visible    ${cardReturnsOrderDetailItemTitle}    30s

Verify Returns Order Detail Item Price And Qty
    Wait Until Element Is Visible    ${cardReturnsOrderDetailItemPriceAndQty}    30s
    Element Should Contain Text    ${cardReturnsOrderDetailItemPriceAndQty}    R
    Element Should Contain Text    ${cardReturnsOrderDetailItemPriceAndQty}    Qty

Verify Returns Order Detail Item Warranty Title
    Wait Until Element Is Visible    ${cardReturnsOrderDetailItemWarrantyTitle}    30s
    ${hasValidWarranty}=    Run Keyword And Return Status    Element Should Contain Text    ${cardReturnsOrderDetailItemWarrantyTitle}    Warranty
    Run Keyword And Return If    ${hasValidWarranty}==False    Element Should Contain Text   ${cardReturnsOrderDetailItemWarrantyTitle}    Non-Returnable 

Verify Returns Order Detail Item Warranty Subtitle
    ${hasValidWarranty}=    Run Keyword And Return Status    Element Should Contain Text    ${cardReturnsOrderDetailItemWarrantyTitle}    Warranty
    Run Keyword And Return If    ${hasValidWarranty}==True    Wait Until Element Is Visible    ${cardReturnsOrderDetailItemWarrantySubtitle}    30s
    Run Keyword And Return If    ${hasValidWarranty}==True    Element Should Contain Text    ${cardReturnsOrderDetailItemWarrantySubtitle}    Warranty Expires

Click Returns Order Detail Item Warranty Title
    Click Element    ${cardReturnsOrderDetailItemWarrantyTitle} 

Verify Returns Order Detail Item Warranty Dialog Title
    Wait Until Element Is Visible    ${returnsOrderDetailWarrantyDialogTitle}    30s
    Element Should Contain Text    ${returnsOrderDetailWarrantyDialogTitle}    Limited Warranty

Verify Returns Order Detail Item Warranty Dialog Message
    Wait Until Element Is Visible    ${returnsOrderDetailWarrantyDialogMessage}    30s
    Element Should Contain Text    ${returnsOrderDetailWarrantyDialogMessage}    Limited warranty, with certain exclusions, as defined by the manufacturer. Please consult the manufacturer for further details.

Verify Returns Order Detail Item Warranty Dialog Button
    Wait Until Element Is Visible    ${returnsOrderDetailWarrantyDialogButton}    30s
    Element Should Contain Text    ${returnsOrderDetailWarrantyDialogButton}    OK

Close Returns Order Detail Item Warranty Dialog
    Click Element    ${returnsOrderDetailWarrantyDialogButton}

Click Returns Order Detail Returnable Item
    Click Element    ${cardReturnsOrderDetailReturnableItem}

Click Returns Order Detail Non Returnable Item
    Click Element    ${cardReturnsOrderDetailNonReturnableItem}

Scroll To First Non Returnable Reason
    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    20
        ${isNonReturnableReasonVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${cardReturnsOrderDetailItemNonReturnableReasonTitle}
        Run Keyword If    ${isNonReturnableReasonVisible}==True    Exit For Loop
        
        Swipe Up    ${containerReturnsHOrderDetail}
        ${index}=    Evaluate    ${index} + 1
    END

Verify Return Reason Reason Selector Visible
    Wait Until Element Is Visible    ${returnReasonReasonSelector}    30s

Verify Return Reason Reason Selector Text
    [Arguments]    ${expectedText}
    Element Text Should Be    ${returnReasonReasonSelectorText}    ${expectedText}

Verify Return Reason Reason Selector Error Message
    Wait Until Element Is Visible    ${returnReasonReasonSelectorErrorText}    30s
    Element Text Should Be    ${returnReasonReasonSelectorErrorText}    Please select a reason for return

Click Return Reason Reason Selector
    Click Element    ${returnReasonReasonSelector}

Click Return Reason Reason Non-Exchange Item
    Click Element    ${returnReasonReasonItemNonExchange}

Scroll To Return Reason Text Area
    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    20
        ${isTextAreaVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${returnReasonTextArea}
        Run Keyword If    ${isTextAreaVisible}==True    Exit For Loop
        
        Swipe Up    ${containerReturnsReason}
        ${index}=    Evaluate    ${index} + 1
    END

Verify Return Reason Text Area Error Message
    Wait Until Element Is Visible    ${returnReasonTextArea}    30s
    Element Text Should Be    ${returnReasonTextAreaErrorMessage}    Please describe the problem

Verify Return Reason Preferred Outcome Visible
    Wait Until Element Is Visible    ${returnReasonPreferredOutcomeSelector}    30s

Verify Return Reason Preferred Outcome Error Message
    Wait Until Element Is Visible    ${returnReasonPreferredOutcomeSelector}    30s
    Element Text Should Be    ${returnReasonPreferredOutcomeErrorMessage}    Please select a preferred outcome