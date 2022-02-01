*** Variables ***
${btnAddress}      id=${APP_PACKAGE}:id/address_selection_detail_item_root

${btnDeleteAddress}      xpath=//*[@text="DELETE"][1]
${btnConfDeleteAddress}      id=android:id/button1
${btnEditAddress}      id=${APP_PACKAGE}:id/checkout_address_item_recipient_address_edit

${txtInfoAddress}      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.LinearLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.TextView
${txtFilterProvince}      id=${APP_PACKAGE}:id/checkout_pickup_points_province_selector_root
${txtGautengProvinceAddress}      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.view.ViewGroup[4]

${txtWCProvinceAddress}      xpath=//*[contains(@text, "Western Cape")]
${txtAllProvinceAddress}      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.view.ViewGroup[1]

${navDeliveryAddressBack}      accessibility_id=Navigate up
${navCollectAddressBack}      accessibility_id=Navigate up
