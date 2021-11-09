*** Settings ***
Resource          ../config/defaultConfig.robot
Library    DateTime

*** Keywords ***
Click Menu
    IF    ${PLATFORM_NAME} == 'ios'
        Wait Until Element Is Visible    ${btnMenu}    ${MIN_TIMEOUT}
        Click Element    ${btnMenu}
    END
    
    ${btnPresentNotificationsNo}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnDealsNotification}    5s
    IF    ${btnPresentNotificationsNo} == ${True}
        Click Element    ${btnDealsNotification}
    END

    IF    ${PLATFORM_NAME} == 'android'
        Wait Until Element Is Visible    ${btnHome}    ${MIN_TIMEOUT}
        Click Element    ${btnHome}
    END
    #Sleep    2s

Click Menu iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnMenu}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${btnMenu}
    #Sleep    1s

Click Menu Login
    IF    ${PLATFORM_NAME} == 'android'
        Wait Until Element Is Visible    ${btnMenu}    ${MIN_TIMEOUT}
        Click Element    ${btnMenu}
        Swipe Up    ${cntMenuAccountScroll}
    END
    
    ${chkLoginElement}=    Run Keyword And Return Status    Page Should Contain Element    ${btnMenuLogin}
    IF    ${chkLoginElement} == ${False}
        Click Element    ${btnLogout}
    END
    
    IF    ${PLATFORM_NAME} == 'ios' and ${chkLoginElement} == ${False}
        Click Element    ${btnMenu}
    END 

    Click Element    ${btnMenuLogin}
    #Sleep    1s

Log In If Not Logged In
    [Arguments]    ${email}    ${password}
    IF    ${PLATFORM_NAME} == 'android'
        Wait Until Element Is Visible    ${btnMenu}    ${MIN_TIMEOUT}
        Click Element    ${btnMenu}
        Swipe Up    ${windowScroll}
    END
   
    ${chkLoginElement}=    Run Keyword And Return Status    Page Should Contain Element    ${btnMenuLogin}
    IF    ${chkLoginElement} == ${True}
        Click Element    ${btnMenuLogin}
        Login Takealot    ${email}    ${password}
    END
    
Click Menu Register
    IF    ${PLATFORM_NAME} == 'android'
        Wait Until Element Is Visible    ${btnMenu}    ${MIN_TIMEOUT}
        Click Element    ${btnMenu}
        Swipe Up    ${windowScroll}
    END
    
    ${chkLoginElement}=    Run Keyword And Return Status    Page Should Contain Element    ${btnLogout}
    IF   ${chkLoginElement} == ${True}
         Click Element    ${btnLogout}
    END

    IF    ${PLATFORM_NAME} == 'ios' and ${chkLoginElement} == ${True}
        Click Element    ${btnMenu}
    END

    IF   ${PLATFORM_NAME} == 'android'
        Swipe Up    ${windowScroll}
    END
    
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
#    Sleep    2s

Click Menu Logout If Logged In
    Wait Until Element Is Visible    ${btnMenu}    ${MIN_TIMEOUT}
    Click Element    ${btnMenu}

    ${chkVisible}=    Run Keyword And Return Status    Page Should Contain Element    ${btnLogout}
    IF   '${chkVisible}' == ${True}
        Click Element    ${btnLogout}
    END

Click Menu Daily Deals
    IF    ${PLATFORM_NAME} == 'android'
        Click Element    ${btnMenuCategories}
    END    
    Click Element    ${btnMenuDailyDeals}

Click Menu Shop By Department
    IF    ${PLATFORM_NAME} == 'android'
        Click Element    ${btnMenuCategories}
    ELSE IF    ${PLATFORM_NAME} == 'ios'
        Click Element    ${mnuShopByDepartment}
    END    

Click Menu Sport and Fitness
    FOR    ${index}    IN RANGE    2
        ${chkTextSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${mnuSportFitness}
        IF    ${chkTextSuccess} == ${True}
            Exit For Loop         
        ELSE
            Swipe Up    ${windowScroll}
            Sleep    1s
        END        
    END

    Click Element    ${mnuSportFitness}
    Click Product Widget First View All

Click Menu Department
    [Arguments]    ${dept}
    ${txtProduct}=    Set Variable    ${None}

    IF    ${PLATFORM_NAME} == 'android'
        ${txtProduct}=    Set Variable    xpath=//*[@text='${dept}']
    ELSE IF    ${PLATFORM_NAME} == 'ios'
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
    FOR    ${index}    IN RANGE    2
    ${chkTextSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${mnuGaming}
        IF    ${chkTextSuccess} == ${True}
            Exit For Loop
        ELSE
            Swipe Up    ${windowScroll}
            Sleep    1s
        END
    END

    Click Element    ${mnuGaming}

Click Menu New To Electronics
    Wait Until Element Is Visible    ${btnMenuNewToElec}    5s
    Click Element    ${btnMenuNewToElec}
    Click View All Daily Deals If Present

Click Menu My Account
    IF    ${PLATFORM_NAME} == 'android'
        Click Element    ${btnMenu}
    END
          
    ${chkTextSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${mnuMyAccount}    5s
    Log    ${chkTextSuccess}

    IF    ${chkTextSuccess} == ${True} and ${PLATFORM_NAME} == 'ios'
        Click Element    ${mnuMyAccount}
    ELSE IF    ${chkTextSuccess} == ${False} and ${PLATFORM_NAME} == 'ios'
        Click Element    ${mnuMyAccountText}
    END
    #Sleep    2s

Click Menu My Account Android
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnMenu}

Click Menu Address Book
    Wait Until Element Is Visible    ${btnMenuAddressBook}    ${MIN_TIMEOUT}
    Click Element    ${btnMenuAddressBook}

Click Menu Personal Detail
    Wait Until Element Is Visible    ${btnMenuPersonalDetail}    ${MIN_TIMEOUT}
    Click Element    ${btnMenuPersonalDetail}

Click Menu Orders
    Wait Until Element Is Visible    ${btnMenuOrders}    ${MIN_TIMEOUT}
    Click Element    ${btnMenuOrders}

Click Menu Exchanges And Returns
    IF    ${PLATFORM_NAME} == 'android'
        Wait Until Element Is Visible    ${btnMenuExchReturns}    ${MIN_TIMEOUT}
        Click Element    ${btnMenuExchReturns}
    END
    
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
    IF    ${PLATFORM_NAME} == 'android'
        Wait Until Element Is Visible    ${btnMenuTakealotGroup}    ${MIN_TIMEOUT}
        Click Element    ${btnMenuTakealotGroup}
    END
    
    Wait Until Element Is Visible    ${mnuSuperbalist}    ${MIN_TIMEOUT}
    Click Element    ${mnuSuperbalist}

Click Menu MrD
    IF    ${PLATFORM_NAME} == 'android'
        Wait Until Element Is Visible    ${btnMenuTakealotGroup}    ${MIN_TIMEOUT}
        Click Element    ${btnMenuTakealotGroup}
    END
   
    Wait Until Element Is Visible    ${mnuMrDFood}    ${MIN_TIMEOUT}
    Click Element    ${mnuMrDFood}

Click Menu Takealot Group
    IF     ${PLATFORM_NAME} == 'android'
        Wait Until Element Is Visible    ${btnMenuTakealotGroup}    ${MIN_TIMEOUT}
        Click Element    ${btnMenuTakealotGroup}
    END
    
Click Menu Help
    Wait Until Element Is Visible    ${btnMenuHelp}    ${MIN_TIMEOUT}
    Click Element    ${btnMenuHelp}

Click Back Delivery iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnBackMyAcc}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${btnBackMyAcc}

Click Wishlist Nav Bar
    IF    ${PLATFORM_NAME} == 'android'
        Wait Until Element Is Visible    ${btnWishlist}
        Click Element    ${btnWishlist}
    ELSE IF    ${PLATFORM_NAME} == 'ios'
        Click Home WishList Only
    END

Click Wishlist
    Wait Until Element Is Visible    ${btnWishlist}    ${MIN_TIMEOUT}
    Click Element    ${btnWishlist}
    Navigate to Wishlist

Click Cart
    IF    ${PLATFORM_NAME} == 'android'
        Wait Until Element Is Visible    ${btnCart}
        Click Element    ${btnCart}
    ELSE IF    ${PLATFORM_NAME} == 'ios'
        Click Wishlist Add To Cart
    END

Click Home Cart
    Wait Until Element Is Visible    ${btnCart}    5s
    Click Element    ${btnCart}

Verify Menu Items
    IF    ${PLATFORM_NAME} == 'android'
        Click Element    ${btnMenuCategories}
        Wait Until Element Is Visible    ${btnMenuDailyDeals}
        Wait Until Page Contains    Account
    ELSE IF    ${PLATFORM_NAME} == 'ios'
        Wait Until Element Is Visible    ${btnMenuDailyDeals}
        Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${mnuShopByDepartment}
        Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    My Account
    END