*** Variables ***
${containerReturnsHistory}    id=${APP_PACKAGE}:id/returnsHistoryContainer
${containerReturnsEmptyState}    id=${APP_PACKAGE}:id/returns_history_empty_state_container

${cardReturnsHistoryEmptyState1}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]

${cardReturnsHistoryItem}    xpath=//androidx.recyclerview.widget.RecyclerView[contains(@resource-id, 'returnsHistoryContainer')]//android.widget.FrameLayout[contains(@index, '0')]
${cardReturnsHistoryItemTitle}    xpath=//androidx.recyclerview.widget.RecyclerView[contains(@resource-id, 'returnsHistoryContainer')]//android.widget.FrameLayout[contains(@index, '0')]//android.view.ViewGroup[contains(@resource-id, 'returnsHistoryItemContainer')]//android.widget.TextView[contains(@resource-id, 'returnsHistoryItemTitle')]
${cardReturnsHistoryItemStatus}    xpath=//androidx.recyclerview.widget.RecyclerView[contains(@resource-id, 'returnsHistoryContainer')]//android.widget.FrameLayout[contains(@index, '0')]//android.view.ViewGroup[contains(@resource-id, 'returnsHistoryItemContainer')]//android.widget.TextView[contains(@resource-id, 'returnsHistoryItemSubtitle')]
${cardReturnsHistoryItemImage}    xpath=//androidx.recyclerview.widget.RecyclerView[contains(@resource-id, 'returnsHistoryContainer')]//android.widget.FrameLayout[contains(@index, '0')]//android.view.ViewGroup[contains(@resource-id, 'returnsHistoryItemContainer')]//android.widget.ImageView[@content-desc="return history item product image"]
${cardReturnsHistoryPolicyItem}    xpath=//androidx.recyclerview.widget.RecyclerView[contains(@resource-id, 'returnsHistoryContainer')]//android.widget.TextView[contains(@resource-id, 'returns_order_history_item_policy')]

${btnReturnsCallToAction}    id=${APP_PACKAGE}:id/returnsCallToActionOption