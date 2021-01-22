*** Settings ***
Library           TalLibrary

*** Keywords ***
Click Menu
    Wait Until Element Is Visible    ${btnMenu}    30s
    Click Element    ${btnMenu}

Click Search Home
    Click Element    ${btnSearch}

Click Home
    Wait Until Element Is Visible    ${btnHome}    30s
    Click Element    ${btnHome}

Click Search Icon
    Wait Until Element Is Visible    ${btnSearchIcon}    30s
    Click Element    ${btnSearchIcon}

Click Wishlist
    Wait Until Element Is Visible    ${btnWishlist}    1s
    Click Element    ${btnWishlist}

Click Add To Wishlist
    Wait Until Element Is Visible    ${btnAddWishlist}    30s
    Click Element    ${btnAddWishlist}

Click Wishlist Add To Cart
    Wait Until Element Is Visible    ${btnWishlistCart}    30s
    Click Element    ${btnWishlistCart}

Click Cart
    Wait Until Element Is Visible    ${btnCart}    1s
    Click Element    ${btnCart}

Click Add To Cart
    Wait Until Element Is Visible    ${btnAddToCart}    30s
    Click Element    ${btnAddToCart}

Click Airtime
    Wait Until Element Is Visible    ${lblAirtimeValue}    30s
    Click Element    ${lblAirtimeValue}

Click 10 Kg
    Wait Until Element Is Visible    ${lblTenKgValue}    30s
    Click Element    ${lblTenKgValue}

Click Go To Cart
    Wait Until Element Is Visible    ${btnGoToCart}    30s
    Click Element    ${btnGoToCart}

Click Continue Shopping
    Wait Until Element Is Visible    ${btnContinueShopping}    30s
    Click Element    ${btnContinueShopping}

Click Domestic TV Licence
    Wait Until Element Is Visible    ${btnDomestic}    30s
    Click Element    ${btnDomestic}

Click Verify TV Licence
    Wait Until Element Is Visible    ${btnVerify}    30s
    Click Element    ${btnVerify}

Click Checkout
    Wait Until Element Is Visible    ${btnCheckout}    30s
    Click Element    ${btnCheckout}

Click Delivery
    Wait Until Element Is Visible    ${btnDelivery}    30s
    Click Element    ${btnDelivery}

Click Collect
    Wait Until Element Is Visible    ${btnCollect}    30s
    Click Element    ${btnCollect}

Click Continue Airtime
    Wait Until Element Is Visible    ${btnContinueAirtime}    30s
    Click Element    ${btnContinueAirtime}

Click Address
    Wait Until Element Is Visible    ${btnAddress}    30s
    Click Element    ${btnAddress}

Click Pickup Point
    Wait Until Element Is Visible    ${btnPickupPoint}    30s
    Click Element    ${btnPickupPoint}

Click Payfast Payment Method
    Wait Until Element Is Visible    ${lblPayFastEFT}    30s
    Click Element    ${lblPayFastEFT}

Click Card Payment Method
    Wait Until Element Is Visible    ${lblCreditCardEFT}    30s
    Click Element    ${lblCreditCardEFT}

Click Change Payment Method
    Wait Until Element Is Visible    ${btnChange}    30s
    Click Element    ${btnChange}

Click Pay With Credit Card
    Wait Until Element Is Visible    ${btnCreditCard}    30s
    Click Element    ${btnCreditCard}

Click Pay With Payfast
    Wait Until Element Is Visible    ${btnPayWithFast}    30s
    Click Element    ${btnPayWithFast}

Click Donate No Thanks
    Wait Until Element Is Visible    ${btnNoThanks}    30s
    Click Element    ${btnNoThanks}

Click Free Delivery
    Wait Until Element Is Visible    ${btnFree}    30s
    Click Element    ${btnFree}

Click Surcharge Delivery
    Wait Until Element Is Visible    ${txtSurchargeDelivery}    30s
    Click Element    ${txtSurchargeDelivery}

Search Product
    [Arguments]    ${search}
    Clear Text    ${txtSearch}
    Input Text    ${txtSearch}    ${search}
    Wait Until Element Is Visible    ${btnSearchOption}    30s
    Click Element    ${btnSearchOption}

Enter TV Licence
    [Arguments]    ${licemce}
    Wait Until Element Is Visible    ${txtLicence}    30s
    Clear Text    ${txtLicence}
    Input Text    ${txtLicence}    ${licemce}
    Click Element    ${btnVerify}

Add Delivery Address My Acc
    [Arguments]    ${name}    ${mobile}    ${street}

    Wait Until Element Is Visible    ${txtRecipientNameMyAcc}    5s

    Clear Text    ${txtRecipientNameMyAcc}
    Input Text    ${txtRecipientNameMyAcc}    ${name}
    Input Text    ${txtRecipientMobileMyAcc}    ${mobile}
    Input Text    ${txtRecipientStreetMyAcc}    ${street}

    Click Element    ${lblStreetAddress}
    Click Element    ${btnSaveAddress}

Click Product
    Wait Until Element Is Visible    ${btnProduct}    30s
    Click Element    ${btnProduct}

Click Product Daily Deals
    Wait Until Element Is Visible    ${btnProductDailyDeals}    30s
    Click Element    ${btnProductDailyDeals}

Click Menu Shop By Department
    Click Element    ${mnuShopByDepartment}

Click Menu Sport and Fitness
    Wait Until Element Is Visible    ${mnuSportFitness}    5s
    Click Element    ${mnuSportFitness}

Click Menu My Account
    Click Element    ${mnuMyAccount}

Click Menu Address Book
    Wait Until Element Is Visible    ${btnMenuAddressBook}    5s
    Click Element    ${btnMenuAddressBook}

Click Back My Account
    Wait Until Element Is Visible    ${btnBackMyAcc}    5s
    Click Element    ${btnBackMyAcc}

Click Menu Personal Detail
    Wait Until Element Is Visible    ${btnMenuPersonalDetail}    5s
    Click Element    ${btnMenuPersonalDetail}

Click Menu Daily Deals
    Click Element    ${btnMenuDailyDeals}

Click Menu Login
    Click Element    ${btnMenuLogin}

Click Menu Logout
    Click Element    ${btnLogout}
    Page Should Contain Element    ${btnMenuLogin}

Click Add Delivery Address
    Wait Until Element Is Visible    ${btnDeliveryAddress}    30s
    Click Element    ${btnDeliveryAddress}

Click Residential
    Wait Until Element Is Visible    ${btnResidential}    5s
    Click Element    ${btnResidential}

Login Takealot
    [Arguments]    ${email}    ${password}
    Clear Text    ${txtEmail}
    Input Text    ${txtEmail}    ${email}
    Input Text    ${txtPassword}    ${password}
    Click Element    ${btnLogin}

Update Personal Detail Name
    [Arguments]    ${name}
    Wait Until Element Is Visible    ${lblPersonalDetailName}    5s

    Click Element    ${lblPersonalDetailName}
    Clear Text    ${txtFirstName}
    Input Text    ${txtFirstName}    ${name}
    Click Element    ${btnSaveAddress}

Add Delivery Address
    [Arguments]    ${name}    ${mobile}    ${street}

    Wait Until Element Is Visible    ${txtRecipientName}    5s

    Clear Text    ${txtRecipientName}
    Input Text    ${txtRecipientName}    ${name}
    Input Text    ${txtRecipientMobile}    ${mobile}
    Input Text    ${txtRecipientStreet}    ${street}

    Click Element    ${lblStreetAddress}
    Click Element    ${btnSaveAddress}

Start Application
    &{cap}=    Get Capabilities    ${False}    ${True}
    Log Many    &{cap}
    Open Application    ${REMOTE_URL}    &{cap}
    Set Implicitly Wait    5

Tear Down
    Capture Page Screenshot
    Set Implicitly Wait    1
    Close Application

Verify Logged In
    [Arguments]    ${verifyText}
    ${lblUserName}=    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Set Variable    id=${verifyText}
    ...    ELSE    Set Variable    ${lblUserName}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${lblUserName}    10s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Page Should Contain Text    Logged in successfully
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    You are logged in    10s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Element Should Contain Text    ${lblUserName}    ${verifyText}

Verify Card Payment
    [Arguments]    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${lblCardNumber}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Element Should Contain Text    ${lblCardNumber}    ${verifyText}

Verify Payfast Payment
    [Arguments]    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${lblSecurePaymentPayFast}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Element Should Contain Text    ${lblSecurePaymentPayFast}    ${verifyText}

Verify Delivery Surcharge
    [Arguments]    ${verifyText}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${lblDeliverySurcharge}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Element Should Contain Text    ${lblDeliverySurcharge}    ${verifyText}
