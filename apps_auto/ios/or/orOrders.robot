*** Variables ***
${txtOrdersAwaitingPayment}      chain=**/XCUIElementTypeStaticText[`label == "Awaiting Payment"`]
${btnOrdersPayNow}      chain=**/XCUIElementTypeButton[`label == "Pay Now"`]

${btnOrdersCancel}      chain=**/XCUIElementTypeButton[`label == "Cancel Order"`]
${btnOrdersCancelConfirm}      id=Cancel Order
${txtDigitalDeliveryMethod}      chain=**/XCUIElementTypeStaticText[`label == "Digital Delivery"`][1]
${txtDigitalShippingAddress}      chain=**/XCUIElementTypeStaticText[`label == "Digital Delivery"`][2]

${btnOrdersFilterChange}      id=Change
${btnFilterOptionChange}    chain=**/XCUIElementTypeStaticText[`label == "Change"`]
