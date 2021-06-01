*** Variables ***
${btnDelivery}      xpath=//*[@text="Delivery"]
${btnCollect}      xpath=//*[@text="Collect"]
${btnDeliveryAddress}      xpath=//*[@text="Add Delivery Address"]

${btnCollectNotAvailable}      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.widget.RelativeLayout/androidx.drawerlayout.widget.DrawerLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.view.ViewGroup[2]
${btnBackDelivery}      xpath=//android.widget.ImageButton[@content-desc="Navigate up"]

${btnCancelDelivery}      xpath=//android.widget.ImageButton[@content-desc="Navigate up"]

${scrDeliveryAndroid}      id=${APP_PACKAGE}:id/checkout_shipping_content
