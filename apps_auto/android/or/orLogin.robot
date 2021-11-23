*** Variables ***
${txtEmail}       id=${APP_PACKAGE}:id/validation_input_text_input_edit_text
${txtPassword}    xpath=(//android.widget.EditText[1])[2]
${btnLogin}       id=${APP_PACKAGE}:id/accountAuthLoginLayoutLogin
${lblUserName}    ${EMPTY}

${btnForgotPwd}       id=${APP_PACKAGE}:id/accountAuthLoginLayoutForgotPassword
${txtEmailResetPwd}       id=${APP_PACKAGE}:id/validation_input_text_input_edit_text
${btnRequestResetPwd}       id=${APP_PACKAGE}:id/accountAuthResetPasswordLayoutRequestButton
