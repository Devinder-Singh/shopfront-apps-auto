*** Settings ***
Default Tags      myaccount
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Personal Details Parity > Update Personal Details - Mobile Number - QA-8462
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    testM2@take2.co.za    Abcd2200
    Click Home
    Click Menu My Account
    Click Menu Personal Detail
    Click Why Add Personal Detail Mobile
    Verify Text On Screen    Why add a mobile number?    10s
    Verify Text On Screen    We will use this number to provide order status notifications via SMS    5s
    [Teardown]    Tear Down

Apps > Personal Details Parity > Update Personal Details - Edit First & Last Name - QA-5341
    [Setup]    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Personal Detail
    Update Personal Detail Name    AutoTester
    Click Menu Personal Detail
    Update Personal Detail LastName    Tester
    Click Menu Personal Detail
    Click Back Screen
    Click Menu Personal Detail
    Update Personal Detail LastName    Tester
    Clear Personal Detail
    Verify Text On Screen    Please enter your first name    5s
    Verify Text On Screen    Please enter your last name    1s
    [Teardown]    Tear Down

Apps > Personal Details Parity > Update Personal Details - Mobile Number - QA-5342
    [Setup]    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Personal Detail
    Update Personal Detail Mobile    662327661
    Click Menu Personal Detail
    Clear Personal Detail Mobile
    Verify Text On Screen    Please enter a valid mobile number    5s
    [Teardown]    Tear Down

Apps > Personal Details Parity > Update Personal Details - Password and Reset Password - QA-5335
    [Setup]    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Personal Detail
    Click Personal Details Password
    Update Personal Detail Invalid Password    Abcd2200    Abcd2300    Abcd200
    Verify Text On Screen    Passwords do not match    30s
    Update Personal Detail Invalid Password    Abcd2200    Abc2    Abc2
    Verify Text On Screen    Password must be at least 5 characters long    30s
    Update Personal Detail Invalid Password    Abcd2200    Abcd2300    Abcd2300
    Update Personal Detail Password    Abcd2300    Abcd2200
    Verify Text On Screen    Your password has been successfukky updated    30s
    [Teardown]    Tear Down

Apps > Personal Details Parity > Update Personal Details - Business Details - QA-5336
    [Setup]    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Personal Detail
    Click Why Add Personal Detail Business Detail
    Verify Text On Screen    Business Details    10s
    Verify Text On Screen    Why add business details?    10s
    Verify Text On Screen    Your business name and VAT number will be added to order invoices    1s
    [Teardown]    Tear Down

Apps > Personal Details Parity > Update Personal Details - Email Address - QA-5337
    [Setup]    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Personal Detail
    Update Personal Detail Email    testM1@take2.co.za    Abcd2201
    Verify Text On Screen    Incorrect password    30s
    Click Back Screen
    Update Personal Detail Email    testM1@take2.co.za    Abcd2200
    Update Personal Detail Email    testM2@take2.co.za    Abcd2200
    Verify Text On Screen    Your email address has been successfully updated    30s
    [Teardown]    Tear Down

Apps > Personal Details Parity > Update Personal Details - Add/Edit Business Name & VAT - QA-5338
    [Setup]    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Personal Detail
    Update Personal Detail Business    TestBusiness    12345
    Verify Text On Screen    Your business details have been successfully updated    30s
    [Teardown]    Tear Down

Apps > Personal Details Parity > Update Personal Details - Email Address Field Validation - QA-5339
    [Setup]    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Personal Detail
    Update Personal Detail Email    testM2@take2.co.za    Abcd2200
    Verify Text On Screen    An account already exists with the email testM2@take2.co.za    30s
    Click Back Screen
    Update Personal Detail Email    testM2@take2.co.za    testM1@take2.co.za    Abcd2200
    Verify Text On Screen    Email addresses do not match    30s
    [Teardown]    Tear Down

Apps > Personal Details Parity > Update Personal Details - Add/Edit Mobile Number - QA-5340
    [Setup]    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Personal Detail
    Click Personal Detail Mobile
    Verify Element On Screen    ${lblPersonalDetailMobileCC}    30s
    Verify Text On Screen    ZA (+27)    1s
    Click Back Screen
    Update Personal Detail Mobile    66232766
    Verify Text On Screen    Please enter a 9 or 10-digit SA mobile number    30s
    Click Back Screen
    Update Personal Detail Mobile Country Code    123
    Verify Text On Screen    Please enter a valid mobile number    30s
    Click Back Screen
    Update Personal Detail Mobile    0662327661
    Verify Text On Screen    Your mobile number has been successfully updated    30s
    [Teardown]    Tear Down
