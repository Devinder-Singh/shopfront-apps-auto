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

${cardReturnsOrderHistoryItem}    chain=**/XCUIElementTypeOther[`name == "NavController"`]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[4]
${cardReturnsOrderHistoryItemTitle}    ${EMPTY}
${cardReturnsOrderHistoryItemSubtitle}    ${EMPTY}

${cardReturnsOrderHistoryItemWithMutlipleQuantity}    ${EMPTY}
${cardReturnsOrderHistoryItemWithSizeVariantOption}    ${EMPTY}
${cardReturnsOrderHistoryItemWithColourVariantOption}    ${EMPTY}
${cardReturnsOrderHistoryItemWithLiquorOption}    ${EMPTY}

${returnOrderDetailReturnableSectionTitle}    ${EMPTY}
${returnOrderDetailNonReturnableSectionTitle}    ${EMPTY}

${cardReturnsOrderDetailItemImage}    ${EMPTY}
${cardReturnsOrderDetailItemTitle}    ${EMPTY}
${cardReturnsOrderDetailItemPriceAndQty}    ${EMPTY}
${cardReturnsOrderDetailItemWarrantyTitle}    ${EMPTY}
${cardReturnsOrderDetailItemWarrantySubtitle}    ${EMPTY}

${cardReturnsOrderDetailItemWithMultipleQuantity}    ${EMPTY}
${cardReturnsOrderDetailItemWithVariantSize}    ${EMPTY}
${cardReturnsOrderDetailItemWithVariantColour}    ${EMPTY}
${cardReturnsOrderDetailItemWithLiquor}    ${EMPTY}

${cardReturnsOrderDetailReturnableItem}    ${EMPTY}
${cardReturnsOrderDetailReturnableItem2}    ${EMPTY}
${cardReturnsOrderDetailNonReturnableItem}    ${EMPTY}

${cardReturnsOrderDetailItemNonReturnableReasonTitle}    ${EMPTY}

${returnsOrderDetailWarrantyDialogTitle}    ${EMPTY}
${returnsOrderDetailWarrantyDialogMessage}    ${EMPTY}
${returnsOrderDetailWarrantyDialogButton}    ${EMPTY}

${containerReturnsHOrderDetail}    ${EMPTY}

${containerReturnsReason}    ${EMPTY}

${returnReasonReasonSelector}    ${EMPTY}
${returnReasonReasonSelectorText}    ${EMPTY}
${returnReasonReasonSelectorErrorText}    ${EMPTY}
${returnReasonReasonItemNonExchange}    ${EMPTY}

${returnReasonTextArea}    ${EMPTY}
${returnReasonTextAreaText}    ${EMPTY}
${returnReasonTextAreaErrorMessage}    ${EMPTY}

${returnReasonPreferredOutcomeSelector}    ${EMPTY}
${returnReasonPreferredOutcomeErrorMessage}    ${EMPTY}
${returnReasonPreferredOutcomeItem}    ${EMPTY}

${returnReasonQuantitySelector}    ${EMPTY}
${returnReasonQuantityErrorMessage}    ${EMPTY}

${returnReasonVariantSizeSelectorErrorMessage}    ${EMPTY}
${returnReasonVariantColourSelectorErrorMessage}    ${EMPTY}

${containerReturnRequest}    ${EMPTY}


${returnRequestReturnItemsHeader}    ${EMPTY}
${returnRequestReturnMethodHeader}    ${EMPTY}
${cardReturnsRequestItem}    ${EMPTY}
${cardReturnsRequestItemImage}    ${EMPTY}
${cardReturnsRequestItemTitle}    ${EMPTY}
${cardReturnsRequestItemPriceAndQty}    ${EMPTY}
${cardReturnsRequestItemReasonTitle}    ${EMPTY}
${cardReturnsRequestItemPreferredOutcomeTitle}    ${EMPTY}

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