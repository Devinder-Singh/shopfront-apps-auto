*** Settings ***
Default Tags      register
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Android > Register New User > Existing user validation - QASA-441
    [Tags]    QASA-441
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Menu
    Click Menu Logout
    Click Menu
    Click Menu Register
    Register Takealot Unverify    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Please enter your first name    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Please enter your surname    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Please enter your email address    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Please enter your password    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Please confirm your password    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Please provide your first name    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Please provide your last name    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Please enter your email address    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Please provide password    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Please confirm your password    1s
    Click Back Android
    Click Back iOS    Cancel
    Click Menu Register
    Register Takealot Unverify    AutoTest    Test    ${G_EMAIL}    ${G_PASSWORD}
#    Verify Text On Screen    The email address is already registered on takealot    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Android > Register New User - QASA-200
    [Tags]    QASA-200
    [Setup]    Start Application
    Click Menu
    Click Menu Register
    Register Takealot Unverify    AutoTest    Test    InvalidEmail    ${G_PASSWORD}
    Verify Text On Screen    Please enter a valid email address    5s
    Click Cancel Screen
    Click Menu Register
    Register Takealot Unverify    AutoTest    ${EMPTY}    InvalidEmail@gmail.com    ${G_PASSWORD}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Please enter your surname    5s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Please provide your last name    5s
    Click Cancel Screen
    Click Menu Register
    Register Takealot    AutoTest    Test    ?    ${G_PASSWORD}
    Click Home
    Click Menu
    Click Menu Logout
    Click Home
    Click Menu
    Click Menu Login
    Login Takealot    ${new_email_address}    ${G_PASSWORD}
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Personal Detail
    Verify Text On Screen    AutoTest    ${MIN_TIMEOUT}
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
    Verify Element On Screen    ${txtRegFirstName}    ${MIN_TIMEOUT}
    [Teardown]    Tear Down    