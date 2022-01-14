*** Variables ***
${containerReturnsHistory}    id=${APP_PACKAGE}:id/returnsHistoryContainer
${containerReturnsEmptyState}    id=${APP_PACKAGE}:id/returns_history_empty_state_container

${cardReturnsHistoryEmptyState1}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]

${cardReturnsHistoryItem}    xpath=//androidx.recyclerview.widget.RecyclerView[contains(@resource-id, 'returnsHistoryContainer')]//android.widget.FrameLayout[contains(@index, '0')]
${cardReturnsHistoryItemTitle}    xpath=//androidx.recyclerview.widget.RecyclerView[contains(@resource-id, 'returnsHistoryContainer')]//android.widget.FrameLayout[contains(@index, '0')]//android.view.ViewGroup[contains(@resource-id, 'returnsHistoryItemContainer')]//android.widget.TextView[contains(@resource-id, 'returnsHistoryItemTitle')]
${cardReturnsHistoryItemStatus}    xpath=//androidx.recyclerview.widget.RecyclerView[contains(@resource-id, 'returnsHistoryContainer')]//android.widget.FrameLayout[contains(@index, '0')]//android.view.ViewGroup[contains(@resource-id, 'returnsHistoryItemContainer')]//android.widget.TextView[contains(@resource-id, 'returnsHistoryItemSubtitle')]
${cardReturnsHistoryItemImage}    xpath=//androidx.recyclerview.widget.RecyclerView[contains(@resource-id, 'returnsHistoryContainer')]//android.widget.FrameLayout[contains(@index, '0')]//android.view.ViewGroup[contains(@resource-id, 'returnsHistoryItemContainer')]//android.widget.ImageView[@content-desc="return history item product image"]
${cardReturnsHistoryPolicyItem}    xpath=//androidx.recyclerview.widget.RecyclerView[contains(@resource-id, 'returnsHistoryContainer')]//android.widget.TextView[contains(@resource-id, 'returns_order_history_item_policy')]

${returnsOrderHistoryFilterOptionContainer}    id=${APP_PACKAGE}:id/orderHistoryParentFilterOption
${btnReturnsOrderHistoryFilterOptionChange}    id=${APP_PACKAGE}:id/filter_option_button

${containerReturnsOrderHistory}    id=${APP_PACKAGE}:id/orderHistoryParentContainer

${cardReturnsOrderHistoryItem}    xpath=//android.widget.LinearLayout[contains(@resource-id, 'returns_order_history_item_container_root')]
${cardReturnsOrderHistoryItemTitle}    xpath=//android.widget.LinearLayout[contains(@resource-id, 'returns_order_history_item_container_root')]//android.widget.TextView[contains(@resource-id, 'returns_order_history_item_title')]
${cardReturnsOrderHistoryItemSubtitle}    xpath=//android.widget.LinearLayout[contains(@resource-id, 'returns_order_history_item_container_root')]//android.widget.TextView[contains(@resource-id, 'returns_order_history_item_subtitle')]
${cardReturnsOrderHistoryItemImageContainer}    xpath=//android.widget.LinearLayout[contains(@resource-id, 'returns_order_history_item_container_root')]//android.widget.LinearLayout[contains(@resource-id, 'returns_order_history_item_image_container')]

${cardReturnsOrderHistoryItemWithMutlipleQuantity}    xpath=//*[contains(@text, 'Order #91818963')]
${cardReturnsOrderHistoryItemWithSizeVariantOption}    xpath=//*[contains(@text, 'Order #92998356')]
${cardReturnsOrderHistoryItemWithColourVariantOption}    xpath=//*[contains(@text, 'Order #94155963')]
${cardReturnsOrderHistoryItemWithLiquorOption}    xpath=//*[contains(@text, 'Order #95203168')]

${returnOrderDetailReturnableSectionTitle}    xpath=//androidx.recyclerview.widget.RecyclerView[contains(@resource-id, 'product_consignment_container')]//android.widget.TextView[contains(@text, 'Returnable Items')]
${returnOrderDetailNonReturnableSectionTitle}    xpath=//androidx.recyclerview.widget.RecyclerView[contains(@resource-id, 'product_consignment_container')]//android.widget.TextView[contains(@text, 'Non-Returnable Items')]

${cardReturnsOrderDetailItemImage}    xpath=//android.widget.ImageView[contains(@content-desc, 'Product')]
${cardReturnsOrderDetailItemTitle}    xpath=//android.widget.TextView[contains(@resource-id, 'widgetProductConsignmentItemTitle')]
${cardReturnsOrderDetailItemPriceAndQty}    xpath=//android.widget.TextView[contains(@resource-id, 'widgetProductConsignmentItemPriceAndQuantity')]
${cardReturnsOrderDetailItemWarrantyTitle}    xpath=//android.widget.TextView[contains(@resource-id, 'widgetProductConsignmentItemWarrantyTitle')]
${cardReturnsOrderDetailItemWarrantySubtitle}    xpath=//android.widget.TextView[contains(@resource-id, 'widgetProductConsignmentItemWarrantyDescription')]

${cardReturnsOrderDetailItemWithMultipleQuantity}    xpath=//*[contains(@text, 'Pokemon Sword & Shield 4: Vivid Voltage - Booster')]
${cardReturnsOrderDetailItemWithVariantSize}    xpath=//*[contains(@text, "Nike Women's Miler Long Sleeve Running Top - Black - S")]
${cardReturnsOrderDetailItemWithVariantColour}    xpath=//*[contains(@text, "Nike Hyperfuel 500ml Water Bottle - Black/White")]
${cardReturnsOrderDetailItemWithLiquor}    xpath=//*[contains(@text, "Mixed Case of Top End Wines for the Avid Entertainer 12 x 750ml")]

${cardReturnsOrderDetailReturnableItem}    xpath=//android.view.ViewGroup[contains(@content-desc, 'Returnable Item')]
${cardReturnsOrderDetailReturnableItem2}    xpath=//android.view.ViewGroup[contains(@content-desc, 'Returnable Item')][2]
${cardReturnsOrderDetailNonReturnableItem}    xpath=//android.view.ViewGroup[contains(@content-desc, 'Non Returnable Item')]

${cardReturnsOrderDetailItemNonReturnableReasonTitle}    xpath=//android.view.ViewGroup[contains(@content-desc, 'Non Returnable Item')]//android.widget.TextView[contains(@resource-id, 'error_message_content')]

${returnsOrderDetailWarrantyDialogTitle}    id=${APP_PACKAGE}:id/alertTitle
${returnsOrderDetailWarrantyDialogMessage}    id=android:id/message
${returnsOrderDetailWarrantyDialogButton}    id=android:id/button1

${containerReturnsHOrderDetail}    id=${APP_PACKAGE}:id/product_consignment_container

${containerReturnsReason}    id=${APP_PACKAGE}:id/returns_reason_scroll_container

${returnReasonReasonSelector}    id=${APP_PACKAGE}:id/returns_reason_reason_selector
${returnReasonReasonSelectorText}    xpath=//android.widget.LinearLayout[contains(@resource-id, 'returns_reason_reason_selector')]//android.widget.EditText[contains(@resource-id, 'optionSelectorTitleEditText')]
${returnReasonReasonSelectorErrorText}    xpath=//android.widget.LinearLayout[contains(@resource-id, 'returns_reason_reason_selector')]//android.widget.TextView[contains(@resource-id, 'textinput_error')]
${returnReasonReasonItemNonExchange}    id=${APP_PACKAGE}:id/talWidgetSingleSelectItemRadioButton
${returnReasonReasonItemExchange}    xpath=//*[contains(@text, 'I want to exchange it for different size/colour')]

${returnReasonTextArea}    id=${APP_PACKAGE}:id/returns_reason_text_area
${returnReasonTextAreaText}    xpath=//android.view.ViewGroup[contains(@resource-id, 'returns_reason_text_area')]//android.widget.EditText
${returnReasonTextAreaErrorMessage}    xpath=//android.view.ViewGroup[contains(@resource-id, 'returns_reason_text_area')]//android.widget.TextView[contains(@resource-id, 'textinput_error')]

${returnReasonPreferredOutcomeSelector}    id=${APP_PACKAGE}:id/returns_reason_preferred_outcome
${returnReasonPreferredOutcomeErrorMessage}    xpath=//android.widget.LinearLayout[contains(@resource-id, 'returns_reason_preferred_outcome')]//android.widget.TextView[contains(@resource-id, 'textinput_error')]
${returnReasonPreferredOutcomeItem}    id=${APP_PACKAGE}:id/talWidgetSingleSelectItemRadioButton

${returnReasonQuantitySelector}    id=${APP_PACKAGE}:id/returns_reason_quantity_selector
${returnReasonQuantityErrorMessage}    xpath=//android.widget.LinearLayout[contains(@resource-id, 'returns_reason_quantity_selector')]//android.widget.TextView[contains(@resource-id, 'textinput_error')]

${returnReasonVariantSizeSelectorErrorMessage}    xpath=//android.view.ViewGroup[contains(@content-desc, 'Size')]//android.widget.TextView[contains(@resource-id, 'variantSelectorValidationErrorMessage')]
${returnReasonVariantColourSelectorErrorMessage}    xpath=//android.view.ViewGroup[contains(@content-desc, 'Colour')]//android.widget.TextView[contains(@resource-id, 'variantSelectorValidationErrorMessage')]

${containerReturnRequest}    id=${APP_PACKAGE}:id/returns_request_container

${returnRequestReturnItemsHeader}    xpath=//android.widget.TextView[contains(@text, 'Return Items')]
${returnRequestReturnMethodHeader}    xpath=//android.widget.TextView[contains(@text, 'Return Method')]
${cardReturnsRequestItem}    id=${APP_PACKAGE}:id/returns_request_cart_item_root
${cardReturnsRequestItemImage}    id=${APP_PACKAGE}:id/returns_request_cart_item_image
${cardReturnsRequestItemTitle}    id=${APP_PACKAGE}:id/returns_request_cart_item_title
${cardReturnsRequestItemPriceAndQty}    id=${APP_PACKAGE}:id/returns_request_cart_item_price_quantity
${cardReturnsRequestItemReasonTitle}    id=${APP_PACKAGE}:id/returns_request_cart_item_reason_for_return
${cardReturnsRequestItemPreferredOutcomeTitle}    id=${APP_PACKAGE}:id/returns_request_cart_item_preferred_outcome

${returnsRequestDialogTitle}    id=${APP_PACKAGE}:id/alertTitle
${returnsRequestDialogMessage}    id=android:id/message
${returnsRequestDialogNegativeActionButton}    id=android:id/button2
${returnsRequestDialogPositiveActionButton}    id=android:id/button1

${returnReasonToolbarDeleteIcon}    xpath=//android.widget.TextView[@content-desc="Remove Item"]

${returnReasonDialogTitle}    id=${APP_PACKAGE}:id/alertTitle
${returnReasonDialogMessage}    id=android:id/message
${returnReasonDialogNegativeActionButton}    id=android:id/button2
${returnReasonDialogPositiveActionButton}    id=android:id/button1

${returnRequestAddAnotherItemButton}    id=${APP_PACKAGE}:id/returnsAddAnotherItemButton
${returnRequestShimmer}    id=${APP_PACKAGE}:id/returns_request_shimmer

${returnRequestDeliveryMethodSelector}    id=${APP_PACKAGE}:id/returnMethodSelector
${returnRequestDeliveryMethodSelectorTitle}    xpath=//*[contains(@resource-id, 'returnMethodSelector')]//android.widget.TextView[contains(@resource-id, 'returns_return_method_selector_title')]
${returnRequestDeliveryMethodSelectorButton}    xpath=//*[contains(@resource-id, 'returnMethodSelector')]//android.widget.Button[contains(@resource-id, 'returns_return_method_selector_action_option')]

${returnRequestDeliveryMethodAddress}    id=${APP_PACKAGE}:id/returnMethodAddress
${returnRequestDeliveryMethodAddressTitle}    id=${APP_PACKAGE}:id/returns_return_method_address_title
${returnRequestDeliveryMethodAddressTypePill}    id=${APP_PACKAGE}:id/returns_return_method_address_pill
${returnRequestDeliveryMethodAddressRecipientName}    id=${APP_PACKAGE}:id/returns_return_method_address_subtitle
${returnRequestDeliveryMethodAddressDetailText}    id=${APP_PACKAGE}:id/returns_return_method_address_address

${returnRequestContactDetailSelector}    id=${APP_PACKAGE}:id/returnMethodContactDetails
${returnRequestContactDetailSelectorTitle}    xpath=//*[contains(@resource-id, 'returnMethodContactDetails')]//android.widget.TextView[contains(@resource-id, 'returns_return_method_selector_title')]
${returnRequestContactDetailSelectorSubtitle}    xpath=//*[contains(@resource-id, 'returnMethodContactDetails')]//android.widget.TextView[contains(@resource-id, 'returns_return_method_selector_subtitle')]
${returnRequestContactDetailSelectorButton}    xpath=//*[contains(@resource-id, 'returnMethodContactDetails')]//android.widget.Button[contains(@resource-id, 'returns_return_method_selector_action_option')]

${returnRequestEmptyState}    xpath=//android.widget.ImageView[@content-desc="empty return items"]
${returnRequestEmptyStateCallToAction}    id=${APP_PACKAGE}:id/tal_material_button

${returnSelectReturnMethodPickupPoint}    xpath=//android.view.ViewGroup[@content-desc="Pickup Point"]
${returnSelectReturnMethodPickupPointTitle}    xpath=//android.view.ViewGroup[@content-desc="Pickup Point"]//android.widget.TextView[contains(@resource-id, 'navigation_widget_title')]
${returnSelectReturnMethodCollect}    xpath=//android.view.ViewGroup[@content-desc="Collect Address"]
${returnSelectReturnMethodCollectTitle}    xpath=//android.view.ViewGroup[@content-desc="Collect Address"]//android.widget.TextView[contains(@resource-id, 'navigation_widget_title')]

${returnSelectAddressAddAddress}    id=${APP_PACKAGE}:id/returns_return_method_selector_action_option
${returnSelectAddressItem}    xpath=//androidx.recyclerview.widget.RecyclerView[contains(@resource-id, 'returns_address_item_container')]//android.view.ViewGroup
${returnSelectAddressIncompleteItem}    xpath=//androidx.recyclerview.widget.RecyclerView[contains(@resource-id, 'returns_address_item_container')]//android.view.ViewGroup[contains(@index, '0')]
${returnSelectAddressItemName}    id=${APP_PACKAGE}:id/returns_address_item_name
${returnSelectAddressItemEditButton}    id=${APP_PACKAGE}:id/returns_address_item_address_left_action
${returnSelectAddressItemDeleteButton}    id=${APP_PACKAGE}:id/returns_address_item_address_right_action

${returnSelectAddressInputNotification}    xpath=/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.LinearLayout

${returnSelectAddressEmptyState}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout
${returnSelectAddressEmptyStateTitle}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout/android.widget.TextView[1]
${returnSelectAddressEmptyStateMessage}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout/android.widget.TextView[2]

${returnSelectAddressDeleteDialogTitle}    id=${APP_PACKAGE}:id/alertTitle
${returnSelectAddressDeleteDialogMessage}    id=android:id/message
${returnSelectAddressDeleteDialogConfirmationButton}    id=android:id/button1

${returnSelectPickupPointItemTitle}    id=${APP_PACKAGE}:id/returns_pickup_point_item_title
${returnSelectPickupPointItemSubtitle}    id=${APP_PACKAGE}:id/returns_pickup_point_item_subtitle
${returnSelectPickupPointItemInfoButton}    id=${APP_PACKAGE}:id/returns_pickup_point_item_info
${returnSelectPickupPointFilterChangeButton}    id=${APP_PACKAGE}:id/filter_option_button
${returnSelectPickupPointProvinceTitle}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.TextView

${returnSelectPickupPointInfoMap}    xpath=//android.view.View[@content-desc="Google Map"]
${returnSelectPickupPointInfoTPPName}    id=${APP_PACKAGE}:id/checkout_select_collect_name
${returnSelectPickupPointInfoTPPProvince}    id=${APP_PACKAGE}:id/checkout_select_collect_province
${returnSelectPickupPointInfoTPPAddress}    id=${APP_PACKAGE}:id/checkout_select_collect_address
${returnSelectPickupPointInfoBusinessHourContainer}    id=${APP_PACKAGE}:id/checkout_select_collect_business_hours_base_content
${returnSelectPickupPointInfoNotification}    id=${APP_PACKAGE}:id/error_message_content
${returnSelectPickupPointCallToAction}    id=${APP_PACKAGE}:id/checkout_select_collect_address_use_pickup_point

${returnContactDetailsNameField}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.EditText
${returnContactDetailsMobileNumberField}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[2]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.EditText

${returnSuccessIcon}    id=${APP_PACKAGE}:id/returns_success_image
${returnSuccessTitle}    id=${APP_PACKAGE}:id/returns_success_title
${returnSuccessSubtitle}    id=${APP_PACKAGE}:id/returns_success_subtitle
${returnSuccessImageContainer}    id=${APP_PACKAGE}:id/returns_success_image_container
${returnSuccessTrackButton}    id=${APP_PACKAGE}:id/return_success_track_btn

${btnReturnsCallToAction}    id=${APP_PACKAGE}:id/returnsCallToActionOption

${btnSelectReturnReason}    id=${APP_PACKAGE}:id/optionSelectorActionText
${txtReturnReason}    xpath=//*[contains(@text, "I have changed my mind")]
${btnReturnReturnMethod}    xpath=//*[contains(@text, "SELECT")]
${txtReturnMethod}    xpath=//*[contains(@text, "Credit my Takealot account")]
${txtReturnDesc}    xpath=//android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.EditText
${txtReturnCont}    xpath=//*[contains(@text, "CONTINUE")]
${btnLogReturn}    id=${APP_PACKAGE}:id/returnsCallToActionOption
${txtReturnCollect}    xpath=//*[contains(@text, "Collect from my address")]
${txtReturnCollectOption}    xpath=//*[contains(@text, "Test")]
${txtReturnSubmit}    id=${APP_PACKAGE}:id/returnsCallToActionOption
