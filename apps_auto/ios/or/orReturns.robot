*** Variables ***
${containerReturnsHistory}    ${EMPTY}
${containerReturnsEmptyState}    ${EMPTY}
${onboardingCell1}    chain=**/XCUIElementTypeStaticText[`label == "Log a Return"`]
${returnsToolBar}     chain=**/XCUIElementTypeNavigationBar[`name == "Returns"`]

${cardReturnsHistoryEmptyState1}    chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[2]

${cardReturnsHistoryItem}    ${EMPTY}
${cardReturnsHistoryItemTitle}    ${EMPTY}
${cardReturnsHistoryItemStatus}    ${EMPTY}
${cardReturnsHistoryPolicyItem}    ${EMPTY}
${cardReturnsHistoryItemImage}    ${EMPTY}

${returnsOrderHistoryFilterOptionContainer}    ${EMPTY}
${btnReturnsOrderHistoryFilterOptionChange}    ${EMPTY}

${containerReturnsOrderHistory}    ${EMPTY}

${cardReturnsOrderHistoryItem}    ${EMPTY}
${cardReturnsOrderHistoryItemTitle}    ${EMPTY}
${cardReturnsOrderHistoryItemSubtitle}    ${EMPTY}
${cardReturnsOrderHistoryItemImageContainer}    ${EMPTY}

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

${btnReturnsCallToAction}    ${EMPTY}