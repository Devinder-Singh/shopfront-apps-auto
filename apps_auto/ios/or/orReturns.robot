*** Variables ***
${containerReturnsHistory}    chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeTable
${containerReturnsEmptyState}    ${EMPTY}
${onboardingCell1}    chain=**/XCUIElementTypeStaticText[`label == "Log a Return"`]
${returnsToolBar}     chain=**/XCUIElementTypeNavigationBar[`name == "Returns"`]
${navController}      id=NavController
${navCloseButton}     id=icon close
${navBackButton}    id=Back

${cardReturnsHistoryEmptyState1}    chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[2]

${cardReturnsHistoryItem}    chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[2]
${cardReturnsHistoryItemTitle}    xpath=(//XCUIElementTypeStaticText[@name="orderItemTitle"])[1]
${cardReturnsHistoryItemStatus}    xpath=(//XCUIElementTypeStaticText[@name="orderItemSubtitle"])[1]
${cardReturnsHistoryPolicyItem}    id=viewCenteredLinkTextView
${cardReturnsHistoryItemImage}    chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[2]/XCUIElementTypeCollectionView/XCUIElementTypeCell

${returnsOrderHistoryFilterOptionContainer}    ${EMPTY}
${btnReturnsOrderHistoryFilterOptionChange}    id=Change

${containerReturnsOrderHistory}    ${EMPTY}

${cardReturnsOrderHistoryItem}    chain=**/XCUIElementTypeOther[`name == "NavController"`]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[5]

${cardReturnsOrderHistoryItemTitle}    ${EMPTY}
${cardReturnsOrderHistoryItemSubtitle}    ${EMPTY}

${cardReturnsOrderHistoryItemWithMutlipleQuantity}    ${EMPTY}
${cardReturnsOrderHistoryItemWithSizeVariantOption}    ${EMPTY}
${cardReturnsOrderHistoryItemWithColourVariantOption}    ${EMPTY}
${cardReturnsOrderHistoryItemWithLiquorOption}    ${EMPTY}

${returnOrderDetailReturnableSectionTitle}    chain=**/XCUIElementTypeStaticText[`label == "RETURNABLE ITEMS"`]
${returnOrderDetailNonReturnableSectionTitle}    chain=**/XCUIElementTypeStaticText[`label == "NON-RETURNABLE ITEMS"`]

${cardReturnsOrderDetailItemImage}    chain=**/XCUIElementTypeImage[`name == "ReturnItemImage"`][1]
${cardReturnsOrderDetailItemTitle}    xpath=(//XCUIElementTypeStaticText[@name="ReturnItemTitle"])[1]
${cardReturnsOrderDetailItemPriceAndQty}    xpath=(//XCUIElementTypeStaticText[@name="ReturnItemSubtitle"])[1]
${cardReturnsOrderDetailItemWarrantyTitle}    xpath=(//XCUIElementTypeStaticText[@name="ReturnItemFooter1"])[1]
${cardReturnsOrderDetailItemWarrantySubtitle}    xpath=(//XCUIElementTypeStaticText[@name="ReturnItemFooter2"])[1]
${cardReturnsOrderDetailItemWarrantyInfo}    xpath=(//XCUIElementTypeButton[@name="icon info black"])[1]

${cardReturnsOrderDetailItemWithMultipleQuantity}    ${EMPTY}
${cardReturnsOrderDetailItemWithVariantSize}    ${EMPTY}
${cardReturnsOrderDetailItemWithVariantColour}    ${EMPTY}
${cardReturnsOrderDetailItemWithLiquor}    ${EMPTY}

${cardReturnsOrderDetailReturnableItem}    chain=**/XCUIElementTypeOther[`name == "NavController"`]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]

${cardReturnsOrderDetailReturnableItem2}    ${EMPTY}
${cardReturnsOrderDetailNonReturnableItem}    chain=**/XCUIElementTypeOther[`name == "NavController"`]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[2]

${cardReturnsOrderDetailItemNonReturnableReasonTitle}    chain=**/XCUIElementTypeStaticText[`label == "NON-RETURNABLE ITEMS"`]

${returnsOrderDetailWarrantyDialogTitle}    ${EMPTY}
${returnsOrderDetailWarrantyDialogMessage}    xpath=//XCUIElementTypeStaticText[@name="Limited warranty, with certain exclusions, as defined by the manufacturer. Please consult the manufacturer for further details."]
${returnsOrderDetailWarrantyDialogButton}    id=OK

${containerReturnsHOrderDetail}    chain=**/XCUIElementTypeOther[`name == "NON-RETURNABLE ITEMS"`]

${containerReturnsReason}    id=sharedSingleTextViewTableViewCell
${txtReasonForReturnTitle}    chain=**/XCUIElementTypeStaticText[`label == "Reason for Return"`]

${returnReasonReasonSelector}    chain=**/XCUIElementTypeCell[`name == "reason_for_return"`]/XCUIElementTypeTextField
${returnReasonReasonSelectorText}    ${EMPTY}
${returnReasonReasonSelectorErrorText}    chain=**/XCUIElementTypeStaticText[`label == "Please select a reason for return"`]
${returnReasonReasonItemNonExchange}    chain=**/XCUIElementTypeCell[`name == "sharedTitleTableViewCell"`][1]

${returnReasonTextArea}    id=sharedSingleTextViewTableViewCell
${returnReasonTextAreaText}    id=sharedSingleTextViewTableViewCellContent
${returnReasonTextAreaErrorMessage}    id=sharedSingleTextViewTableViewCellContentFooter

${returnReasonPreferredOutcomeSelector}    chain=**/XCUIElementTypeCell[`name == "preferred_outcome"`]/XCUIElementTypeTextField
${returnReasonPreferredOutcomeErrorMessage}    chain=**/XCUIElementTypeStaticText[`label == "Please select a preferred outcome"`]
${returnReasonPreferredOutcomeItem}    chain=**/XCUIElementTypeCell[`name == "sharedTitleTableViewCell"`][1]

${returnReasonQuantitySelector}    ${EMPTY}
${returnReasonQuantityErrorMessage}    ${EMPTY}

${returnReasonVariantSizeSelectorErrorMessage}    ${EMPTY}
${returnReasonVariantColourSelectorErrorMessage}    ${EMPTY}

${containerReturnRequest}    ${EMPTY}


${returnRequestReturnItemsHeader}    chain=**/XCUIElementTypeStaticText[`label == "RETURN ITEMS"`]
${returnRequestReturnMethodHeader}    ${EMPTY}
${cardReturnsRequestItem}    ${EMPTY}
${cardReturnsRequestItemImage}    ${EMPTY}
${cardReturnsRequestItemTitle}    id=ReturnItemTitle
${cardReturnsRequestItemPriceAndQty}    id=ReturnItemSubtitle
${cardReturnsRequestItemReasonTitle}    id=ReturnItemFooter1
${cardReturnsRequestItemPreferredOutcomeTitle}    id=ReturnItemFooter2

${returnsRequestDialogTitle}    ${EMPTY}
${returnsRequestDialogMessage}    ${EMPTY}
${returnsRequestDialogNegativeActionButton}    ${EMPTY}
${returnsRequestDialogPositiveActionButton}    ${EMPTY}

${returnReasonToolbarDeleteIcon}    ${EMPTY}

${returnReasonDialogTitle}    ${EMPTY}
${returnReasonDialogMessage}    ${EMPTY}
${returnReasonDialogNegativeActionButton}    ${EMPTY}
${returnReasonDialogPositiveActionButton}    ${EMPTY}

${returnRequestAddAnotherItemButton}    ${EMPTY}
${returnRequestShimmer}    ${EMPTY}

${returnRequestDeliveryMethodSelector}    ${EMPTY}
${returnRequestDeliveryMethodSelectorTitle}    ${EMPTY}
${returnRequestDeliveryMethodSelectorButton}    ${EMPTY}

${returnRequestDeliveryMethodAddress}    ${EMPTY}
${returnRequestDeliveryMethodAddressTitle}    ${EMPTY}
${returnRequestDeliveryMethodAddressTypePill}    ${EMPTY}
${returnRequestDeliveryMethodAddressRecipientName}    ${EMPTY}
${returnRequestDeliveryMethodAddressDetailText}    ${EMPTY}

${returnRequestContactDetailSelector}    ${EMPTY}
${returnRequestContactDetailSelectorTitle}    ${EMPTY}
${returnRequestContactDetailSelectorSubtitle}    ${EMPTY}
${returnRequestContactDetailSelectorButton}    ${EMPTY}

${returnRequestEmptyState}    ${EMPTY}
${returnRequestEmptyStateCallToAction}    ${EMPTY}

${returnSelectReturnMethodPickupPoint}    ${EMPTY}
${returnSelectReturnMethodPickupPointTitle}    ${EMPTY}
${returnSelectReturnMethodCollect}    ${EMPTY}
${returnSelectReturnMethodCollectTitle}    ${EMPTY}

${returnSelectAddressAddAddress}    ${EMPTY}
${returnSelectAddressItem}    ${EMPTY}
${returnSelectAddressIncompleteItem}    ${EMPTY}
${returnSelectAddressItemName}    ${EMPTY}
${returnSelectAddressItemEditButton}    ${EMPTY}
${returnSelectAddressItemDeleteButton}    ${EMPTY}

${returnSelectAddressInputNotification}    ${EMPTY}

${returnSelectAddressEmptyState}    ${EMPTY}
${returnSelectAddressEmptyStateTitle}    ${EMPTY}
${returnSelectAddressEmptyStateMessage}    ${EMPTY}

${returnSelectAddressDeleteDialogTitle}    ${EMPTY}
${returnSelectAddressDeleteDialogMessage}    ${EMPTY}
${returnSelectAddressDeleteDialogConfirmationButton}    ${EMPTY}

${returnSelectPickupPointItemTitle}    ${EMPTY}
${returnSelectPickupPointItemSubtitle}    ${EMPTY}
${returnSelectPickupPointItemInfoButton}    ${EMPTY}
${returnSelectPickupPointFilterChangeButton}    ${EMPTY}
${returnSelectPickupPointProvinceTitle}    ${EMPTY}

${returnSelectPickupPointInfoMap}    ${EMPTY}
${returnSelectPickupPointInfoTPPName}    ${EMPTY}
${returnSelectPickupPointInfoTPPProvince}    ${EMPTY}
${returnSelectPickupPointInfoTPPAddress}    ${EMPTY}
${returnSelectPickupPointInfoBusinessHourContainer}    ${EMPTY}
${returnSelectPickupPointInfoNotification}    ${EMPTY}
${returnSelectPickupPointCallToAction}    ${EMPTY}

${returnContactDetailsNameField}    ${EMPTY}
${returnContactDetailsMobileNumberField}    ${EMPTY}

${returnSuccessIcon}    ${EMPTY}
${returnSuccessTitle}    ${EMPTY}
${returnSuccessSubtitle}    ${EMPTY}
${returnSuccessImageContainer}    ${EMPTY}
${returnSuccessTrackButton}    ${EMPTY}

${btnReturnsCallToAction}    id=ViewSingleButton