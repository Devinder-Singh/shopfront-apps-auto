*** Settings ***
Default Tags      login
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Login > Success - QASA-507
    [Tags]    QASA-507
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Verify Element On Screen    ${btnLogout}    5s
    [Teardown]    Tear Down

Apps > Login Validations - QASA-505
    [Tags]    QASA-505
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Menu
    Click Menu Logout
    Click Menu
    Click Menu Login
    Login Takealot Only    ${EMPTY}    ${EMPTY}
    Verify Text On Screen    Please enter your email address    ${MIN_TIMEOUT}
    Verify Text On Screen    Please enter your password    1s
    Login Takealot Only    take2@yahoo.com    ${G_PASSWORD}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Invalid email or password. Please try again    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    EMAIL ADDRESS    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Login Validations (Logged-Out User) - QASA-202
    [Tags]    QASA-202
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Verify Element On Screen    ${btnLogin}    ${MIN_TIMEOUT}
    Click Back Android
    Click Back iOS    Cancel
    Click Add To Wishlist Only
    Verify Element On Screen    ${btnLogin}    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Login > Forgot Password - QASA-508
    [Tags]    QASA-508
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Menu
    Click Menu Logout
    Click Menu
    Click Menu Login
#    Login Takealot Forgot Password    take2@yahoo.com
#    Verify Text On Screen    We're sorry. We weren't able to identify you given the information provided    ${MIN_TIMEOUT}
    Login Takealot Forgot Password    ${G_EMAIL}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    An email has been sent to your email address with further instructions    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Reset instructions have been sent to the entered email address    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Android > Login > Verify Auto-Login works - QASA-511
    [Tags]    QASA-511
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Close Application
    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Verify Text On Screen    Filter Orders    ${MIN_TIMEOUT}
    Click Back Android
    Click Back iOS    My Account
    Click Home
    Click Home WishList Only
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    My Lists    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    DEFAULT    ${MIN_TIMEOUT}
    Click Home Cart
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Cart    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    No items    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

