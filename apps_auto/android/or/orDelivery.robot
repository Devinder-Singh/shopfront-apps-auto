*** Variables ***
${btnDelivery}      xpath=//*[@text="Delivery"]
${btnCollect}      xpath=//*[@text="Collect"]
${btnDeliveryAddress}      xpath=//*[contains(@text, "New Delivery Address")]

${btnCollectNotAvailable}      xpath=//*[@text="Collect Not Available"]
${btnBackDelivery}      xpath=//android.widget.ImageButton[@content-desc="Navigate up"]

${btnCancelDelivery}      xpath=//android.widget.ImageButton[@content-desc="Navigate up"]

${scrDeliveryAndroid}      id=${APP_PACKAGE}:id/checkout_shipping_content
