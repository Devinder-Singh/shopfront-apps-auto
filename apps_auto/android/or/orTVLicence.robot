*** Variables ***
${txtLicence}      xpath=//android.widget.LinearLayout[contains(@resource-id, 'tv_licence_validation_input_id_number')]//android.widget.FrameLayout//android.widget.EditText
${btnVerify}      id=${APP_PACKAGE}:id/tv_licence_validation_input_btn_verify

${btnTvLicBack}      accessibility_id=Navigate up

${navTvLicVerification}      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout

${scrTvLicType}      id=${APP_PACKAGE}:id/tv_licence_validation_selection_content_container

${txtLicenceHolidayHome}      xpath=//android.widget.LinearLayout[contains(@resource-id, 'tv_licence_validation_input_id_number')]//android.widget.FrameLayout//android.widget.EditText

${txtLicenceCompReg}      xpath=//android.widget.LinearLayout[contains(@resource-id, 'tv_licence_validation_input_company_registration')]//android.widget.FrameLayout//android.widget.EditText
${txtLicenceBusiness}      xpath=//android.widget.LinearLayout[contains(@resource-id, 'tv_licence_validation_input_easypay')]//android.widget.FrameLayout//android.widget.EditText

${txtLicenceCompRegDealer}      xpath=//android.widget.LinearLayout[contains(@resource-id, 'tv_licence_validation_input_company_registration')]//android.widget.FrameLayout//android.widget.EditText
${txtLicenceDealer}      xpath=//android.widget.LinearLayout[contains(@resource-id, 'tv_licence_validation_input_easypay')]//android.widget.FrameLayout//android.widget.EditText

${btnLicenceCancel}      id=Cancel
