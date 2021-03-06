*** Variables ***
${btnResidential}      xpath=//*[@text="Residential"]
${txtRecipientName}      xpath=(//android.view.ViewGroup[@resource-id='${APP_PACKAGE}:id/address_input_recipient_name'])//android.widget.EditText
${txtRecipientMobile}      xpath=(//android.view.ViewGroup[@resource-id='${APP_PACKAGE}:id/address_input_recipient_mobile_number'])//android.widget.EditText
${txtRecipientStreet}      id=${APP_PACKAGE}:id/address_input_auto_complete_info_input
${txtBusinessName}      xpath=//*/android.view.ViewGroup[@resource-id='${APP_PACKAGE}:id/address_input_business_name']/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.EditText

${btnSaveAddress}      id=${APP_PACKAGE}:id/sticky_action_button

${txtRecipientPostCode}      xpath=//*/android.view.ViewGroup[@resource-id='${APP_PACKAGE}:id/address_input_postal_code']/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.EditText
${txtRecipientCityMyAcc}      xpath=//*/android.view.ViewGroup[@resource-id='${APP_PACKAGE}:id/address_input_city']/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.EditText
${txtRecipientSuburbMyAcc}      xpath=//*/android.view.ViewGroup[@resource-id='${APP_PACKAGE}:id/address_input_suburb']/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.EditText
${txtRecipientComplexMyAcc}      xpath=//*/android.view.ViewGroup[@resource-id='${APP_PACKAGE}:id/address_input_complex_info']/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.EditText

${lblAddAddress}      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.TextView
${lblEditAddress}      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.TextView

${btnAddressMobileQuestion}      id=${APP_PACKAGE}:id/validation_input_question_image
${btnAddressGotItThanks}      xpath=//*[@text="GOT IT, THANKS!"]
${btnGoogleFirstAddress}    id=${APP_PACKAGE}:id/appRootToolbar

${txtAddressProvince}      id=${APP_PACKAGE}:id/address_input_province
${navAddressProvince}      xpath=//android.widget.ImageButton[@content-desc="Navigate up"]

${lblAddressBusiness}      xpath=//*[@text="Business"]

${lblAddresOption}      xpath=//*[contains(@text, "13 Caro Road, Robertsham, Johannesburg South")]
${lblAddresOptionChanged}      xpath=//*[contains(@text, "13 Caro Road, Robertsham, Johannesburg South, Gauteng, 8007")]
${lytAddressType}      id=${APP_PACKAGE}:id/checkout_address_item_recipient_address_edit

${lblEditAddressBusiness}      xpath=//*[@text="EDIT"]
${txtSearchAddressOnMap}      id=${APP_PACKAGE}:id/address_input_auto_complete_info_input

${lblEditAddressMapLocation}      xpath=//*[@text="USE THIS LOCATION"]

${lblRecepientMobile}      xpath=//*[@text="Recipient Mobile Number"]
${txtRecipientPostCodeEdit}     xpath=//*/android.view.ViewGroup[@resource-id='${APP_PACKAGE}:id/address_input_postal_code']/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.EditText
${lblRecepientPostCode}      xpath=//*[@text="Postal Code"]

${lblAddresOptionMyAcc}      xpath=//*[@text="12 Ridge Way, Green Point, Cape Town, Western Cape, 8007"]
${lblAddresOptionMyAccMap}      xpath=//*[@text="12 Ridge Way, Pinelands, Cape Town, South Africa"]

${lblAddresOptionMyAccSuburb}      xpath=//*[@text="Western Cape"]
${lblAddresMyAccSuburb}      xpath=//*[@text="Gauteng"]

${lblAddresOptionMyAccGauteng}      xpath=//*[@text="12 Ridge Way, Green Point, Cape Town, Gauteng, 8007"]

${lblAddresOptionMyAccMapSuburb}      ${EMPTY}

${btnAddressDelete}    id=${APP_PACKAGE}:id/address_selection_detail_item_address_right_action

${btnAddressTypeSelector}    id=${APP_PACKAGE}:id/address_input_type_selector
