*** Settings ***
Default Tags      personal_details
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Personal Details Parity > Update Personal Details - Mobile Number - QASA-239
    [Tags]    QASA-239
    [Setup]    Start Application    ${False}
    Click Menu
    Click Menu Register
    Register Takealot    AutoTest    Test    ?    ${G_PASSWORD}
    Click Home
    Click Menu iOS
    Click Menu My Account
    Click Menu Personal Detail
    Click Why Add Personal Detail Mobile
    Verify Text On Screen    Why add a mobile number?    10s
    Verify Text On Screen    We will use this number to provide order status notifications via SMS    5s
    [Teardown]    Tear Down

Apps > Personal Details Parity > Update Personal Details - Edit First & Last Name - QASA-486
    [Tags]    QASA-486
    [Setup]    Start Application
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Personal Detail
    Update Personal Detail Name    AutoTester
#    Click Menu Personal Detail
    Update Personal Detail LastName    Tester
#    Click Menu Personal Detail
#    Click Back Screen
#    Click Menu Personal Detail
#    Update Personal Detail LastName    Tester
    Clear Personal Detail
    Verify Text On Screen    Please enter your first name    5s
    Verify Text On Screen    Please enter your last name    1s
    [Teardown]    Tear Down

Apps > Personal Details Parity > Update Personal Details - Mobile Number - QASA-485
    [Tags]    QASA-485
    [Setup]    Start Application
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Personal Detail
    Update Personal Detail Mobile    662327661
#    Click Menu Personal Detail
    Clear Personal Detail Mobile
    Verify Text On Screen    Please enter a valid mobile number    5s
    [Teardown]    Tear Down

Apps > Personal Details Parity > Update Personal Details - Password and Reset Password - QASA-492
    [Tags]    QASA-492
    [Setup]    Start Application
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Personal Detail
    Click Personal Details Password
    Update Personal Detail Invalid Password    Abcd2200    Abcd2300    Abcd200
    Verify Text On Screen    Passwords do not match    ${MIN_TIMEOUT}
    Update Personal Detail Invalid Password    Abcd2200    Abc2    Abc2
    Verify Text On Screen    Password must be at least 5 characters long    ${MIN_TIMEOUT}
    Click Back Android
    Click Back iOS    Personal Details
    Update Personal Detail Password    t@ke@!ot1234    Abcd2200
    Update Personal Detail Password    Abcd2200    t@ke@!ot1234
    Verify Text On Screen    Your password has been successfully updated    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Personal Details Parity > Update Personal Details - Business Details - QASA-491
    [Tags]    QASA-491
    [Setup]    Start Application    ${False}
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Personal Detail
    Click Why Add Personal Detail Business Detail
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Business Details    10s
    Verify Text On Screen    Why add business details?    10s
    Verify Text On Screen    Your business name and VAT number will be added to order invoices    1s
    [Teardown]    Tear Down

Apps > Personal Details Parity > Update Personal Details - Email Address - QASA-490
    [Tags]    QASA-490
    [Setup]    Start Application
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Personal Detail
    Update Personal Detail Email    testM1@take2.co.za    Abcd2201
    Verify Text On Screen    Incorrect password    ${MIN_TIMEOUT}
    Click Back Android
    Click Back iOS    Personal Details
    Get New Email Address
    Update Personal Detail Email    ${new_email_address}    t@ke@!ot1234
    Verify Text On Screen    Your email address has been successfully updated    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Personal Details Parity > Update Personal Details - Add/Edit Business Name & VAT - QASA-489
    [Tags]    QASA-489
    [Setup]    Start Application
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Personal Detail
    Update Personal Detail Business    TestBusiness    12345
    Verify Text On Screen    Your business details have been successfully updated    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Personal Details Parity > Update Personal Details - Email Address Field Validation - QASA-488
    [Tags]    QASA-488
    [Setup]    Start Application
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Personal Detail
    Update Personal Detail Email    ${G_EMAIL}    ${G_PASSWORD}
    Verify Text On Screen    An account already exists with the email ${G_EMAIL}    ${MIN_TIMEOUT}
    Click Back Android
    Click Back iOS    Personal Details
    Update Personal Detail Invalid Email    testM2@take2.co.za    testM1@take2.co.za    ${G_PASSWORD}
    Verify Text On Screen    Email addresses do not match    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Personal Details Parity > Update Personal Details - Add/Edit Mobile Number - QASA-487
    [Tags]    QASA-487
    [Setup]    Start Application
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Personal Detail
    Click Personal Detail Mobile
    Verify Element On Screen    ${lblPersonalDetailMobileCC}    10s
    Verify Text On Screen    ZA (+27)    1s
    Click Back Android
    Click Back iOS    Personal Details
    Update Personal Detail Mobile    66232766
    Verify Text On Screen    Please enter a 9 or 10-digit SA mobile number    ${MIN_TIMEOUT}
    Click Back Android
    Click Back iOS    Personal Details
    Update Personal Detail Mobile Country Code    123
    Verify Text On Screen    Please enter a valid mobile number    ${MIN_TIMEOUT}
    Click Back Android
    Click Back iOS    Personal Details
    Update Personal Detail Mobile    0662327661
    Verify Text On Screen    Your mobile number has been successfully updated    ${MIN_TIMEOUT}
    [Teardown]    Tear Down