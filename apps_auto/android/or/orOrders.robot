*** Variables ***
${txtOrdersAwaitingPayment}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[1]/android.view.ViewGroup/android.widget.TextView
${btnOrdersPayNow}    id=${APP_PACKAGE}:id/orderDetailConsignmentItemPayNow

${btnOrdersCancel}      id=${APP_PACKAGE}:id/orderDetailConsignmentCancelOrder
${btnOrdersCancelConfirm}      id=android:id/button1
${txtDigitalDeliveryMethod}      id=${APP_PACKAGE}:id/orderDetailSummaryItemShippingMethodValue
${txtDigitalShippingAddress}      id=${APP_PACKAGE}:id/orderDetailSummaryItemShippingAddressStreetValue
${btnOrdersFilterChange}      xpath=//*[@text="CHANGE"]
${btnFilterOptionChange}    id=${APP_PACKAGE}:id/filter_option_button
${txtOrdersDelivery}      xpath=//*[contains(@text, "Delivery by")]
