*** Variables ***
${lblCardNumber}      id=card-num-add
${navPayCreditCardBack}      accessibility_id=Navigate up
${txtCreditCardNumber}      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View[1]/android.view.View/android.view.View[4]/android.widget.EditText
${txtCreditCardName}      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View[1]/android.view.View/android.view.View[3]/android.widget.EditText

${txtCardDescPaygate}      xpath=(//android.widget.EditText[@resource-id='cardDesc'])
${txtCardHolderPaygate}      xpath=(//android.widget.EditText[@resource-id='cardHolder'])
${txtCreditCardNumberPaygate}      xpath=(//android.widget.EditText[@resource-id='cardFormattedNumber'])
${txtCreditCardExpMonPaygate}      xpath=(//android.widget.EditText[@resource-id='expMon'])
${txtCreditCardExpYrPaygate}      xpath=(//android.widget.EditText[@resource-id='expYr'])
${txtCreditCardCVVPaygate}      xpath=(//android.widget.EditText[@resource-id='cvvNew']) 
${btnCreditCardPayPaygate}      xpath=(//android.widget.Button[@resource-id='paySecure'])

${lblCreditCardSavePaygate}      xpath=//*[@text="Use as my default card"]
${btnCreditCardRetry}      id=retry
${btnCreditCardNewCard}      id=payNew

${lblCreditCardDeletePaygate}      xpath=//*[@text="Delete"]
${btnCreditCardDeleteConfirmPaygate}      id=modal-delete-btn

${txtCardNumberPAYU}      id=0_cardNumber
${txtCardNamePAYU}      id=0_nameOnCard
${txtCardExpMonthPAYU}      id=0_expMonth
${txtCardExpYearhPAYU}      id=0_expYear
${lblCreditCardSavePAYU}      id=0_save
${txtCreditCardSubmitPAYU}      id=tokenSubmit
