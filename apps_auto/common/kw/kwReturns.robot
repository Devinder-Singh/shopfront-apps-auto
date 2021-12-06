*** Settings ***
Resource          ../config/defaultConfig.robot
Library    XML

*** Keywords ***
Verify Returns Menu Item    
    Element Should Be Visible    ${btnMenuExchReturns}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Element Should Contain Text    ${btnMenuExchReturnsTitle}    Returns
    Run Keyword If     '${PLATFORM_NAME}'=='ios'       Element Should Contain Text    ${btnMenuExchReturns}    Returns

Verify Returns Screen header
    [Arguments]    ${expectedTitle}
    
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Toolbar Title    ${expectedTitle}
    Run Keyword If     '${PLATFORM_NAME}'=='ios'     Verify Text On Screen     ${expectedTitle}    5s

Verify Returns Empty State Visible
    Scroll To Element    ${containerReturnsEmptyState}    scrollElement=${containerReturnsHistory}
    IF    '${PLATFORM_NAME}' == 'android'
        Scroll To Element    ${containerReturnsEmptyState}    scrollElement=${containerReturnsHistory}
    ELSE IF    '${PLATFORM_NAME}' == 'ios'
        Wait Until Element Is Visible    ${onboardingCell1}    ${MIN_TIMEOUT}
    END        

Verify NavBar Title
    [Arguments]    ${expectedTitle}

    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains Element    ${txtToolbarTitle}    ${MIN_TIMEOUT}
    Run Keyword If     '${PLATFORM_NAME}'=='ios'       Wait Until Page Contains Element    ${navController}      ${MIN_TIMEOUT}
    
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Element Should Be Visible    ${txtToolbarTitle}
    Run Keyword If     '${PLATFORM_NAME}'=='ios'       Element Should Be Visible    ${navController}

    Run Keyword If    '${PLATFORM_NAME}'=='android'    Element Text Should Be    ${txtToolbarTitle}    ${expectedTitle}
    Run Keyword If     '${PLATFORM_NAME}'=='ios'       Verify Text On Screen    ${expectedTitle}     5s

Verify Returns Empty State Step Visible
    [Arguments]    ${stepTitle}    ${stepSubtitle}

    Verify Text On Screen    ${stepTitle}     5s
    Verify Text On Screen    ${stepSubtitle}     5s

Verify Returns Post Empty State Screen Header 
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Returns Screen header    Select Order to Return Items
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Returns Screen header    Select Return Item

Verify Returns History Item Visible
    Wait Until Element Is Visible    ${cardReturnsHistoryItem}    ${MIN_TIMEOUT}
    
Verify Returns History Item Contains RRN
    Wait Until Element Is Visible    ${cardReturnsHistoryItemTitle}    ${MIN_TIMEOUT}
    Element Should Contain Text    ${cardReturnsHistoryItemTitle}    RRN

Verify Returns History Item Contains Status
    Wait Until Element Is Visible    ${cardReturnsHistoryItemStatus}    ${MIN_TIMEOUT}

Verify Returns History Item Contains Image
    Wait Until Element Is Visible    ${cardReturnsHistoryItemImage}    ${MIN_TIMEOUT}

Click Returns History Item
    Click Element    ${cardReturnsHistoryItem}

Verify Returns Call To Action Title
    [Arguments]    ${expectedTitle}

    Wait Until Element Is Visible    ${btnReturnsCallToAction}    ${MIN_TIMEOUT}
    Element Text Should Be    ${btnReturnsCallToAction}    ${expectedTitle}

Verify Returns Submit Return Action Title
    Wait Until Element Is Visible    ${btnReturnsCallToAction}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Element Text Should Be    ${btnReturnsCallToAction}    SUBMIT RETURN REQUEST
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Element Text Should Be    ${btnReturnsCallToAction}    Submit Return Request


Verify Returns Log Return Title
    Wait Until Element Is Visible    ${btnReturnsCallToAction}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Element Text Should Be    ${btnReturnsCallToAction}    LOG RETURN
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Element Text Should Be    ${btnReturnsCallToAction}    Log Return

Scoll To Returns History Policy
    Scroll To Element    ${cardReturnsHistoryPolicyItem}    20    ${containerReturnsHistory}

Verify Returns History Policy Title
    [Arguments]    ${expectedTitle}

    Wait Until Element Is Visible    ${cardReturnsHistoryPolicyItem}    ${MIN_TIMEOUT}
    Element Text Should Be    ${cardReturnsHistoryPolicyItem}    ${expectedTitle}

Swipe To Empty State Step 2
    ${emptyStateItemSize}=    Get Element Size    ${cardReturnsHistoryEmptyState1}
    ${emptyStateItemLocation}=    Get Element Location    ${cardReturnsHistoryEmptyState1}
    ${startPositionX}=    Evaluate    ${emptyStateItemLocation['x']} + ${emptyStateItemSize['width']}
    ${startPositionY}=    Evaluate    ${emptyStateItemLocation['y']} + 0
    ${endPositionX}=    Evaluate    ${startPositionX} - ${emptyStateItemSize['width']}
    ${endPositionY}=    Evaluate    ${emptyStateItemLocation['y']} + 0

    Swipe    ${startPositionX}    ${startPositionY}    ${endPositionX}    ${endPositionY}
#    Sleep    5s

Click Returns Call To Action Button
    Sleep    2
    Wait Until Element Is Visible    ${btnReturnsCallToAction}    ${MIN_TIMEOUT}
    Click Element    ${btnReturnsCallToAction}

Verify Returns Order History Filter Option View Visible
    Wait Until Element Is Visible    ${returnsOrderHistoryFilterOptionContainer}    ${MIN_TIMEOUT}

Verify Returns Order History Filter Option Button Title
    Wait Until Element Is Visible    ${btnReturnsOrderHistoryFilterOptionChange}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Element Text Should Be    ${btnReturnsOrderHistoryFilterOptionChange}    CHANGE
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Element Text Should Be    ${btnReturnsOrderHistoryFilterOptionChange}    Change

Click Returns Order History Filter Option Button
    Wait Until Element Is Visible    ${btnReturnsOrderHistoryFilterOptionChange}    ${MIN_TIMEOUT}
    Click Element    ${btnReturnsOrderHistoryFilterOptionChange}

Verify Returns Order History Filter Options
    Verify Text On Screen    Last 3 months    ${MIN_TIMEOUT}
    Verify Text On Screen    Last 6 months    ${MIN_TIMEOUT}

Click Returns Close Button
    Click Element    ${navCloseButton}

Verify Returns Order History Item Visible
    Wait Until Element Is Visible    ${cardReturnsOrderHistoryItem}    ${MIN_TIMEOUT}

Verify Returns Order History Item Title
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${cardReturnsOrderHistoryItemTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Element Should Contain Text    ${cardReturnsOrderHistoryItemTitle}    Order #
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Order #    ${MIN_TIMEOUT}

Verify Returns Order History Item Subtitle
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${cardReturnsOrderHistoryItemSubtitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Element Should Contain Text    ${cardReturnsOrderHistoryItemSubtitle}    Ordered
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Ordered

Verify Returns Order History Item Image Container
    Wait Until Element Is Visible    ${cardReturnsOrderHistoryItemImageContainer}    ${MIN_TIMEOUT}

Click Returns Close
    Run Keyword If     '${PLATFORM_NAME}'=='android'    Click Back Screen
    Run Keyword If     '${PLATFORM_NAME}'=='ios'        Click Returns Close Button

Click Returns Back
    Run Keyword If     '${PLATFORM_NAME}'=='android'    Click Back Screen
    Run Keyword If     '${PLATFORM_NAME}'=='ios'    Click Element    ${navBackButton}

Verify Returns Toolbar Title
    Run Keyword If     '${PLATFORM_NAME}'=='android'    Verify Toolbar Title    Select Order to Return Items
    Run Keyword If     '${PLATFORM_NAME}'=='ios'        Verify NavBar Title     Select Return Item

Click Returns Order History Item
    [Arguments]    ${orderItemToTap}=${cardReturnsOrderHistoryItem}
    Sleep    5s
    Click Element    ${orderItemToTap}

Verify Returns Order Detail Returnable Section
    Wait Until Element Is Visible    ${returnOrderDetailReturnableSectionTitle}    ${MIN_TIMEOUT}

Verify Returns Order Detail Non-Returnable Section
    Scroll To Element    ${returnOrderDetailNonReturnableSectionTitle}    20    ${containerReturnsHOrderDetail}

Verify Returns Order Detail Item Image
    Run Keyword If     '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${cardReturnsOrderDetailItemImage}    ${MIN_TIMEOUT}

Verify Returns Order Detail Item Title
    Wait Until Element Is Visible    ${cardReturnsOrderDetailItemTitle}    ${MIN_TIMEOUT}

Verify Returns Order Detail Item Price And Qty
    Wait Until Element Is Visible    ${cardReturnsOrderDetailItemPriceAndQty}    ${MIN_TIMEOUT}
    Element Should Contain Text    ${cardReturnsOrderDetailItemPriceAndQty}    R
    Element Should Contain Text    ${cardReturnsOrderDetailItemPriceAndQty}    Qty

Verify Returns Order Detail Item Warranty Title
    Wait Until Element Is Visible    ${cardReturnsOrderDetailItemWarrantyTitle}    ${MIN_TIMEOUT}
    ${hasValidWarranty}=    Run Keyword And Return Status    Element Should Contain Text    ${cardReturnsOrderDetailItemWarrantyTitle}    Warranty
    Run Keyword And Return If    ${hasValidWarranty}==False    Element Should Contain Text   ${cardReturnsOrderDetailItemWarrantyTitle}    Non-Returnable

Verify Returns Order Detail Item Warranty Subtitle
    ${hasValidWarranty}=    Run Keyword And Return Status    Element Should Contain Text    ${cardReturnsOrderDetailItemWarrantyTitle}    Warranty
    Run Keyword And Return If    ${hasValidWarranty}==True    Wait Until Element Is Visible    ${cardReturnsOrderDetailItemWarrantySubtitle}    ${MIN_TIMEOUT}
    Run Keyword And Return If    ${hasValidWarranty}==True    Element Should Contain Text    ${cardReturnsOrderDetailItemWarrantySubtitle}    Warranty Expires

Click Returns Order Detail Item Warranty Title
   Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${cardReturnsOrderDetailItemWarrantyTitle}
   Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${cardReturnsOrderDetailItemWarrantyInfo} 

Verify Returns Order Detail Item Warranty Dialog Title
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${returnsOrderDetailWarrantyDialogTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Element Should Contain Text    ${returnsOrderDetailWarrantyDialogTitle}    Limited Warranty
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Limited Warranty    ${MIN_TIMEOUT}

Verify Returns Order Detail Item Warranty Dialog Message
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${returnsOrderDetailWarrantyDialogMessage}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'   Element Should Contain Text    ${returnsOrderDetailWarrantyDialogMessage}    Limited warranty, with certain exclusions, as defined by the manufacturer. Please consult the manufacturer for further details.
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Limited warranty, with certain exclusions, as defined by the manufacturer. Please consult the manufacturer for further details.    ${MIN_TIMEOUT}

Verify Returns Order Detail Item Warranty Dialog Button
    Wait Until Element Is Visible    ${returnsOrderDetailWarrantyDialogButton}    ${MIN_TIMEOUT}
    Element Should Contain Text    ${returnsOrderDetailWarrantyDialogButton}    OK

Close Returns Order Detail Item Warranty Dialog
    Click Element    ${returnsOrderDetailWarrantyDialogButton}

Click Returns Order Detail Returnable Item
    Click Element    ${cardReturnsOrderDetailReturnableItem}

Click Returns Order Detail Non Returnable Item
    Click Element    ${cardReturnsOrderDetailNonReturnableItem}

Scroll To First Non Returnable Reason
    Scroll To Element    ${cardReturnsOrderDetailItemNonReturnableReasonTitle}    20    ${containerReturnsHOrderDetail}

Verify Return Reason Reason Selector Visible
    Wait Until Element Is Visible    ${returnReasonReasonSelector}    ${MIN_TIMEOUT}

Verify Reason For Return Title
    [Arguments]    ${expectedTitle}

    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Toolbar Title    ${expectedTitle}

    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Page Contains Element    ${txtReasonForReturnTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Element Should Be Visible    ${txtReasonForReturnTitle}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Element Text Should Be    ${txtReasonForReturnTitle}    ${expectedTitle}

Verify Return Reason Reason Selector Text
    [Arguments]    ${expectedText}
    Element Text Should Be    ${returnReasonReasonSelectorText}    ${expectedText}

Verify Return Reason Reason Selector Error Message
    Wait Until Element Is Visible    ${returnReasonReasonSelectorErrorText}    ${MIN_TIMEOUT}
    Element Text Should Be    ${returnReasonReasonSelectorErrorText}    Please select a reason for return

Click Return Reason Reason Selector
    Wait Until Element Is Visible    ${returnReasonReasonSelector}    ${MIN_TIMEOUT}
    Click Element    ${returnReasonReasonSelector}

Click Return Reason Reason Non-Exchange Item
    Wait Until Element Is Visible    ${returnReasonReasonItemNonExchange}    ${MIN_TIMEOUT}
    Click Element    ${returnReasonReasonItemNonExchange}

Scroll To Return Reason Text Area
    Scroll To Element    ${returnReasonTextArea}    20   ${containerReturnsReason}

Verify Return Reason Text Area Error Message
    Wait Until Element Is Visible    ${returnReasonTextArea}    ${MIN_TIMEOUT}
    Element Text Should Be    ${returnReasonTextAreaErrorMessage}    Please describe the problem

Verify Return Reason Preferred Outcome Visible
    Wait Until Element Is Visible    ${returnReasonPreferredOutcomeSelector}    ${MIN_TIMEOUT}

Verify Return Reason Preferred Outcome Error Message
    Wait Until Element Is Visible    ${returnReasonPreferredOutcomeSelector}    ${MIN_TIMEOUT}
    Element Text Should Be    ${returnReasonPreferredOutcomeErrorMessage}    Please select a preferred outcome

Click Returns Order History Item With Multiple Quantity
    Wait Until Element Is Visible    ${cardReturnsOrderHistoryItemWithMutlipleQuantity}    ${MIN_TIMEOUT}
    Click Element    ${cardReturnsOrderHistoryItemWithMutlipleQuantity}

Scroll To Returns Order Detail Item With Multiple Quantity
    Scroll To Element    ${cardReturnsOrderDetailItemWithMultipleQuantity}    20    ${containerReturnsHOrderDetail}

Click Returns Order Detail Item With Multiple Quantity
    Wait Until Element Is Visible    ${cardReturnsOrderDetailItemWithMultipleQuantity}    ${MIN_TIMEOUT}
    Click Element    ${cardReturnsOrderDetailItemWithMultipleQuantity}

Verify Returns Reason Quantity Visible
    Wait Until Element Is Visible    ${returnReasonQuantitySelector}    ${MIN_TIMEOUT}

Verify Returns Reason Quantity Error Message
    Wait Until Element Is Visible    ${returnReasonQuantitySelector}    ${MIN_TIMEOUT}
    Element Text Should Be    ${returnReasonQuantityErrorMessage}    Please select a quantity to return

Scroll To Returns Order History Item With Variant Size
    Scroll To Element    ${cardReturnsOrderHistoryItemWithSizeVariantOption}    20    ${containerReturnsOrderHistory}

Click Returns Order History Item With Variant Size
    Click Element    ${cardReturnsOrderHistoryItemWithSizeVariantOption}

Scroll To Returns Order Detail Item With Variant Size
    Scroll To Element    ${cardReturnsOrderDetailItemWithVariantSize}    20    ${containerReturnsHOrderDetail}

Click Returns Order Detail Item With Variant Size
    Click Element    ${cardReturnsOrderDetailItemWithVariantSize}

Click Returns Reason Reason Item Exchange
    Click Element    ${returnReasonReasonItemExchange}

Scroll To Returns Reason Variant Size Error Message
    Scroll To Element    ${returnReasonVariantSizeSelectorErrorMessage}    20   ${containerReturnsReason}

Verify Returns Reason Variant Size Error Message
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Element Text Should Be    ${returnReasonVariantSizeSelectorErrorMessage}    Please select a size
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Element Text Should Be    ${returnReasonVariantSizeSelectorErrorMessage}    Please select size

Scroll To Returns Order History Item With Variant Colour
#    Sleep    5s
    Scroll To Element    ${cardReturnsOrderHistoryItemWithColourVariantOption}    20    ${containerReturnsOrderHistory}

Click Returns Order History Item With Variant Colour
    Click Element    ${cardReturnsOrderHistoryItemWithColourVariantOption}

Scroll To Returns Order Detail Item With Variant Colour
#    Sleep    5s
    Scroll To Element    ${cardReturnsOrderDetailItemWithVariantColour}    20    ${containerReturnsHOrderDetail}

Click Returns Order Detail Item With Variant Colour
    Click Element    ${cardReturnsOrderDetailItemWithVariantColour}

Scroll To Returns Reason Variant Colour Error Message
    Scroll To Element    ${returnReasonVariantColourSelectorErrorMessage}    20   ${containerReturnsReason}

Verify Returns Reason Variant Colour Error Message
    Element Text Should Be    ${returnReasonVariantColourSelectorErrorMessage}    Please select a colour

Scroll To Return Reason Preferred Outcome Selector
    Scroll To Element    ${returnReasonPreferredOutcomeSelector}    20   ${containerReturnsReason}

Click Return Reason Preferred Outcome Selector
    Click Element    ${returnReasonPreferredOutcomeSelector}

Click Return Reason Preferred Outcome Item
    Click Element    ${returnReasonPreferredOutcomeItem}

Input Return Reason Text Area Text
    [Arguments]    ${inputText}

    Input Text    ${returnReasonTextAreaText}    ${inputText}

Verify Returns Request Cart Header
    Wait Until Element Is Visible    ${returnRequestReturnItemsHeader}    ${MIN_TIMEOUT}

Verify Return Request Return Method Header
    Wait Until Element Is Visible    ${returnRequestReturnItemsHeader}    ${MIN_TIMEOUT}

Verify Returns Request Item Image
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${cardReturnsRequestItemImage}    ${MIN_TIMEOUT}

Verify Returns Request Item Title
    [Arguments]    ${expectedTitle}
    Wait Until Element Is Visible    ${cardReturnsRequestItemTitle}    ${MIN_TIMEOUT}
    Element Should Contain Text    ${cardReturnsRequestItemTitle}    ${expectedTitle}

Verify Returns Request Item Price And Qty
    Wait Until Element Is Visible    ${cardReturnsRequestItemPriceAndQty}    ${MIN_TIMEOUT}
    Element Should Contain Text    ${cardReturnsRequestItemPriceAndQty}    R
    Element Should Contain Text    ${cardReturnsRequestItemPriceAndQty}    Return Qty:

Verify Returns Request Item Reason Title
    Wait Until Element Is Visible    ${cardReturnsRequestItemReasonTitle}    ${MIN_TIMEOUT}
    Element Should Contain Text    ${cardReturnsRequestItemReasonTitle}    Reason for Return:

Verify Returns Request Item Preferred Outcome Title
    Wait Until Element Is Visible    ${cardReturnsRequestItemPreferredOutcomeTitle}    ${MIN_TIMEOUT}
    Element Should Contain Text    ${cardReturnsRequestItemPreferredOutcomeTitle}    Preferred Outcome:

Swipe Returns Request Item For Delete
    ${cardItemSize}=    Get Element Size    ${cardReturnsRequestItem}
    ${cardItemLocation}=    Get Element Location    ${cardReturnsRequestItem}
    ${startPositionX}=    Evaluate    ${cardItemLocation['x']} + (${cardItemSize['width']} * 0.5)
    ${startPositionY}=    Evaluate    ${cardItemLocation['y']} + 0
    ${endPositionX}=    Evaluate    ${startPositionX} - (${cardItemSize['width']} * 0.5)
    ${endPositionY}=    Evaluate    ${cardItemLocation['y']} + 0

    Swipe    ${startPositionX}    ${startPositionY}    ${endPositionX}    ${endPositionY}
#    Sleep    5s

Tap Delete Button
    Sleep    1
    Run Keyword If     '${PLATFORM_NAME}'=='ios'       Wait Until Element Is Visible    ${btnReturnsRequestItemDelete}    ${MIN_TIMEOUT}
    Run Keyword If     '${PLATFORM_NAME}'=='ios'       Click Element    ${btnReturnsRequestItemDelete}

Verify Edit Return Deletion Dialogue
    IF    ${PLATFORM_NAME} == 'android'
        Verify Return Reason Dialog    Remove Item    Remove item from return request?    KEEP    REMOVE
    ELSE 
        Verify Return Reason Dialog    Remove Item    Remove item from return request?    Keep    Remove
    END
    
Verify Returns Request Delete Dialog
     IF    ${PLATFORM_NAME} == 'android'
        Verify Returns Request Dialog    Remove Item    Remove item from return request?    KEEP    REMOVE
    ELSE 
        Verify Returns Request Dialog    Are you sure?    Remove item from return request?    Keep    Remove
    END
Verify Returns Request Dialog
    [Arguments]    ${expectedTitle}    ${expectedMessage}    ${negativeButton}    ${positiveButton}
    Element Text Should Be    ${returnsRequestDialogTitle}    ${expectedTitle}
    Element Text Should Be    ${returnsRequestDialogMessage}    ${expectedMessage}
    Element Text Should Be    ${returnsRequestDialogNegativeActionButton}     ${negativeButton}
    Element Text Should Be    ${returnsRequestDialogPositiveActionButton}       ${positiveButton}

Click Returns Request Delete Dialog Keep Option
    Click Element    ${returnsRequestDialogNegativeActionButton}

Click Returns Request Delete Dialog Remove Option
    Click Element    ${returnsRequestDialogPositiveActionButton}

Click Returns Request Cart Item
    Click Element    ${cardReturnsRequestItem}

Verify Return Reason Toolbar Delete Icon
    Wait Until Element Is Visible    ${returnReasonToolbarDeleteIcon}    ${MIN_TIMEOUT}

Click Return Reason Toolbar Delete Icon
    Click Element    ${returnReasonToolbarDeleteIcon}

Verify Return Reason Dialog
    [Arguments]    ${expectedTitle}    ${expectedMessage}    ${negativeButton}    ${positiveButton}
    Element Text Should Be    ${returnReasonDialogTitle}    ${expectedTitle}
    Element Text Should Be    ${returnReasonDialogMessage}    ${expectedMessage}
    Element Text Should Be    ${returnReasonDialogNegativeActionButton}     ${negativeButton}
    Element Text Should Be    ${returnReasonDialogPositiveActionButton}       ${positiveButton}

Click Return Reason Delete Dialog Keep Option
    Click Element    ${returnReasonDialogNegativeActionButton}

Click Return Reason Delete Dialog Remove Option
    Click Element    ${returnReasonDialogPositiveActionButton}

Click Returns Request Add Another Item
    Click Element    ${returnRequestAddAnotherItemButton}

Click Returns Order Detail Returnable Item 2
    Click Element    ${cardReturnsOrderDetailReturnableItem2}

Click Return Select Return Method Address
    Click Element    ${returnSelectReturnMethodCollect}

Click Return Select Address Item
    Wait Until Element Is Visible    ${returnSelectAddressItem}    ${MIN_TIMEOUT}
    Click Element    ${returnSelectAddressItem}
#    Sleep    10s

Verify Return Select Address Item
    Wait Until Element Is Visible    ${returnSelectAddressItemName}    30s

Scroll To Return Request Return Method Section
    Scroll To Element    ${returnRequestReturnMethodHeader}    20    ${containerReturnRequest}

Scroll To Return Request Delivery Method Selector
    Scroll To Element    ${returnRequestDeliveryMethodSelector}    20     ${containerReturnRequest}

Scroll To Return Request Collect Adress Delivery Method Selector
    IF    '${PLATFORM_NAME}' == 'android'
        Scroll To Element    ${returnRequestDeliveryMethodSelector}    loopTimes=20     scrollElement=${containerReturnRequest}
    ELSE IF     '${PLATFORM_NAME}' == 'ios'
        Scroll To Element    ${returnRequestCollectAdressSelector}    loopTimes=20    scrollElement=${containerReturnRequest}
    END
    
Verify Return Request Delivery Method Selector
    [Arguments]    ${expectedTitle}
    
    Element Should Be Visible    ${returnRequestDeliveryMethodSelectorTitle}
    Element Should Be Visible    ${returnRequestDeliveryMethodSelectorButton}
    
    Element Text Should Be    ${returnRequestDeliveryMethodSelectorTitle}    ${expectedTitle}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Element Text Should Be    ${returnRequestDeliveryMethodSelectorButton}    CHANGE
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Element Text Should Be    ${returnRequestDeliveryMethodSelectorButton}    Change

Scroll To Return Request Delivery Method Address
    Scroll To Element    ${returnRequestDeliveryMethodAddress}    20     ${containerReturnRequest}

Verify Return Request Delivery Method Address Title
    Element Should Be Visible    ${returnRequestDeliveryMethodAddressTitle}
    Element Text Should Be    ${returnRequestDeliveryMethodAddressTitle}    Collection Address

Verify Return Request Delivery Method Address Details
    [Arguments]    ${expectedPillTitle}    ${expectedRecipientName}    ${expectedAddressDetail}
    
    Wait Until Element Is Visible    ${returnRequestDeliveryMethodAddressTypePill}    30s
    Element Text Should Be    ${returnRequestDeliveryMethodAddressTypePill}    ${expectedPillTitle}

    Wait Until Element Is Visible    ${returnRequestDeliveryMethodAddressRecipientName}    30s
    Element Text Should Be    ${returnRequestDeliveryMethodAddressRecipientName}    ${expectedRecipientName}

    Wait Until Element Is Visible    ${returnRequestDeliveryMethodAddressDetailText}    30s
    Element Text Should Be    ${returnRequestDeliveryMethodAddressDetailText}    ${expectedAddressDetail}

Scroll To Return Request Contact Detail Section
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Scroll To Element    ${returnRequestContactDetailSelector}    20    ${containerReturnRequest}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Swipe Up    ${windowScroll}

Verify Return Request Contact Details Section
    Element Should Be Visible    ${returnRequestContactDetailSelectorTitle}
    Element Should Be Visible    ${returnRequestContactDetailSelectorButton}
    
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Element Text Should Be    ${returnRequestContactDetailSelectorTitle}    SMS notification for this return will be sent to:
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Element Text Should Be    ${returnRequestContactDetailSelectorButton}    CHANGE
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Element Should Contain Text    ${returnRequestContactDetailSelectorTitle}    SMS notifications for this return will be sent to
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Element Text Should Be    ${returnRequestContactDetailSelectorButton}    Change

Verify Return Contact Details Input Fields
    [Arguments]    ${expectedFullName}    ${expectedMobileNumber}

    Element Text Should Be    ${returnContactDetailsNameField}    ${expectedFullName}
    Element Text Should Be    ${returnContactDetailsMobileNumberField}    ${expectedMobileNumber}

Verify Return Request Contact Details Info
    [Arguments]    ${expectedContactDetailInfo}

    Run Keyword If    '${PLATFORM_NAME}'=='android'    Element Text Should Be    ${returnRequestContactDetailSelectorSubtitle}    ${expectedContactDetailInfo}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen     ${expectedContactDetailInfo}    5s

Verify Return Request Loading State Not Visible
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Does Not Contain Element    ${returnRequestShimmer}    ${MIN_TIMEOUT}

Scroll To Return Request Cart Item
    Scroll To Element    ${cardReturnsRequestItem}    20     ${containerReturnRequest}

Verify Return Request Empty State
    Wait Until Element Is Visible    ${returnRequestEmptyState}    ${MIN_TIMEOUT}

Click Return Request Empty State Call To Action
    Click Element    ${returnRequestEmptyStateCallToAction}

Click Return Request Delivery Method Selector
    Click Element    ${returnRequestDeliveryMethodSelector}

Click Return Request Collect Adress Delivery Method Selector
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${returnRequestDeliveryMethodSelector}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${returnRequestCollectAdressSelector}

Verify Return Request Delivery Method Address Type Pill
    Element Should Be Visible    ${returnRequestDeliveryMethodAddressTypePill}

Verify Return Request Delivery Method Address Recipient Name
    Element Should Be Visible    ${returnRequestDeliveryMethodAddressRecipientName}

Verify Return Request Delivery Method Address Detail
    Element Should Be Visible    ${returnRequestDeliveryMethodAddressDetailText}

Click Return Request Contact Details Selector
    Click Element    ${returnRequestContactDetailSelector}

Verify Return Select Delivery Method Pickup Point Option
    [Arguments]    ${expectedTitle}

    Element Should Be Visible    ${returnSelectReturnMethodPickupPoint}
    Element Text Should Be    ${returnSelectReturnMethodPickupPointTitle}   ${expectedTitle}

Verify Return Select Delivery Method Collect Option
    [Arguments]    ${expectedTitle}

    Element Should Be Visible    ${returnSelectReturnMethodCollect}
    Element Text Should Be    ${returnSelectReturnMethodCollectTitle}   ${expectedTitle}

Click Return Select Delivery Method Pickup Point Option
    Click Element    ${returnSelectReturnMethodPickupPoint}

Verify Return Select Delivery Method Pickup Point Item Title
    Wait Until Element Is Visible    ${returnSelectPickupPointItemTitle}    ${MIN_TIMEOUT}

Verify Return Select Delivery Method Pickup Point Item Subtitle
    Wait Until Element Is Visible    ${returnSelectPickupPointItemSubtitle}    ${MIN_TIMEOUT}

Verify Return Select Delivery Method Pickup Point Item Info Button
    Wait Until Element Is Visible    ${returnSelectPickupPointItemInfoButton}    ${MIN_TIMEOUT}
    Element Text Should Be    ${returnSelectPickupPointItemInfoButton}    INFO

Click Return Select Delivery Method Pickup Point Item
    Click Element    ${returnSelectPickupPointItemTitle}

Click Return Select Pickup Point Filter Option
    Click Element    ${returnSelectPickupPointFilterChangeButton}

Verify Return Select Pickup Point Province Title
    [Arguments]    ${expectedTitle}

    Wait Until Element Is Visible    ${returnSelectPickupPointProvinceTitle}    30s
    Element Text Should Be    ${returnSelectPickupPointProvinceTitle}    ${expectedTitle}

Click Return Select Pickup Point Item Info
    Click Element    ${returnSelectPickupPointItemInfoButton}

Verify Return Pickup Point Info Details
    [Arguments]    ${expectedName}    ${expectedProvince}    ${expectedAddress}    ${expectedNotificationMessage}

    Wait Until Element Is Visible    ${returnSelectPickupPointInfoMap}    30s
    Wait Until Element Is Visible    ${returnSelectPickupPointInfoBusinessHourContainer}    30s

    Wait Until Element Is Visible    ${returnSelectPickupPointInfoTPPName}    30s
    Element Text Should Be    ${returnSelectPickupPointInfoTPPName}    ${expectedName}

    Wait Until Element Is Visible    ${returnSelectPickupPointInfoTPPProvince}    30s
    Element Text Should Be    ${returnSelectPickupPointInfoTPPProvince}    ${expectedProvince}

    Wait Until Element Is Visible    ${returnSelectPickupPointInfoTPPAddress}    30s
    Element Text Should Be    ${returnSelectPickupPointInfoTPPAddress}    ${expectedAddress}

    Wait Until Element Is Visible    ${returnSelectPickupPointInfoNotification}    30s
    Element Text Should Be    ${returnSelectPickupPointInfoNotification}    ${expectedNotificationMessage}

Verify Return Pickup Point Info Call To Action
    [Arguments]    ${expectedTitle}
    Element Text Should Be    ${returnSelectPickupPointCallToAction}    ${expectedTitle}

Click Return Pickup Point Info Call To Action
    Click Element    ${returnSelectPickupPointCallToAction}

Verify Return Select Delivery Method Pickup Point Option Is Not Active
    [Arguments]    ${expectedTitle}

    Verify Return Select Delivery Method Pickup Point Option    ${expectedTitle}
    Click Return Select Delivery Method Pickup Point Option
    Verify Returns Screen header    Select Return Method

Verify Return Request Return Method Header Is Not Present
    Wait Until Page Does Not Contain Element    ${returnRequestReturnMethodHeader}    30s

Click Return Address Item Edit
    Click Element    ${returnSelectAddressItemEditButton}

Click Return Address Item Delete
    Click Element    ${returnSelectAddressItemDeleteButton}

Confirm Return Address Item Delete Dialog
    Wait Until Element Is Visible    ${returnSelectAddressDeleteDialogTitle}    30s
    Element Text Should Be    ${returnSelectAddressDeleteDialogTitle}     Delete Address

    Wait Until Element Is Visible    ${returnSelectAddressDeleteDialogMessage}    30s
    Element Text Should Be    ${returnSelectAddressDeleteDialogMessage}    Are you sure you want to delete this address?

    Wait Until Element Is Visible    ${returnSelectAddressDeleteDialogConfirmationButton}    30s
    Element Text Should Be    ${returnSelectAddressDeleteDialogConfirmationButton}    DELETE

    Click Element    ${returnSelectAddressDeleteDialogConfirmationButton}

Click Return Address Add Option
    Wait Until Element Is Visible    ${returnSelectAddressAddAddress}    30s
    Click Element    ${returnSelectAddressAddAddress}

Verify Return Address Empty State
    IF    ${PLATFORM_NAME} == 'android'
        Wait Until Element Is Visible    ${returnSelectAddressEmptyState}    30s
        Wait Until Element Is Visible    ${returnSelectAddressEmptyStateTitle}    30s
        Element Text Should Be    ${returnSelectAddressEmptyStateTitle}    You don't have any addresses saved.

        Wait Until Element Is Visible    ${returnSelectAddressEmptyStateMessage}    30s
        Element Text Should Be    ${returnSelectAddressEmptyStateMessage}    Please add a Delivery Address.
    ELSE 
        Sleep    1
        Verify Text On Screen    You don't have any addresses saved. Please add a Delivery Address.
    END

Verify Return Address Add Option
    Wait Until Element Is Visible    ${returnSelectAddressAddAddress}    30s

Click Return Address Incomplete Item
    Sleep    2s
    Click Element    ${returnSelectAddressIncompleteItem}

Update Incomplete Address
    [Arguments]    ${name}    ${mobile}    ${street}
    Clear Text    ${txtRecipientNameMyAcc}
    Input Text    ${txtRecipientNameMyAcc}    ${name}
    Clear Text    ${txtRecipientMobileMyAcc}
    Input Text    ${txtRecipientMobileMyAcc}    ${mobile}
    Swipe Up    ${windowScroll}    
    Clear Text    ${txtRecipientComplexMyAcc}
    Input Text    ${txtRecipientComplexMyAcc}    ABC
    Swipe Up    ${windowScroll}
    Clear Text    ${txtRecipientStreetMyAcc}
    Input Text    ${txtRecipientStreetMyAcc}    ${street}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtRecipientStreetMyAcc}
    Sleep    10s
    Run Keyword If    '${street}'=='""'    Click Element    ${txtRecipientMobileMyAcc}
    Run Keyword If    '${street}'=='""'    Swipe Up    ${windowScroll}
    Run Keyword If    '${street}'=='&*'    Click Element    ${txtRecipientMobileMyAcc}
    Run Keyword If    '${street}'=='&*'    Swipe Up    ${windowScroll}

    Run Keyword If    '${PLATFORM_NAME}'=='android'    Press Keycode    20
    Sleep    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Press Keycode    20
    Sleep    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Press Keycode    66

    Run Keyword If    '${PLATFORM_NAME}'=='ios' and '${street}'!='&*'    Wait Until Element Is Visible    ${lblAddresOption}    15s
    Run Keyword If    '${PLATFORM_NAME}'=='ios' and '${street}'!='&*'    Click Element    ${lblAddresOption}
    Sleep    3s
    Swipe Up    ${windowScroll}
    Click Save Address

Clear Return Contact Details Input Fields
    Clear Text    ${returnContactDetailsNameField}
    Clear Text    ${returnContactDetailsMobileNumberField}

Verify Return Contact Details Input Field Validation
    [Arguments]    ${expectedNameValidation}    ${expectedMobileNumberValidation}

    Verify Text On Screen    ${expectedNameValidation}    30s
    Verify Text On Screen    ${expectedMobileNumberValidation}    30s

Edit Return Contact Details Input
    [Arguments]    ${expectedName}    ${expectedMobileNumber}

    Clear Return Contact Details Input Fields
    Input Text    ${returnContactDetailsNameField}    ${expectedName}
    Input Text    ${returnContactDetailsMobileNumberField}    ${expectedMobileNumber}

Verify Return Success Details
    Wait Until Element Is Visible    ${returnSuccessIcon}    ${MIN_TIMEOUT}

    Wait Until Element Is Visible    ${returnSuccessTitle}    ${MIN_TIMEOUT}
    Element Text Should Be    ${returnSuccessTitle}    Return Request Submitted

    Wait Until Element Is Visible    ${returnSuccessSubtitle}    ${MIN_TIMEOUT}
    Element Should Contain Text    ${returnSuccessSubtitle}    Reference: MRRN

    Wait Until Element Is Visible    ${returnSuccessImageContainer}    ${MIN_TIMEOUT}

    Wait Until Element Is Visible    ${returnSuccessTrackButton}    ${MIN_TIMEOUT}
    Element Text Should Be    ${returnSuccessTrackButton}    TRACK RETURN

Click Return Success Track
    Click Element    ${returnSuccessTrackButton}

Verify Return Success Flow From Return Request
    Verify Returns Call To Action Title    SUBMIT RETURN REQUEST
    Click Returns Call To Action Button
    Sleep    5s
    Verify Toolbar Title    Return Request Submitted
    Verify Return Success Details
    Click Return Success Track
    Sleep    1s
    Verify Toolbar Title    Returns


Add Liquor Return Item To Return Request
    Click Returns Call To Action Button
    Sleep    5s
    Scroll To Element    ${cardReturnsOrderHistoryItemWithLiquorOption}    20    ${containerReturnsOrderHistory}
    Click Element    ${cardReturnsOrderHistoryItemWithLiquorOption}
    Sleep    5s
    Scroll To Element    ${cardReturnsOrderDetailItemWithLiquor}    20    ${containerReturnsHOrderDetail}
    Click Element    ${cardReturnsOrderDetailItemWithLiquor}
    Click Return Reason Reason Selector
    Click Return Reason Reason Non-Exchange Item
    Scroll To Return Reason Preferred Outcome Selector
    Click Return Reason Preferred Outcome Selector
    Click Return Reason Preferred Outcome Item
    Scroll To Return Reason Text Area
    Input Return Reason Text Area Text    Test Description
    Click Returns Call To Action Button

# Setup Keyword for getting a product in returns request
Add Single Return Item To Return Request
    [Arguments]    ${orderItemToTap}=${cardReturnsOrderHistoryItem}
    Click Returns Call To Action Button
    Click Returns Order History Item    ${orderItemToTap}
    Sleep    1
    Click Returns Order Detail Returnable Item
    Click Return Reason Reason Selector
    Click Return Reason Reason Non-Exchange Item
    Scroll To Return Reason Preferred Outcome Selector
    Click Return Reason Preferred Outcome Selector
    Click Return Reason Preferred Outcome Item
    Scroll To Return Reason Text Area
    Input Return Reason Text Area Text    Test Description
    Click Returns Call To Action Button
    Verify Returns Screen header    Log Return Request

Add Single Return First Item To Return Request
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Add Single Return Item To Return Request
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Add Single Return Item To Return Request    ${cardReturnsOrderHistoryItem1}

Add Two Return Items to Return Request
    [Arguments]    ${orderItemToTap}=${cardReturnsOrderHistoryItem}
    Add Single Return Item To Return Request    ${orderItemToTap}
    Click Returns Request Add Another Item
    Verify Returns Screen header    Select Return Item
    Click Returns Order Detail Returnable Item 2
    Click Return Reason Reason Selector
    Click Return Reason Reason Non-Exchange Item
    Scroll To Return Reason Preferred Outcome Selector
    Click Return Reason Preferred Outcome Selector
    Click Return Reason Preferred Outcome Item
    Scroll To Return Reason Text Area
    Input Return Reason Text Area Text    Test Description
    Click Returns Call To Action Button
    Verify Return Request Loading State Not Visible