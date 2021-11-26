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

${cardReturnsOrderHistoryItem}    xpath=(//XCUIElementTypeCell[@name="viewOrderItemCell"])[2]
${cardReturnsOrderHistoryItem1}    xpath=(//XCUIElementTypeCell[@name="viewOrderItemCell"])[1]
${cardReturnsOrderHistoryItemWithMultipleReturnableItems}    xpath=(//XCUIElementTypeCell[@name="viewOrderItemCell"])[4]

${cardReturnsOrderHistoryItemTitle}    ${EMPTY}
${cardReturnsOrderHistoryItemSubtitle}    ${EMPTY}

${cardReturnsOrderHistoryItemWithMutlipleQuantity}    chain=**/XCUIElementTypeStaticText[`label == "Order #91818963"`]
${cardReturnsOrderHistoryItemWithSizeVariantOption}    chain=**/XCUIElementTypeStaticText[`label == "Order #96062667"`]
${cardReturnsOrderHistoryItemWithColourVariantOption}    chain=**/XCUIElementTypeStaticText[`label == "Order #96147644"`]
${cardReturnsOrderHistoryItemWithLiquorOption}    ${EMPTY}

${returnOrderDetailReturnableSectionTitle}    chain=**/XCUIElementTypeStaticText[`label == "RETURNABLE ITEMS"`]
${returnOrderDetailNonReturnableSectionTitle}    chain=**/XCUIElementTypeStaticText[`label == "NON-RETURNABLE ITEMS"`]

${cardReturnsOrderDetailItemImage}    chain=**/XCUIElementTypeImage[`name == "ReturnItemImage"`][1]
${cardReturnsOrderDetailItemTitle}    xpath=(//XCUIElementTypeStaticText[@name="ReturnItemTitle"])[1]
${cardReturnsOrderDetailItemPriceAndQty}    xpath=(//XCUIElementTypeStaticText[@name="ReturnItemSubtitle"])[1]
${cardReturnsOrderDetailItemWarrantyTitle}    xpath=(//XCUIElementTypeStaticText[@name="ReturnItemFooter1"])[1]
${cardReturnsOrderDetailItemWarrantySubtitle}    xpath=(//XCUIElementTypeStaticText[@name="ReturnItemFooter2"])[1]
${cardReturnsOrderDetailItemWarrantyInfo}    xpath=(//XCUIElementTypeButton[@name="icon info black"])[1]

${cardReturnsOrderDetailItemWithMultipleQuantity}    chain=**/XCUIElementTypeStaticText[`label == "Pokemon Sword & Shield 4: Vivid Voltage - Booster"`]
${cardReturnsOrderDetailItemWithVariantSize}    chain=**/XCUIElementTypeStaticText[`label == "adidas Men's Long Sleeve Tee - Black - S"`]
${cardReturnsOrderDetailItemWithVariantColour}    chain=**/XCUIElementTypeStaticText[`label == "Nike Hyperfuel 500ml Water Bottle"`]
${cardReturnsOrderDetailItemWithLiquor}    ${EMPTY}

${cardReturnsOrderDetailReturnableItem}    chain=**/XCUIElementTypeKey[`name == "viewReturnItemCell"`][1]

${cardReturnsOrderDetailReturnableItem2}    chain=**/XCUIElementTypeKey[`name == "viewReturnItemCell"`][2]
${cardReturnsOrderDetailNonReturnableItem}    chain=**/XCUIElementTypeOther[`name == "NavController"`]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[2]

${returnReasonReasonItemExchange}    chain=**/XCUIElementTypeStaticText[`label == "I want to exchange it for different size/colour"`]
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

${returnReasonQuantitySelector}    chain=**/XCUIElementTypeCell[`name == "quantity_to_return"`]/XCUIElementTypeTextField

${returnReasonQuantityErrorMessage}    chain=**/XCUIElementTypeStaticText[`label == "Please select a quantity to return"`]

${returnReasonVariantSizeSelectorErrorMessage}    chain=**/XCUIElementTypeStaticText[`label == "Please select size"`]
${returnReasonVariantColourSelectorErrorMessage}    chain=**/XCUIElementTypeStaticText[`label == "Please select a colour"`]

${containerReturnRequest}    chain=**/XCUIElementTypeOther[`name == "NavController"`]/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeTable


${returnRequestReturnItemsHeader}    chain=**/XCUIElementTypeStaticText[`label == "RETURN ITEMS"`]
${returnRequestReturnMethodHeader}    chain=**/XCUIElementTypeStaticText[`label == "RETURN METHOD"`]
${cardReturnsRequestItem}    chain=**/XCUIElementTypeKey[`name == "viewReturnItemCell"`]/XCUIElementTypeOther[1]
${cardReturnsRequestItemImage}    ${EMPTY}
${cardReturnsRequestItemTitle}    id=ReturnItemTitle
${cardReturnsRequestItemPriceAndQty}    id=ReturnItemSubtitle
${cardReturnsRequestItemReasonTitle}    id=ReturnItemFooter1
${cardReturnsRequestItemPreferredOutcomeTitle}    id=ReturnItemFooter2
${btnReturnsRequestItemDelete}    chain=**/XCUIElementTypeButton[`label == "Delete"`]

${returnsRequestDialogTitle}    id=Are you sure?
${returnsRequestDialogMessage}    id=Remove item from return request?
${returnsRequestDialogNegativeActionButton}    id=Keep
${returnsRequestDialogPositiveActionButton}    id=Remove

${returnReasonToolbarDeleteIcon}    id=icon delete

${returnReasonDialogTitle}    id=Remove Item
${returnReasonDialogMessage}    id=Remove item from return request?
${returnReasonDialogNegativeActionButton}    id=Keep
${returnReasonDialogPositiveActionButton}    id=Remove

${returnRequestAddAnotherItemButton}    chain=**/XCUIElementTypeOther[`name == "NavController"`]/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell
${returnRequestShimmer}    ${EMPTY}

${returnRequestDeliveryMethodSelector}    id=pickupPointSelectorCell
${returnRequestCollectAdressSelector}    id=collectAddressSelectorCell
${returnRequestDeliveryMethodSelectorTitle}    xpath=//XCUIElementTypeStaticText[@name="selectorTitle"]
${returnRequestDeliveryMethodSelectorButton}    chain=**/XCUIElementTypeStaticText[`label == "Change"`][1]

${returnRequestDeliveryMethodAddress}    chain=**/XCUIElementTypeOther[`name == "NavController"`]/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[3]
${returnRequestDeliveryMethodAddressTitle}    id=viewReturnCartAddressCellTitleLabel
${returnRequestDeliveryMethodAddressTypePill}    id=viewReturnCartAddressCellAddressTypeLabel
${returnRequestDeliveryMethodAddressRecipientName}    id=viewReturnCartAddressCellNameLabel
${returnRequestDeliveryMethodAddressDetailText}    id=viewReturnCartAddressCellAddressLabel

${returnRequestContactDetailSelector}    id=contactDetailSelectorCell
${returnRequestContactDetailSelectorTitle}    xpath=(//XCUIElementTypeStaticText[@name="selectorTitle"])[2]
${returnRequestContactDetailSelectorSubtitle}    xpath=(//XCUIElementTypeStaticText[@name="selectorTitle"])[2]
${returnRequestContactDetailSelectorButton}    chain=**/XCUIElementTypeStaticText[`label == "Change"`][2]

${returnRequestEmptyState}    id=CMSPageEmptyStateView
${returnRequestEmptyStateCallToAction}    id=CMSPageEmptyStateButton

${returnSelectReturnMethodPickupPoint}    chain=**/XCUIElementTypeCell[`name == "DeliveryMethodCell"`][1]
${returnSelectReturnMethodPickupPointTitle}    xpath=(//XCUIElementTypeStaticText[@name="viewDeliveryMethodCellReturnMethod"])[1]

${returnSelectReturnMethodCollect}    chain=**/XCUIElementTypeCell[`name == "DeliveryMethodCell"`][2]
${returnSelectReturnMethodCollectTitle}    chain=**/XCUIElementTypeStaticText[`label == "Collect from my address"`]

${returnSelectAddressAddAddress}    ${EMPTY}
${returnSelectAddressItem}    chain=**/XCUIElementTypeCell[`name == "SharedAddressTableViewCell"`][1]
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

${returnSelectPickupPointItemTitle}    xpath=(//XCUIElementTypeStaticText[@name="viewPickupPointCellTitleLabel"])[1]
${returnSelectPickupPointItemSubtitle}    xpath=(//XCUIElementTypeStaticText[@name="viewPickupPointCellSubtitleLabel"])[1]
${returnSelectPickupPointItemInfoButton}    xpath=(//XCUIElementTypeStaticText[@name="INFO"])[1]
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