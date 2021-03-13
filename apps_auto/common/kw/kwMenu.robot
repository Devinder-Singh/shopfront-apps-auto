*** Settings ***
Library           TalLibrary

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

Click Menu Logout
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

Click Wishlist
    Wait Until Element Is Visible    ${btnWishlist}    1s
    Click Element    ${btnWishlist}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnWishlistCreate}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnWishlistItems}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnWishlistItems}

Click Cart
    Wait Until Element Is Visible    ${btnCart}    1s
    Click Element    ${btnCart}
