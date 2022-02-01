*** Variables ***
${btnFree}      xpath=//*[@text="FREE"]
#${btnFree}      xpath=//*[@text="Standard Delivery"]
${txtStandardCollect}      xpath=//*[@text="Standard Collect"]
${txtStandardDelivery}    xpath=//*[@text="Standard Delivery"]
${txtSurchargeDelivery}      id=${APP_PACKAGE}:id/checkout_delivery_type_selector_root

${navDeliveryOptBack}      accessibility_id=Navigate up
${navCollectOptBack}      accessibility_id=Navigate up

${scrDeliveryFeeAndroid}      id=${APP_PACKAGE}:id/checkout_delivery_options_content_container

${btnWhyTheWait}      id=${APP_PACKAGE}:id/checkout_delivery_type_why_the_wait
${btnGotItThanks}      xpath=//*[@text="GOT IT, THANKS!"]
${btnPlusTwo}      id=${APP_PACKAGE}:id/checkout_product_image_summary_text

${imgDelOptionsOne}      xpath=(//android.widget.ImageView[@resource-id="${APP_PACKAGE}:id/widgetProductConsignmentItemImage"])[1]
${imgDelOptionsTwo}      xpath=(//android.widget.ImageView[@resource-id="${APP_PACKAGE}:id/widgetProductConsignmentItemImage"])[2]
${imgDelOptionsThree}      xpath=(//android.widget.ImageView[@resource-id="${APP_PACKAGE}:id/widgetProductConsignmentItemImage"])[3]
${imgDelOptionsFour}      xpath=(//android.widget.ImageView[@resource-id="${APP_PACKAGE}:id/widgetProductConsignmentItemImage"])[4]
${imgDelOptionsFive}      xpath=(//android.widget.ImageView[@resource-id="${APP_PACKAGE}:id/widgetProductConsignmentItemImage"])[5]

${lnkShowDetails}      xpath=//*[@text="SHOW DETAILS"]
