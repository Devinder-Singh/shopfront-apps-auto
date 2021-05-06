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
    Click Back My Account
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
