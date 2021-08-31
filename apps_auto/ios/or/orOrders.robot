*** Variables ***
${txtOrdersAwaitingPayment}      chain=**/XCUIElementTypeStaticText[`label == "Awaiting Payment"`]
${btnOrdersPayNow}      chain=**/XCUIElementTypeButton[`label == "Pay Now"`]

${btnOrdersCancel}      chain=**/XCUIElementTypeButton[`label == "Cancel Order"`]
${btnOrdersCancelConfirm}      id=Cancel Order
