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
#    Sleep    5s

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
#    Sleep    5s
    Scroll To Element In Container    ${cardReturnsOrderHistoryItemWithColourVariantOption}    ${containerReturnsOrderHistory}    20

Click Returns Order History Item With Variant Colour
    Click Element    ${cardReturnsOrderHistoryItemWithColourVariantOption}

Scroll To Returns Order Detail Item With Variant Colour
#    Sleep    5s
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

Verify Return Request Return Method Header
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
#    Sleep    5s

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
    Wait Until Element Is Visible    ${returnReasonToolbarDeleteIcon}    30s

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
    Wait Until Element Is Visible    ${returnSelectAddressItemName}    30s
    Click Element    ${returnSelectAddressItem}
#    Sleep    10s

Verify Return Select Address Item
    Wait Until Element Is Visible    ${returnSelectAddressItemName}    30s

Scroll To Return Request Return Method Section
    Scroll To Element In Container    ${returnRequestReturnMethodHeader}    ${containerReturnRequest}    20

Scroll To Return Request Delivery Method Selector
    Scroll To Element In Container    ${returnRequestDeliveryMethodSelector}     ${containerReturnRequest}    20

Verify Return Request Delivery Method Selector
    [Arguments]    ${expectedTitle}
    
    Element Should Be Visible    ${returnRequestDeliveryMethodSelectorTitle}
    Element Should Be Visible    ${returnRequestDeliveryMethodSelectorButton}
    
    Element Text Should Be    ${returnRequestDeliveryMethodSelectorTitle}    ${expectedTitle}
    Element Text Should Be    ${returnRequestDeliveryMethodSelectorButton}    CHANGE

Scroll To Return Request Delivery Method Address
    Scroll To Element In Container    ${returnRequestDeliveryMethodAddress}     ${containerReturnRequest}    20

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
    Scroll To Element In Container    ${returnRequestContactDetailSelector}    ${containerReturnRequest}    20

Verify Return Request Contact Details Section
    Element Should Be Visible    ${returnRequestContactDetailSelectorTitle}
    Element Should Be Visible    ${returnRequestContactDetailSelectorButton}
    
    Element Text Should Be    ${returnRequestContactDetailSelectorTitle}    SMS notification for this return will be sent to:
    Element Text Should Be    ${returnRequestContactDetailSelectorButton}    CHANGE

Verify Return Contact Details Input Fields
    [Arguments]    ${expectedFullName}    ${expectedMobileNumber}

    Element Text Should Be    ${returnContactDetailsNameField}    ${expectedFullName}
    Element Text Should Be    ${returnContactDetailsMobileNumberField}    ${expectedMobileNumber}

Verify Return Request Contact Details Info
    [Arguments]    ${expectedContactDetailInfo}

    Element Text Should Be    ${returnRequestContactDetailSelectorSubtitle}    ${expectedContactDetailInfo}

Verify Return Request Loading State Not Visible
    Wait Until Page Does Not Contain Element    ${returnRequestShimmer}    30s

Scroll To Return Request Cart Item
    Scroll To Element In Container    ${cardReturnsRequestItem}     ${containerReturnRequest}    20

Verify Return Request Empty State
    Wait Until Element Is Visible    ${returnRequestEmptyState}    30s

Click Return Request Empty State Call To Action
    Click Element    ${returnRequestEmptyStateCallToAction}

Click Return Request Delivery Method Selector
    Click Element    ${returnRequestDeliveryMethodSelector}

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
    Wait Until Element Is Visible    ${returnSelectPickupPointItemTitle}    30s

Verify Return Select Delivery Method Pickup Point Item Subtitle
    Wait Until Element Is Visible    ${returnSelectPickupPointItemSubtitle}    30s

Verify Return Select Delivery Method Pickup Point Item Info Button
    Wait Until Element Is Visible    ${returnSelectPickupPointItemInfoButton}    30s
    Element Text Should Be    ${returnSelectPickupPointItemInfoButton}    INFO

Click Return Select Delivery Method Pickup Point Item
    Click Element    ${returnSelectPickupPointItemTitle}

Verify Return Select Delivery Method Pickup Point Option Is Not Active
    [Arguments]    ${expectedTitle}

    Verify Return Select Delivery Method Pickup Point Option    ${expectedTitle}
    Click Return Select Delivery Method Pickup Point Option
    Verify Toolbar Title    Select Return Method

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
    Wait Until Element Is Visible    ${returnSelectAddressEmptyState}    30s

    Wait Until Element Is Visible    ${returnSelectAddressEmptyStateTitle}    30s
    Element Text Should Be    ${returnSelectAddressEmptyStateTitle}    You don't have any addresses saved.

    Wait Until Element Is Visible    ${returnSelectAddressEmptyStateMessage}    30s
    Element Text Should Be    ${returnSelectAddressEmptyStateMessage}    Please add a Delivery Address.

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

Add Liquor Return Item To Return Request
    Click Returns Call To Action Button
    Sleep    5s
    Scroll To Element In Container    ${cardReturnsOrderHistoryItemWithLiquorOption}    ${containerReturnsOrderHistory}    20
    Click Element    ${cardReturnsOrderHistoryItemWithLiquorOption}
    Sleep    5s
    Scroll To Element In Container    ${cardReturnsOrderDetailItemWithLiquor}    ${containerReturnsHOrderDetail}    20
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
    Click Returns Call To Action Button
    Click Returns Order History Item
    Click Returns Order Detail Returnable Item
    Click Return Reason Reason Selector
    Click Return Reason Reason Non-Exchange Item
    Scroll To Return Reason Preferred Outcome Selector
    Click Return Reason Preferred Outcome Selector
    Click Return Reason Preferred Outcome Item
    Scroll To Return Reason Text Area
    Input Return Reason Text Area Text    Test Description
    Click Returns Call To Action Button
    Verify Toolbar Title    Log Return Request

Add Two Return Items to Return Request
    Add Single Return Item To Return Request
    Click Returns Request Add Another Item
    Verify Toolbar Title    Select Return Item
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