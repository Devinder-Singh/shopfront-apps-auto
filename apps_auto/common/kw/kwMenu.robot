*** Settings ***
Resource          ../config/defaultConfig.robot
Library    DateTime

*** Keywords ***
Click Menu
    IF    '${PLATFORM_NAME}'=='ios'
        Wait Until Element Is Visible    ${btnMenu}    ${MIN_TIMEOUT}
        Click Element    ${btnMenu}
    END
    IF    '${PLATFORM_NAME}'=='android'
        Wait Until Element Is Visible    ${btnHome}    ${MIN_TIMEOUT}
        Click Element    ${btnHome}
    END

Click Menu iOS
    IF    '${PLATFORM_NAME}'=='ios'
        Wait Until Element Is Visible    ${btnMenu}    ${MIN_TIMEOUT}
        Click Element    ${btnMenu}
    END

Click Menu Login
    IF    '${PLATFORM_NAME}'=='android'
        Wait Until Element Is Visible    ${btnMenu}    ${MIN_TIMEOUT}
        Click Element    ${btnMenu}
        Swipe Up    ${cntMenuAccountScroll}
    END
    ${chkLoginElement}=    Run Keyword And Return Status    Page Should Contain Element    ${btnMenuLogin}
    IF    ${chkLoginElement}==${False}
        Click Element    ${btnLogout}
    END
    IF    '${PLATFORM_NAME}'=='ios' and ${chkLoginElement}==${False}
        Click Element    ${btnMenu}
    END
    Click Element    ${btnMenuLogin}

Log In If Not Logged In
    [Arguments]    ${email}    ${password}
    Click No Deal    ${MAX_TIMEOUT}
    Verify Element On Screen    ${btnMenu}    ${MIN_TIMEOUT}
    Click Element    ${btnMenu}
    ${chkVisible}=    Run Keyword And Return Status    Verify Element On Screen    ${btnLogout}    ${MIN_TIMEOUT}
    IF   ${chkVisible} == ${False}
        Click Element    ${btnMenuLogin}
        Login Takealot    ${email}    ${password}
        Click Element    ${btnMenu}
    END

Click Menu Register
    IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Element Is Visible    ${btnMenu}    ${MIN_TIMEOUT}
        Click Element    ${btnMenu}
        Swipe Up    ${windowScroll}
    END

    ${chkLoginElement}=    Run Keyword And Return Status    Page Should Contain Element    ${btnLogout}
    IF   ${chkLoginElement} == ${True}
         Click Element    ${btnLogout}
    END

    IF    '${PLATFORM_NAME}' == 'ios' and ${chkLoginElement} == ${True}
        Click Element    ${btnMenu}
    END

    IF   '${PLATFORM_NAME}' == 'android'
        Swipe Up    ${windowScroll}
    END

    Click Element    ${btnMenuRegister}

Click Menu Register Android
    IF    '${PLATFORM_NAME}'=='android'    
        Wait Until Element Is Visible    ${btnMenu}    ${MIN_TIMEOUT}
        Click Element    ${btnMenu}
        Swipe Up    ${windowScroll}
    END
    ${chkLoginElement}=    Run Keyword And Return Status    Page Should Contain Element    ${btnLogout}
    IF    ${chkLoginElement}==${True} and '${PLATFORM_NAME}'=='android'
        Click Element    ${btnLogout}
    END

    IF    '${PLATFORM_NAME}'=='android'
        Swipe Up    ${windowScroll}
        Click Element    ${btnMenuRegister}
    END

Click Menu Logout
    IF    '${PLATFORM_NAME}'=='android'    
        Wait Until Element Is Visible    ${btnMenu}    ${MIN_TIMEOUT}
        Click Element    ${btnMenu}
    END
    Click Element    ${btnLogout}

Click Menu Logout If Logged In
    Verify Element On Screen    ${btnMenu}    ${MIN_TIMEOUT}
    Click Element    ${btnMenu}

    ${chkVisible}=    Run Keyword And Return Status    Verify Element On Screen    ${btnLogout}    ${MIN_TIMEOUT}
    IF   ${chkVisible} == ${True}
        Click Element    ${btnLogout}
    ELSE
        #Click on burger item if user is already already logged out to not cause confusion with other keywords to restore app to normal home state.
        Click Element    ${btnMenu}
    END

Click Menu Daily Deals
    IF    '${PLATFORM_NAME}' == 'android'
        Click Element    ${btnMenuCategories}
    END
    Click Element    ${btnMenuDailyDeals}

Click Menu Shop By Department
    IF    '${PLATFORM_NAME}' == 'android'
        Click Element    ${btnMenuCategories}
    ELSE IF    '${PLATFORM_NAME}' == 'ios'
        Click Element    ${mnuShopByDepartment}
    END

Click Menu Sport and Fitness
    Click Element On Scroll    ${mnuSportFitness}    3
    Click Product Widget First View All

Click Menu Department
    [Arguments]    ${dept}
    ${txtProduct}=    Set Variable    ${None}

    IF    '${PLATFORM_NAME}' == 'android'
        ${txtProduct}=    Set Variable    xpath=//*[@text='${dept}']
    ELSE IF    '${PLATFORM_NAME}' == 'ios'
        ${txtProduct}=    Set Variable    chain=**/XCUIElementTypeStaticText[`label == '${dept}'`]
    END

    FOR    ${index}    IN RANGE    5
        ${chkTextSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${txtProduct}
        IF    ${chkTextSuccess} == ${True}
            Exit For Loop
        ELSE
            Swipe Up    ${windowScroll}
            Sleep    1s
        END
    END

    Click Element    ${txtProduct}
    #Sleep    3s

Click Menu Gaming
    Click Element On Scroll    ${mnuGaming}    3

Click Menu New To Electronics
    Wait Until Element Is Visible    ${btnMenuNewToElec}
    Click Element    ${btnMenuNewToElec}
    Click View All Daily Deals If Present

Click Menu My Account
    IF   '${PLATFORM_NAME}'=='android'
        Click Element    ${btnMenu}
    END

    ${chkTextSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${mnuMyAccount}
    IF    ${chkTextSuccess}==${False} and '${PLATFORM_NAME}'=='ios'    
        Click Element    ${mnuMyAccountText}
    END
    IF    ${chkTextSuccess}==${True} and '${PLATFORM_NAME}'=='ios'
        Click Element    ${mnuMyAccount}
    END

Click Menu My Account Android
    IF    '${PLATFORM_NAME}'=='android'
        Click Element    ${btnMenu}
    END

Click Menu Address Book
    Wait Until Element Is Visible    ${btnMenuAddressBook}
    Click Element    ${btnMenuAddressBook}

Click Menu Personal Detail
    Wait Until Element Is Visible    ${btnMenuPersonalDetail}
    Click Element    ${btnMenuPersonalDetail}

Click Menu Orders
    IF    '${PLATFORM_NAME}'=='android'
        Swipe Down    ${windowScroll}
    END
    Wait Until Element Is Visible    ${btnMenuOrders}
    Click Element    ${btnMenuOrders}

Click Menu Exchanges And Returns
    Wait Until Element Is Visible    ${btnMenuExchReturns}    10s
    Click Element    ${btnMenuExchReturns}

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
    IF    '${PLATFORM_NAME}'=='android'
        Wait Until Element Is Visible    ${btnMenuTakealotGroup}    ${MIN_TIMEOUT}
        Click Element    ${btnMenuTakealotGroup}
    END
    Wait Until Element Is Visible    ${mnuSuperbalist}    ${MIN_TIMEOUT}
    Click Element    ${mnuSuperbalist}

Click Menu MrD
    IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Element Is Visible    ${btnMenuTakealotGroup}    ${MIN_TIMEOUT}
        Click Element    ${btnMenuTakealotGroup}
    END

    Wait Until Element Is Visible    ${mnuMrDFood}    ${MIN_TIMEOUT}
    Click Element    ${mnuMrDFood}

Click Menu Takealot Group
    IF     '${PLATFORM_NAME}' == 'android'
        Wait Until Element Is Visible    ${btnMenuTakealotGroup}    ${MIN_TIMEOUT}
        Click Element    ${btnMenuTakealotGroup}
    END

Click Menu Help
    Wait Until Element Is Visible    ${btnMenuHelp}    ${MIN_TIMEOUT}
    Click Element    ${btnMenuHelp}

Click Back Delivery iOS
    IF    '${PLATFORM_NAME}'=='ios'
        Wait Until Element Is Visible    ${btnBackMyAcc}    ${MIN_TIMEOUT}
        Click Element    ${btnBackMyAcc}
    END

Click Wishlist Nav Bar
    IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Element Is Visible    ${btnWishlist}
        Click Element    ${btnWishlist}
    ELSE IF    '${PLATFORM_NAME}' == 'ios'
        Click Home WishList Only
    END

Click Wishlist
    [Arguments]    ${newUser}=${False}
    Wait Until Element Is Visible    ${btnWishlist}    ${MIN_TIMEOUT}
    Click Element    ${btnWishlist}
    Navigate to Wishlist    ${newUser}

Click Cart
    IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Element Is Visible    ${btnCart}
        Click Element    ${btnCart}
    ELSE IF    '${PLATFORM_NAME}' == 'ios'
        Click Wishlist Add To Cart
    END

Click Home Cart
    Wait Until Element Is Visible    ${btnCart}
    Click Element    ${btnCart}

Verify Menu Items
    IF    '${PLATFORM_NAME}' == 'android'
        Click Element    ${btnMenuCategories}
        Wait Until Element Is Visible    ${btnMenuDailyDeals}
        Wait Until Page Contains    Account
    ELSE IF    '${PLATFORM_NAME}' == 'ios'
        Wait Until Element Is Visible    ${btnMenuDailyDeals}
        IF    '${PLATFORM_NAME}'=='ios'
            Wait Until Element Is Visible    ${mnuShopByDepartment}
            Verify Text On Screen    My Account
        END
    END

Click No Deal
    [Arguments]    ${timeout}=5s
    ${btnPresentNotificationsNo}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnDealsNotification}    ${timeout}
    IF    ${btnPresentNotificationsNo} == ${True}
        Click Element    ${btnDealsNotification}
    END
