*** Settings ***
Default Tags      login
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Login > Success - QA-5320
    [Tags]    QA-5320
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    t@ke@!ot1234
    Verify Element On Screen    ${btnLogout}    5s
    [Teardown]    Tear Down

Apps > Login Validations - QA-5322
    [Tags]    QA-5322
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu Logout
    Click Menu
    Click Menu Login
    Login Takealot Only    ${EMPTY}    ${EMPTY}
    Verify Text On Screen    Please enter your email address    30s
    Verify Text On Screen    Please enter your password    1s
    Login Takealot Only    take2@yahoo.com    t@ke@!ot1234
    Verify Text On Screen Android    Invalid email or password. Please try again    30s
    Verify Text On Screen iOS    EMAIL ADDRESS    30s
    [Teardown]    Tear Down

Apps > Login Validations (Logged-Out User) - QA-8747
    [Tags]    QA-8747
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
    Verify Element On Screen    ${btnLogin}    30s
    Click Back Android
    Click Back iOS    Cancel
    Click Add To Wishlist Only
    Verify Element On Screen    ${btnLogin}    30s
    [Teardown]    Tear Down

Android > Register New User > Existing user validation - QA-5395
    [Tags]    QA-5395
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu Logout
    Click Menu
    Click Menu Register
    Register Takealot Unverify    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}
    Verify Text On Screen Android    Please enter your first name    30s
    Verify Text On Screen Android    Please enter your surname    1s
    Verify Text On Screen Android    Please enter your email address    1s
    Verify Text On Screen Android    Please enter your password    1s
    Verify Text On Screen Android    Please confirm your password    1s
    Verify Text On Screen iOS    Please provide your first name    30s
    Verify Text On Screen iOS    Please provide your last name    1s
    Verify Text On Screen iOS    Please enter your email address    1s
    Verify Text On Screen iOS    Please provide password    1s
    Verify Text On Screen iOS    Please confirm your password    1s
    Click Back Android
    Click Back iOS    Cancel
    Click Menu Register
    Register Takealot Unverify    AutoTest    Test    ${G_EMAIL}    t@ke@!ot1234
#    Verify Text On Screen    The email address is already registered on takealot    30s
    [Teardown]    Tear Down

Apps > Login > Forgot Password - QA-5319
    [Tags]    QA-5319
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu Logout
    Click Menu
    Click Menu Login
#    Login Takealot Forgot Password    take2@yahoo.com
#    Verify Text On Screen    We're sorry. We weren't able to identify you given the information provided    30s
    Login Takealot Forgot Password    ${G_EMAIL}
    Verify Text On Screen Android    An email has been sent to your email address with further instructions    30s
    Verify Text On Screen iOS    Reset instructions have been sent to the entered email address    30s
    [Teardown]    Tear Down

Apps > Android > Login > Verify Auto-Login works - QA-5316
    [Tags]    QA-5316
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Close Application
    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Verify Text On Screen    Filter Orders    30s
    Click Back Android
    Click Back iOS    My Account
    Click Home
    Click Home WishList Only
    Verify Text On Screen Android    My Lists    30s
    Verify Text On Screen iOS    DEFAULT    30s
    Click Home Cart
    Verify Text On Screen Android    Cart    30s
    Verify Text On Screen iOS    No items    30s
    [Teardown]    Tear Down

Apps > Android > Register New User - QA-8749
    [Tags]    QA-8749
    [Setup]    Start Application
    Click Menu
    Click Menu Register
    Register Takealot Unverify    AutoTest    Test    InvalidEmail    t@ke@!ot1234
    Verify Text On Screen    Please enter a valid email address    5s
    Click Cancel Screen
    Click Menu Register
    Register Takealot Unverify    AutoTest    ${EMPTY}    InvalidEmail@gmail.com    t@ke@!ot1234
    Verify Text On Screen Android    Please enter your surname    5s
    Verify Text On Screen iOS    Please provide your last name    5s
    Click Cancel Screen
    Click Menu Register
    Register Takealot    AutoTest    Test    ?    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu Logout
    Click Home
    Click Menu
    Click Menu Login
    Login Takealot    ${new_email_address}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Personal Detail
    Verify Text On Screen    AutoTest    30s
    Verify Text On Screen    Test    5s
    Verify Text On Screen    ${new_email_address}    5s
    Click Back Android
    Click Back iOS    My Account
    Click Home iOS
    Click Menu iOS
    Click Menu Logout
    Click Home
    Click Menu
    Click Menu Login
    Click Login Register
    Verify Element On Screen    ${txtRegFirstName}    30s
    [Teardown]    Tear Down
