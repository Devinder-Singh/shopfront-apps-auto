*** Variables ***
${containerReturnsHistory}    id=${APP_PACKAGE}:id/returnsHistoryContainer
${containerReturnsEmptyState}    id=${APP_PACKAGE}:id/returns_history_empty_state_container

# Look at orReviews for better impl.
${cardReturnsHistoryEmptyState1}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]