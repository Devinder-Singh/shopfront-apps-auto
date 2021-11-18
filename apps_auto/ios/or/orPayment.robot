*** Variables ***
${btnNoThanks}      chain=**/XCUIElementTypeButton[`label == "No thanks"`]
${btnCreditCard}      chain=**/XCUIElementTypeButton[`label == "PAY WITH CREDIT CARD"`]
${btnChange}      chain=**/XCUIElementTypeStaticText[`label == "CHANGE"`]
${btnPayWithFast}      chain=**/XCUIElementTypeStaticText[`label == "PAY WITH PAYFAST"`]
${btnBackPayment}      chain=**/XCUIElementTypeNavigationBar[`name == "Payment"`]/XCUIElementTypeButton
${txtChangePaymentDeliveryMethod}      chain=**/XCUIElementTypeStaticText[`label == "CHANGE"`][2]
${txtChangePaymentPickup}      chain=**/XCUIElementTypeStaticText[`label == "CHANGE"`][3]

${txtPaymentShowDetails}      chain=**/XCUIElementTypeStaticText[`label == "Show Details"`]
${txtPaymentCancel}      chain=**/XCUIElementTypeButton[`label == "Cancel"`]
${txtPaymentEBucks}      chain=**/XCUIElementTypeStaticText[`label == "Earn eBucks"`]
${txtGiftAdd}      chain=**/XCUIElementTypeStaticText[`label == "Is this a gift? Add a gift message"`]

${lblPaymentDonate}      chain=**/XCUIElementTypeButton[`label == "Donate R5"`]
${imgPaymentDonation}      chain=**/XCUIElementTypeImage[`name == "beautifulgate"`]
${rdoDonationSelected}      chain=**/XCUIElementTypeButton[`label == "btn radio selected"`]

${lblPaymentDonation}      chain=**/XCUIElementTypeStaticText[`label == "Donation"`]
${lblPaymentR5}      chain=**/XCUIElementTypeStaticText[`label == "R  5"`]
${btnPaymentDonationIcon}      chain=**/XCUIElementTypeButton[`label == "icon info green"`]
${btnPaymentDonationOK}      chain=**/XCUIElementTypeButton[`label == "OK"`]

${btnPayWithCash}      chain=**/XCUIElementTypeButton[`label == "CONFIRM ORDER"`]
${btnPayWithOzow}      chain=**/XCUIElementTypeButton[`label == "PAY WITH OZOW"`]
${btnPayWithMobi}      chain=**/XCUIElementTypeButton[`label == "PAY WITH MOBICRED"`]
${btnPayWithEBucks}      chain=**/XCUIElementTypeButton[`label == "PAY WITH EBUCKS"`]

${txtPaymentVoucher}      id=Add Gift Voucher or Coupon Code
${rdoPaymentUseMyCredit}      id=btn radio selected
${txtPaymentAmount}      chain=**/XCUIElementTypeStaticText[`label == "R  0"`]

${rdoPaymentDonation}      id=Donate R 5 to Beautiful Gate Children's Charity
${lblPaymentCreditsApplied}      chain=**/XCUIElementTypeStaticText[`label == "Credit"`]