*** Variables ***
${txtEmail}       id=EMAIL ADDRESS
${btnMenu}        chain=**/XCUIElementTypeNavigationBar[`name == "HomeView"`]/XCUIElementTypeButton[1]
${btnMenuLogin}    chain=**/XCUIElementTypeStaticText[`label == "Login"`]
${txtPassword}    chain=**/XCUIElementTypeSecureTextField[1]
${btnLogin}       chain=**/XCUIElementTypeButton[`label == "Login"`]
${lblUserName}    ${EMPTY}
${btnLogout}      chain=**/XCUIElementTypeStaticText[`label == "Sign out"`]
${btnHome}      chain=**/XCUIElementTypeButton[`label == "Home"`]

${btnNoThanks}     chain=**/XCUIElementTypeButton[`label == "No thanks"`]
${btnSearch}      chain=**/XCUIElementTypeTextField[`value == "Search for products, brands..."`]
${txtSearch}      chain=**/XCUIElementTypeSearchField[`label == "Search for products, brands..."`]
${btnSearchOption}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[2]

${btnProduct}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]

${btnAddToCart}      chain=**/XCUIElementTypeButton[`label CONTAINS "Add to Cart"`]

${btnGoToCart}      chain=**/XCUIElementTypeButton[`label == "Go to Cart"`]
${btnCheckout}      chain=**/XCUIElementTypeButton[`label == "Checkout"`]
${btnDelivery}      chain=**/XCUIElementTypeStaticText[`label == "Delivery"`]
${btnCollect}      chain=**/XCUIElementTypeStaticText[`label == "Collect"`]

${btnAddress}      chain=**/XCUIElementTypeStaticText[`label == "Tester Residential 201912124104"`]
${btnPickupPoint}      chain=**/XCUIElementTypeStaticText[`label == "Takealot Cape Town Warehouse Cape Town, Western Cape"`]

${btnFree}      chain=**/XCUIElementTypeStaticText[`label == "Free"`]
${txtSurchargeDelivery}      chain=**/XCUIElementTypeStaticText[`label == "Standard Delivery + Delivery Surcharge"`]
${btnNoThanks}      chain=**/XCUIElementTypeButton[`label == "No thanks"`]
${btnCreditCard}      chain=**/XCUIElementTypeButton[`label == "PAY WITH CREDIT CARD"`]
${lblCardNumber}      chain=**/XCUIElementTypeStaticText[`label == "Card Number"`]

${btnMenuDailyDeals}      chain=**/XCUIElementTypeStaticText[`label == "Daily Deals"`][1]
${btnProductDailyDeals}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther

${mnuShopByDepartment}      chain=**/XCUIElementTypeStaticText[`label == "Shop by Department"`]
${mnuSportFitness}      chain=**/XCUIElementTypeStaticText[`label == "Sport and Fitness Sale"`]
${mnuMyAccount}      chain=**/XCUIElementTypeStaticText[`label == "My Account"`]
${btnMenuAddressBook}      chain=**/XCUIElementTypeStaticText[`label == "Address Book"`]
${btnMenuPersonalDetail}      chain=**/XCUIElementTypeStaticText[`label == "Personal Details"`]
${btnBackMyAcc}      chain=**/XCUIElementTypeButton[`label == "My Account"`][1]

${btnAddWishlist}      chain=**/XCUIElementTypeButton[`label == "icon wishListButton"`]
${btnWishlist}      chain=**/XCUIElementTypeButton[`label == "menu btn wishlist"`]
${btnWishlistCart}      chain=**/XCUIElementTypeButton[`label == "CRT Btn"`]
${btnCart}      chain=**/XCUIElementTypeButton[`label == "Cart"`]
${btnChange}      chain=**/XCUIElementTypeStaticText[`label == "CHANGE"`]
${lblPayFastEFT}      chain=**/XCUIElementTypeStaticText[`label == "EFT with PayFast"`]
${lblCreditCardEFT}      chain=**/XCUIElementTypeStaticText[`label == "Credit & Debit Card"`]
${btnPayWithFast}      chain=**/XCUIElementTypeStaticText[`label == "PAY WITH PAYFAST"`]
${lblSecurePaymentPayFast}      chain=**/XCUIElementTypeImage[`label == "Secure payments by PayFast"`]
${lblDeliverySurcharge}      chain=**/XCUIElementTypeStaticText[`label == "+ R 200 Delivery Surcharge"`]
${btnContinueShopping}      chain=**/XCUIElementTypeButton[`label == "Continue Shopping"`]
${btnSearchIcon}      chain=**/XCUIElementTypeButton[`label == "icon search"`]
${btnDomestic}      chain=**/XCUIElementTypeStaticText[`label == "Domestic"`]
${btnVerify}      chain=**/XCUIElementTypeStaticText[`label == "Verify"`]
${txtLicence}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[2]/XCUIElementTypeTextField

${btnDeliveryAddress}      chain=**/XCUIElementTypeStaticText[`label == "Add Delivery Address"`]
${btnResidential}      chain=**/XCUIElementTypeStaticText[`label == "Residential"`]
${txtRecipientName}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[5]/XCUIElementTypeTextField
${txtRecipientMobile}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[6]/XCUIElementTypeTextField
${txtRecipientStreet}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[7]/XCUIElementTypeTextField
${lblStreetAddress}      chain=**/XCUIElementTypeStaticText[`label == "13 Caro Road, Robertsham, Johannesburg South, South Africa"`]
${btnSaveAddress}      chain=**/XCUIElementTypeStaticText[`label == "Save"`]

${txtRecipientNameMyAcc}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[5]/XCUIElementTypeTextField
${txtRecipientMobileMyAcc}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[6]/XCUIElementTypeTextField
${txtRecipientStreetMyAcc}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[7]/XCUIElementTypeTextField

${lblPersonalDetailName}      chain=**/XCUIElementTypeStaticText[`label == "Your Name"`]
${txtFirstName}      xpath=//XCUIElementTypeApplication[@name="takealot"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[2]/XCUIElementTypeTextField

${lblAirtimeValue}      chain=**/XCUIElementTypeStaticText[`label == "R10"`]
${btnContinueAirtime}      chain=**/XCUIElementTypeStaticText[`label == "CONTINUE"`]
${lblTenKgValue}      chain=**/XCUIElementTypeStaticText[`label == "10.0 kg"`]
