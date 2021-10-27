*** Settings ***
Resource          ../config/defaultConfig.robot
Library    DateTime

*** Keywords ***
Click Menu
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnMenu}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${btnMenu}
    ${btnPresentNotificationsNo}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnDealsNotification}
    Run Keyword If    ${btnPresentNotificationsNo}    Click Element    ${btnDealsNotification}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnHome}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnHome}

Click Menu iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnMenu}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${btnMenu}

Click Menu Login
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnMenu}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnMenu}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Swipe Up    ${cntMenuAccountScroll}
    ${chkLoginElement}=    Run Keyword And Return Status    Page Should Contain Element    ${btnMenuLogin}
    Run Keyword If    ${chkLoginElement}==${False}    Click Element    ${btnLogout}
    Run Keyword If    '${PLATFORM_NAME}'=='ios' and ${chkLoginElement}==${False}    Click Element    ${btnMenu}
    Click Element    ${btnMenuLogin}

Log In If Not Logged In
    [Arguments]    ${email}    ${password}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnMenu}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnMenu}

    Run Keyword If    '${PLATFORM_NAME}'=='android'    Swipe Up    ${windowScroll}

    ${chkLoginElement}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnMenuLogin}
    Run Keyword If    ${chkLoginElement}==${True}    Click Element    ${btnMenuLogin}
    Run Keyword If    ${chkLoginElement}==${True}    Login Takealot    ${email}    ${password}

Click Menu Register
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnMenu}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnMenu}

    Run Keyword If    '${PLATFORM_NAME}'=='android'    Swipe Up    ${windowScroll}
    ${chkLoginElement}=    Run Keyword And Return Status    Page Should Contain Element    ${btnLogout}
    Run Keyword If    ${chkLoginElement}==${True}    Click Element    ${btnLogout}

    Run Keyword If    '${PLATFORM_NAME}'=='ios' and ${chkLoginElement}==${True}    Click Element    ${btnMenu}

    Run Keyword If    '${PLATFORM_NAME}'=='android'    Swipe Up    ${windowScroll}
    Click Element    ${btnMenuRegister}

Click Menu Register Android
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnMenu}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnMenu}

    Run Keyword If    '${PLATFORM_NAME}'=='android'    Swipe Up    ${windowScroll}
    ${chkLoginElement}=    Run Keyword And Return Status    Page Should Contain Element    ${btnLogout}
    Run Keyword If    ${chkLoginElement}==${True} and '${PLATFORM_NAME}'=='android'    Click Element    ${btnLogout}

    Run Keyword If    '${PLATFORM_NAME}'=='android'    Swipe Up    ${windowScroll}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnMenuRegister}

Click Menu Logout
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnMenu}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnMenu}
    Click Element    ${btnLogout}

Click Menu Logout If Logged In
    Wait Until Element Is Visible    ${btnMenu}    ${MIN_TIMEOUT}
    Click Element    ${btnMenu}

    ${chkVisible}=    Run Keyword And Return Status    Page Should Contain Element    ${btnLogout}
    Run Keyword If    '${chkVisible}'=='True'    Click Element    ${btnLogout}

Click Menu Daily Deals
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnMenuCategories}
    Click Element    ${btnMenuDailyDeals}

Click Menu Shop By Department
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnMenuCategories}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${mnuShopByDepartment}

Click Menu Sport and Fitness
    ${chkTextSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${mnuSportFitness}
    Run Keyword If    ${chkTextSuccess}==${False}    Swipe Up    ${windowScroll}

    ${chkTextSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${mnuSportFitness}
    Run Keyword If    ${chkTextSuccess}==${False}    Swipe Up    ${windowScroll}

    Wait Until Element Is Visible    ${mnuSportFitness}
    Click Element    ${mnuSportFitness}
    Click Product Widget First View All

Click Menu Department
    [Arguments]    ${dept}

    ${txtProduct}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label == '${dept}'`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${dept}']
    Scroll    start_locator    end_locator
    ${chkTextSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${txtProduct}    5s
    Run Keyword If    ${chkTextSuccess}==${False}    Swipe Up    ${windowScroll}
    ${chkTextSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${txtProduct}    5s
    Run Keyword If    ${chkTextSuccess}==${False}    Swipe Up    ${windowScroll}
    ${chkTextSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${txtProduct}    5s
    Run Keyword If    ${chkTextSuccess}==${False}    Swipe Up    ${windowScroll}
    ${chkTextSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${txtProduct}    5s
    Run Keyword If    ${chkTextSuccess}==${False}    Swipe Up    ${windowScroll}

    Wait Until Element Is Visible    ${txtProduct}
    Click Element    ${txtProduct}

#    Sleep    3s

Click Menu Gaming
    ${chkTextSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${mnuGaming}    5s
    Run Keyword If    ${chkTextSuccess}==${False}    Swipe Up    ${windowScroll}
    ${chkTextSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${mnuGaming}    5s
    Run Keyword If    ${chkTextSuccess}==${False}    Swipe Up    ${windowScroll}
    Wait Until Element Is Visible    ${mnuGaming}
    Click Element    ${mnuGaming}

Click Menu New To Electronics
    Wait Until Element Is Visible    ${btnMenuNewToElec}
    Click Element    ${btnMenuNewToElec}
    Click View All Daily Deals If Present

Click Menu My Account
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnMenu}

    ${chkTextSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${mnuMyAccount}
    Log    ${chkTextSuccess}
    Run Keyword If    ${chkTextSuccess}==${False} and '${PLATFORM_NAME}'=='ios'    Click Element    ${mnuMyAccountText}
    Run Keyword If    ${chkTextSuccess}==${True} and '${PLATFORM_NAME}'=='ios'    Click Element    ${mnuMyAccount}

Click Menu My Account Android
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnMenu}

Click Menu Address Book
    Wait Until Element Is Visible    ${btnMenuAddressBook}
    Click Element    ${btnMenuAddressBook}

Click Menu Personal Detail
    Wait Until Element Is Visible    ${btnMenuPersonalDetail}
    Click Element    ${btnMenuPersonalDetail}

Click Menu Orders
    Wait Until Element Is Visible    ${btnMenuOrders}
    Click Element    ${btnMenuOrders}

Click Menu Exchanges And Returns
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnMenuExchReturns}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnMenuExchReturns}

Click Menu Load Gift Voucher
    Wait Until Element Is Visible    ${btnMenuGiftVoucher}    ${MIN_TIMEOUT}
    Click Element    ${btnMenuGiftVoucher}

Click Menu Credits Refunds
    Wait Until Element Is Visible    ${btnMenuCreditRefunds}    ${MIN_TIMEOUT}
    Click Element    ${btnMenuCreditRefunds}

Click Menu Settings
    Wait Until Element Is Visible    ${btnMenuSettings}    ${MIN_TIMEOUT}
    Click Element    ${btnMenuSettings}

Click Menu Superbalist
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnMenuTakealotGroup}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnMenuTakealotGroup}
    Wait Until Element Is Visible    ${mnuSuperbalist}    ${MIN_TIMEOUT}
    Click Element    ${mnuSuperbalist}

Click Menu MrD
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnMenuTakealotGroup}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnMenuTakealotGroup}
    Wait Until Element Is Visible    ${mnuMrDFood}    ${MIN_TIMEOUT}
    Click Element    ${mnuMrDFood}

Click Menu Takealot Group
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnMenuTakealotGroup}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnMenuTakealotGroup}

Click Menu Help
    Wait Until Element Is Visible    ${btnMenuHelp}    ${MIN_TIMEOUT}
    Click Element    ${btnMenuHelp}

Click Back Delivery iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnBackMyAcc}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${btnBackMyAcc}

Click Wishlist Nav Bar
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnWishlist}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnWishlist}

    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Home WishList Only

Click Wishlist
    Wait Until Element Is Visible    ${btnWishlist}    ${MIN_TIMEOUT}
    Click Element    ${btnWishlist}
    Navigate to Wishlist

Click Cart
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnCart}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnCart}

    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Wishlist Add To Cart

Click Home Cart
    Wait Until Element Is Visible    ${btnCart}
    Click Element    ${btnCart}

Verify Menu Items
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnMenuCategories}
    Wait Until Element Is Visible    ${btnMenuDailyDeals}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Contains    Account
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${mnuShopByDepartment}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    My Account
