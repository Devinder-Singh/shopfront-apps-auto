*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Menu
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnMenu}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${btnMenu}
    ${btnPresentNotificationsNo}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnDealsNotification}    5s
    Run Keyword If    ${btnPresentNotificationsNo}    Click Element    ${btnDealsNotification}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnHome}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnHome}

Click Menu Login
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnMenu}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnMenu}
    Click Element    ${btnMenuLogin}

Click Menu Register
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnMenu}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnMenu}
    Click Element    ${btnMenuRegister}

Click Menu Logout
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnMenu}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnMenu}
    Click Element    ${btnLogout}
    Page Should Contain Element    ${btnMenuLogin}

Click Menu Daily Deals
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnMenuCategories}
    Click Element    ${btnMenuDailyDeals}

Click Menu Shop By Department
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnMenuCategories}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${mnuShopByDepartment}

Click Menu Sport and Fitness
    Wait Until Element Is Visible    ${mnuSportFitness}    5s
    Click Element    ${mnuSportFitness}

Click Menu New To Electronics
    Wait Until Element Is Visible    ${btnMenuNewToElec}    5s
    Click Element    ${btnMenuNewToElec}

Click Menu My Account
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnMenu}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${mnuMyAccount}

Click Menu Address Book
    Wait Until Element Is Visible    ${btnMenuAddressBook}    5s
    Click Element    ${btnMenuAddressBook}

Click Menu Personal Detail
    Wait Until Element Is Visible    ${btnMenuPersonalDetail}    5s
    Click Element    ${btnMenuPersonalDetail}

Click Menu Orders
    Wait Until Element Is Visible    ${btnMenuOrders}    5s
    Click Element    ${btnMenuOrders}

Click Back My Account
    Wait Until Element Is Visible    ${btnBackMyAcc}    5s
    Click Element    ${btnBackMyAcc}

Click Wishlist Nav Bar
    Wait Until Element Is Visible    ${btnWishlist}    1s
    Click Element    ${btnWishlist}

Click Wishlist
    Wait Until Element Is Visible    ${btnWishlist}    1s
    Click Element    ${btnWishlist}
    Navigate to Wishlist

Click Cart
    Wait Until Element Is Visible    ${btnCart}    1s
    Click Element    ${btnCart}

Verify Menu Items
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnMenuCategories}
    Wait Until Element Is Visible    ${btnMenuDailyDeals}    1s
    Wait Until Element Is Visible    ${mnuShopByDepartment}    1s
    Wait Until Element Is Visible    ${mnuMyAccount}    1s
