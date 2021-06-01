*** Settings ***
Default Tags      login
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Login > Success - QA-5320
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    take2Automation+201905213934@gmail.com    t@ke@!ot1234
    Verify Element On Screen    ${btnLogout}    5s
    [Teardown]    Tear Down

Apps > Login Validations - QA-5322
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    take2Automation+201905213934@gmail.com    t@ke@!ot1234
    Click Home
    Click Menu Logout
    Click Menu
    Click Menu Login
    Login Takealot Only    take2Automatio+201905213934@gmail.com    t@ke@!ot1234
    Verify Text On Screen    Invalid email or password. Please try again    30s
    Login Takealot Only    take2Automatio+201905213934@gmail.com    t@ke@!ot123
    Verify Text On Screen    Invalid email or password. Please try again    30s
    Login Takealot Only    ${EMPTY}    ${EMPTY}
    Verify Text On Screen    Please enter your email address    30s
    Verify Text On Screen    Please enter your password    1s
    [Teardown]    Tear Down

Apps > Login Validations (Logged-Out User) - QA-8747
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Verify Element On Screen    ${btnLogin}    30s
    Click Back Screen
    Click Add To Wishlist Only
    Verify Element On Screen    ${btnLogin}    30s
    [Teardown]    Tear Down

Android > Register New User > Existing user validation - QA-5395
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    take2Automation+201905213934@gmail.com    t@ke@!ot1234
    Click Home
    Click Menu Logout
    Click Menu
    Click Menu Register
    Register Takealot    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}
    Verify Text On Screen    Please enter your first name    30s
    Verify Text On Screen    Please enter your surname    1s
    Verify Text On Screen    Please enter your email address    1s
    Verify Text On Screen    Please enter your password    1s
    Verify Text On Screen    Please confirm your password    1s
    Click Back Android
    Click Back iOS    My Account
    Click Menu Register
    Register Takealot    AutoTest    Test    take2Automation+201905213934@gmail.com    t@ke@!ot1234
    Verify Text On Screen    The email address is already registered on takealot    30s
    [Teardown]    Tear Down

Apps > Login > Forgot Password - QA-5319
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    take2Automation+201905213934@gmail.com    t@ke@!ot1234
    Click Home
    Click Menu Logout
    Click Menu
    Click Menu Login
    Login Takealot Forgot Password    take2Automatio+201905213934@gmail.com
    Verify Text On Screen    We're sorry. We weren't able to identify you given the information provided    30s
    Login Takealot Forgot Password    take2Automation+201905213934@gmail.com
    Verify Text On Screen    An email has been sent to your email address with further instructions    30s
    [Teardown]    Tear Down

Apps > Android > Login > Verify Auto-Login works - QA-5316
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    take2Automation+201905213940@gmail.com    t@ke@!ot1234
    Click Home
    Tear Down
    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Verify Text On Screen    Filter Orders    30s
    Click Back Android
    Click Back iOS    My Account
    Click Home
    Click Home WishList
    Verify Text On Screen Android    My Lists    30s
    Click Back Android
    Click Home Cart
    Verify Text On Screen Android    Cart    30s
    [Teardown]    Tear Down

Apps > Android > Register New User - QA-8749
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
    Click Menu
    Click Menu iOS
    Click Menu Logout
    Click Menu iOS
    Click Menu Login
    Login Takealot    ${new_email_address}    t@ke@!ot1234
    Click Menu
    Click Menu iOS
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
    Click Menu
    Click Menu Login
    Click Login Register
    Verify Element On Screen    ${txtRegFirstName}    30s
    [Teardown]    Tear Down
