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

${cardReturnsOrderHistoryItem}    xpath=//android.widget.LinearLayout[contains(@resource-id, 'returns_order_history_item_container_root')]
${cardReturnsOrderHistoryItemTitle}    xpath=//android.widget.LinearLayout[contains(@resource-id, 'returns_order_history_item_container_root')]//android.widget.TextView[contains(@resource-id, 'returns_order_history_item_title')]
${cardReturnsOrderHistoryItemSubtitle}    xpath=//android.widget.LinearLayout[contains(@resource-id, 'returns_order_history_item_container_root')]//android.widget.TextView[contains(@resource-id, 'returns_order_history_item_subtitle')]
${cardReturnsOrderHistoryItemImageContainer}    xpath=//android.widget.LinearLayout[contains(@resource-id, 'returns_order_history_item_container_root')]//android.widget.LinearLayout[contains(@resource-id, 'returns_order_history_item_image_container')]

${returnOrderDetailReturnableSectionTitle}    xpath=//androidx.recyclerview.widget.RecyclerView[contains(@resource-id, 'product_consignment_container')]//android.widget.TextView[contains(@text, 'Returnable Items')]
${returnOrderDetailNonReturnableSectionTitle}    xpath=//androidx.recyclerview.widget.RecyclerView[contains(@resource-id, 'product_consignment_container')]//android.widget.TextView[contains(@text, 'Non-Returnable Items')]

${cardReturnsOrderDetailItemImage}    xpath=//android.widget.ImageView[contains(@content-desc, 'Product')]
${cardReturnsOrderDetailItemTitle}    xpath=//android.widget.TextView[contains(@resource-id, 'widgetProductConsignmentItemTitle')]
${cardReturnsOrderDetailItemPriceAndQty}    xpath=//android.widget.TextView[contains(@resource-id, 'widgetProductConsignmentItemPriceAndQuantity')]
${cardReturnsOrderDetailItemWarrantyTitle}    xpath=//android.widget.TextView[contains(@resource-id, 'widgetProductConsignmentItemWarrantyTitle')]
${cardReturnsOrderDetailItemWarrantySubtitle}    xpath=//android.widget.TextView[contains(@resource-id, 'widgetProductConsignmentItemWarrantyDescription')]

${cardReturnsOrderDetailReturnableItem}    xpath=//android.view.ViewGroup[contains(@content-desc, 'Returnable Item')]
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

${returnReasonTextArea}    id=${APP_PACKAGE}:id/returns_reason_text_area
${returnReasonTextAreaText}    xpath=//android.view.ViewGroup[contains(@resource-id, 'returns_reason_text_area')]//android.widget.EditText
${returnReasonTextAreaErrorMessage}    xpath=//android.view.ViewGroup[contains(@resource-id, 'returns_reason_text_area')]//android.widget.TextView[contains(@resource-id, 'textinput_error')]

${returnReasonPreferredOutcomeSelector}    id=${APP_PACKAGE}:id/returns_reason_preferred_outcome
${returnReasonPreferredOutcomeErrorMessage}    xpath=//android.widget.LinearLayout[contains(@resource-id, 'returns_reason_preferred_outcome')]//android.widget.TextView[contains(@resource-id, 'textinput_error')]

${btnReturnsCallToAction}    id=${APP_PACKAGE}:id/returnsCallToActionOption