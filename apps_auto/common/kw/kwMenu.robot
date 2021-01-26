*** Settings ***
Library           TalLibrary

*** Keywords ***
Click Menu
    Wait Until Element Is Visible    ${btnMenu}    30s
    Click Element    ${btnMenu}

Click Menu Login
    Click Element    ${btnMenuLogin}

Click Menu Logout
    Click Element    ${btnLogout}
    Page Should Contain Element    ${btnMenuLogin}

Click Menu Daily Deals
    Click Element    ${btnMenuDailyDeals}

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

Click Menu Personal Detail
    Wait Until Element Is Visible    ${btnMenuPersonalDetail}    5s
    Click Element    ${btnMenuPersonalDetail}

Click Back My Account
    Wait Until Element Is Visible    ${btnBackMyAcc}    5s
    Click Element    ${btnBackMyAcc}

Click Back android
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnBackMyAcc}    10s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnBackMyAcc}

Click Wishlist
    Wait Until Element Is Visible    ${btnWishlist}    1s
    Click Element    ${btnWishlist}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnWishlistItems}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnWishlistItems}

Click Cart
    Wait Until Element Is Visible    ${btnCart}    1s
    Click Element    ${btnCart}
