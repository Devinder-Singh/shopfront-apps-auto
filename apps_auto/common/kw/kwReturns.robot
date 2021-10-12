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
    Scroll To Element In Container    ${containerReturnsEmptyState}    ${containerReturnsHistory}    10

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
    Scroll To Element In Container    ${cardReturnsHistoryPolicyItem}    ${containerReturnsHistory}    20

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
    Scroll To Element In Container    ${returnOrderDetailNonReturnableSectionTitle}    ${containerReturnsHOrderDetail}    20

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
    Scroll To Element In Container    ${cardReturnsOrderDetailItemNonReturnableReasonTitle}    ${containerReturnsHOrderDetail}    20

Verify Return Reason Reason Selector Visible
    Wait Until Element Is Visible    ${returnReasonReasonSelector}    30s

Verify Return Reason Reason Selector Text
    [Arguments]    ${expectedText}
    Element Text Should Be    ${returnReasonReasonSelectorText}    ${expectedText}

Verify Return Reason Reason Selector Error Message
    Wait Until Element Is Visible    ${returnReasonReasonSelectorErrorText}    30s
    Element Text Should Be    ${returnReasonReasonSelectorErrorText}    Please select a reason for return

Click Return Reason Reason Selector
    Wait Until Element Is Visible    ${returnReasonReasonSelector}    30s
    Click Element    ${returnReasonReasonSelector}

Click Return Reason Reason Non-Exchange Item
    Wait Until Element Is Visible    ${returnReasonReasonItemNonExchange}    30s
    Click Element    ${returnReasonReasonItemNonExchange}

Scroll To Return Reason Text Area
    Scroll To Element In Container    ${returnReasonTextArea}   ${containerReturnsReason}    20

Verify Return Reason Text Area Error Message
    Wait Until Element Is Visible    ${returnReasonTextArea}    30s
    Element Text Should Be    ${returnReasonTextAreaErrorMessage}    Please describe the problem

Verify Return Reason Preferred Outcome Visible
    Wait Until Element Is Visible    ${returnReasonPreferredOutcomeSelector}    30s

Verify Return Reason Preferred Outcome Error Message
    Wait Until Element Is Visible    ${returnReasonPreferredOutcomeSelector}    30s
    Element Text Should Be    ${returnReasonPreferredOutcomeErrorMessage}    Please select a preferred outcome

Click Returns Order History Item With Multiple Quantity
    Wait Until Element Is Visible    ${cardReturnsOrderHistoryItemWithMutlipleQuantity}    30s
    Click Element    ${cardReturnsOrderHistoryItemWithMutlipleQuantity}

Scroll To Returns Order Detail Item With Multiple Quantity
    Scroll To Element In Container    ${cardReturnsOrderDetailItemWithMultipleQuantity}    ${containerReturnsHOrderDetail}    20

Click Returns Order Detail Item With Multiple Quantity
    Wait Until Element Is Visible    ${cardReturnsOrderDetailItemWithMultipleQuantity}    30s
    Click Element    ${cardReturnsOrderDetailItemWithMultipleQuantity}

Verify Returns Reason Quantity Visible
    Wait Until Element Is Visible    ${returnReasonQuantitySelector}    30s

Verify Returns Reason Quantity Error Message
    Wait Until Element Is Visible    ${returnReasonQuantitySelector}    30s
    Element Text Should Be    ${returnReasonQuantityErrorMessage}    Please select a quantity to return

Scroll To Returns Order History Item With Variant Size
    Scroll To Element In Container    ${cardReturnsOrderHistoryItemWithSizeVariantOption}    ${containerReturnsOrderHistory}    20

Click Returns Order History Item With Variant Size
    Click Element    ${cardReturnsOrderHistoryItemWithSizeVariantOption}

Scroll To Returns Order Detail Item With Variant Size
    Scroll To Element In Container    ${cardReturnsOrderDetailItemWithVariantSize}    ${containerReturnsHOrderDetail}    20

Click Returns Order Detail Item With Variant Size
    Click Element    ${cardReturnsOrderDetailItemWithVariantSize}

Click Returns Reason Reason Item Exchange
    Click Element    ${returnReasonReasonItemExchange}

Scroll To Returns Reason Variant Size Error Message
    Scroll To Element In Container    ${returnReasonVariantSizeSelectorErrorMessage}   ${containerReturnsReason}    20

Verify Returns Reason Variant Size Error Message
    Element Text Should Be    ${returnReasonVariantSizeSelectorErrorMessage}    Please select a size

Scroll To Returns Order History Item With Variant Colour
    Sleep    5s
    Scroll To Element In Container    ${cardReturnsOrderHistoryItemWithColourVariantOption}    ${containerReturnsOrderHistory}    20

Click Returns Order History Item With Variant Colour
    Click Element    ${cardReturnsOrderHistoryItemWithColourVariantOption}

Scroll To Returns Order Detail Item With Variant Colour
    Sleep    5s
    Scroll To Element In Container    ${cardReturnsOrderDetailItemWithVariantColour}    ${containerReturnsHOrderDetail}    20

Click Returns Order Detail Item With Variant Colour
    Click Element    ${cardReturnsOrderDetailItemWithVariantColour}

Scroll To Returns Reason Variant Colour Error Message
    Scroll To Element In Container    ${returnReasonVariantColourSelectorErrorMessage}   ${containerReturnsReason}    20

Verify Returns Reason Variant Colour Error Message
    Element Text Should Be    ${returnReasonVariantColourSelectorErrorMessage}    Please select a colour

Scroll To Return Reason Preferred Outcome Selector
    Scroll To Element In Container    ${returnReasonPreferredOutcomeSelector}   ${containerReturnsReason}    20

Click Return Reason Preferred Outcome Selector
    Click Element    ${returnReasonPreferredOutcomeSelector}

Click Return Reason Preferred Outcome Item
    Click Element    ${returnReasonPreferredOutcomeItem}

Input Return Reason Text Area Text
    [Arguments]    ${inputText}

    Input Text    ${returnReasonTextAreaText}    ${inputText}

Verify Returns Request Cart Header
    Wait Until Element Is Visible    ${returnRequestReturnItemsHeader}    30s

Verify Returns Request Item Image
    Wait Until Element Is Visible    ${cardReturnsRequestItemImage}    30s

Verify Returns Request Item Title
    [Arguments]    ${expectedTitle}
    Wait Until Element Is Visible    ${cardReturnsRequestItemTitle}    30s
    Element Should Contain Text    ${cardReturnsRequestItemTitle}    ${expectedTitle}

Verify Returns Request Item Price And Qty
    Wait Until Element Is Visible    ${cardReturnsRequestItemPriceAndQty}    30s
    Element Should Contain Text    ${cardReturnsRequestItemPriceAndQty}    R
    Element Should Contain Text    ${cardReturnsRequestItemPriceAndQty}    Return Qty:

Verify Returns Request Item Reason Title
    Wait Until Element Is Visible    ${cardReturnsRequestItemReasonTitle}    30s
    Element Should Contain Text    ${cardReturnsRequestItemReasonTitle}    Reason for Return:

Verify Returns Request Item Preferred Outcome Title
    Wait Until Element Is Visible    ${cardReturnsRequestItemPreferredOutcomeTitle}    30s
    Element Should Contain Text    ${cardReturnsRequestItemPreferredOutcomeTitle}    Preferred Outcome:

Swipe Returns Request Item For Delete
    ${cardItemSize}=    Get Element Size    ${cardReturnsRequestItem}
    ${cardItemLocation}=    Get Element Location    ${cardReturnsRequestItem}
    ${startPositionX}=    Evaluate    ${cardItemLocation['x']} + (${cardItemSize['width']} * 0.5)
    ${startPositionY}=    Evaluate    ${cardItemLocation['y']} + 0
    ${endPositionX}=    Evaluate    ${startPositionX} - (${cardItemSize['width']} * 0.5)
    ${endPositionY}=    Evaluate    ${cardItemLocation['y']} + 0

    Swipe    ${startPositionX}    ${startPositionY}    ${endPositionX}    ${endPositionY}
    Sleep    5s