*** Settings ***
Default Tags      myaccount
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Personal Details Parity > Update Personal Details - Mobile Number - QA-8462
    [Tags]    QA-8462
    [Setup]    Start Application    ${False}
    Click Menu
    Click Menu Register
    Register Takealot    AutoTest    Test    ?    t@ke@!ot1234
    Click Home
    Click Menu iOS
    Click Menu My Account
    Click Menu Personal Detail
    Click Why Add Personal Detail Mobile
    Verify Text On Screen    Why add a mobile number?    10s
    Verify Text On Screen    We will use this number to provide order status notifications via SMS    5s
    [Teardown]    Tear Down

Apps > Personal Details Parity > Update Personal Details - Edit First & Last Name - QA-5341
    [Tags]    QA-5341
    [Setup]    Start Application
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
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

Apps > Personal Details Parity > Update Personal Details - Mobile Number - QA-5342
    [Tags]    QA-5342
    [Setup]    Start Application
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Personal Detail
    Update Personal Detail Mobile    662327661
#    Click Menu Personal Detail
    Clear Personal Detail Mobile
    Verify Text On Screen    Please enter a valid mobile number    5s
    [Teardown]    Tear Down

Apps > Personal Details Parity > Update Personal Details - Password and Reset Password - QA-5335
    [Tags]    QA-5335
    [Setup]    Start Application
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Personal Detail
    Click Personal Details Password
    Update Personal Detail Invalid Password    Abcd2200    Abcd2300    Abcd200
    Verify Text On Screen    Passwords do not match    30s
    Update Personal Detail Invalid Password    Abcd2200    Abc2    Abc2
    Verify Text On Screen    Password must be at least 5 characters long    30s
    Click Back Android
    Click Back iOS    Personal Details
    Update Personal Detail Password    t@ke@!ot1234    Abcd2200
    Update Personal Detail Password    Abcd2200    t@ke@!ot1234
    Verify Text On Screen    Your password has been successfully updated    30s
    [Teardown]    Tear Down

Apps > Personal Details Parity > Update Personal Details - Business Details - QA-5336
    [Tags]    QA-5336
    [Setup]    Start Application    ${False}
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Personal Detail
    Click Why Add Personal Detail Business Detail
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Business Details    10s
    Verify Text On Screen    Why add business details?    10s
    Verify Text On Screen    Your business name and VAT number will be added to order invoices    1s
    [Teardown]    Tear Down

Apps > Personal Details Parity > Update Personal Details - Email Address - QA-5337
    [Tags]    QA-5337
    [Setup]    Start Application
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Personal Detail
    Update Personal Detail Email    testM1@take2.co.za    Abcd2201
    Verify Text On Screen    Incorrect password    30s
    Click Back Android
    Click Back iOS    Personal Details
    Get New Email Address
    Update Personal Detail Email    ${new_email_address}    t@ke@!ot1234
    Verify Text On Screen    Your email address has been successfully updated    30s
    [Teardown]    Tear Down

Apps > Personal Details Parity > Update Personal Details - Add/Edit Business Name & VAT - QA-5338
    [Tags]    QA-5338
    [Setup]    Start Application
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Personal Detail
    Update Personal Detail Business    TestBusiness    12345
    Verify Text On Screen    Your business details have been successfully updated    30s
    [Teardown]    Tear Down

Apps > Personal Details Parity > Update Personal Details - Email Address Field Validation - QA-5339
    [Tags]    QA-5339
    [Setup]    Start Application
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Personal Detail
    Update Personal Detail Email    ${G_EMAIL}    t@ke@!ot1234
    Verify Text On Screen    An account already exists with the email ${G_EMAIL}    30s
    Click Back Android
    Click Back iOS    Personal Details
    Update Personal Detail Invalid Email    testM2@take2.co.za    testM1@take2.co.za    t@ke@!ot1234
    Verify Text On Screen    Email addresses do not match    30s
    [Teardown]    Tear Down

Apps > Personal Details Parity > Update Personal Details - Add/Edit Mobile Number - QA-5340
    [Tags]    QA-5340
    [Setup]    Start Application
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
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
    Verify Text On Screen    Please enter a 9 or 10-digit SA mobile number    30s
    Click Back Android
    Click Back iOS    Personal Details
    Update Personal Detail Mobile Country Code    123
    Verify Text On Screen    Please enter a valid mobile number    30s
    Click Back Android
    Click Back iOS    Personal Details
    Update Personal Detail Mobile    0662327661
    Verify Text On Screen    Your mobile number has been successfully updated    30s
    [Teardown]    Tear Down

Apps > My Account > Address Book > Delivery Address (with pre-saved addresses) - QA-5344
    [Tags]    QA-5344
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Delete Address
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Address successfully deleted    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    You don't have any addresses saved. Please add a Delivery Address    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    You don't have any addresses saved. Please add a Delivery Address    30s
    [Teardown]    Tear Down

Apps > My Account > Address Book > Add Business Address > Street Suggestion - QA-5345
    [Tags]    QA-5345
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Add Delivery Address
    Click Address Business
    Add Delivery Address Business My Acc No Name    Tester Residential    0723456778    13 Caro Road
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Please enter a business name    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Please enter a business name    30s
    Edit Delivery Address Business My Acc    ABC
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Add Delivery Address    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Tester Residential    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    BUSINESS    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    ABC, 13 Caro Road, Robertsham, Johannesburg South, Gauteng, 2091    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    0723456778    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Add Delivery Address    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Tester Residential    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    BUSINESS    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    ABC, 13 Caro Road, Robertsham, Johannesburg South, Gauteng, 2091    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    0723456778    1s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    ABC, 13 Caro Road, Robertsham, Johannesburg South, Gauteng, 2091    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    0723456778    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    ABC, 13 Caro Road, Robertsham, Johannesburg South, Gauteng, 2091    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    0723456778    1s
    [Teardown]    Tear Down

Apps > My Account > Address Book > Add Residential Address > Street Suggestion - QA-5347
    [Tags]    QA-5347
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Add Delivery Address
    Click Residential
    Add Delivery Address My Acc    Tester Residential    072345677    13 Caro Road
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Please enter a 10-digit SA phone number without country code, spaces, or special characters    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Please enter a 10-digit SA phone number without country code, spaces, or special characters    30s
    Close Application
    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Add Delivery Address
    Click Residential
    Add Delivery Address My Acc    Tester Residential    0723456778    13 Caro Road
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Add Delivery Address    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Tester Residential    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    RESIDENTIAL    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    ABC, 13 Caro Road, Robertsham, Johannesburg South, Gauteng, 2091    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    0723456778    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Add Delivery Address    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Tester Residential    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    RESIDENTIAL    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    ABC, 13 Caro Road, Robertsham, Johannesburg South, Gauteng, 2091    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    0723456778    1s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    ABC, 13 Caro Road, Robertsham, Johannesburg South, Gauteng, 2091    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    0723456778    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    ABC, 13 Caro Road, Robertsham, Johannesburg South, Gauteng, 2091    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    0723456778    1s
    [Teardown]    Tear Down

Apps > My Account > Address Book > Delivery Address (with no saved addresses) - QA-9733
    [Tags]    QA-9733
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Delete Address
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Address successfully deleted    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    You don't have any addresses saved. Please add a Delivery Address    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    You don't have any addresses saved. Please add a Delivery Address    30s
    Close Application
    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    You don't have any addresses saved. Please add a Delivery Address    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    You don't have any addresses saved. Please add a Delivery Address    30s
    [Teardown]    Tear Down

Apps > My Account > Address Book > Delivery Address > Field Validations - QA-9734 / QA-9735
    [Tags]    QA-9734    QA-9735
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Delete Address
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Address successfully deleted    30s
    Click Add Delivery Address
    Click Address Business
    Add Delivery Address Business My Acc No Name    ${EMPTY}    ${EMPTY}    ${EMPTY}
    Verify Text On Screen    Please enter the recipient's name    5s
    Verify Text On Screen    Please enter a 10-digit SA phone number without country code, spaces, or special characters    1s
    Verify Text On Screen    Please enter the street address    1s
    Verify Text On Screen    Please enter a business name    1s
    Swipe Up    ${windowScroll}
    Verify Text On Screen    Please enter the suburb    1s
    Verify Text On Screen    Please enter the city    1s
    Verify Text On Screen    Please select a province    1s
    Swipe Up    ${windowScroll}
    Verify Text On Screen    Please enter a postal code    1s
    Close Application
    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Add Delivery Address
    Click Address Business
    Add Delivery Address Business My Acc No Name    Tester Residential    0723456778    13 Caro Road
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Please enter a business name    5s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Please enter a business name    5s
    Close Application
    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Add Delivery Address
    Click Address Business
    Add Delivery Address Business My Acc    Tester Residential    0723456778    13 Caro Road
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Add Delivery Address    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Tester Residential    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    BUSINESS    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    ABC, 13 Caro Road, Robertsham, Johannesburg South, Gauteng, 2091    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    0723456778    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Add Delivery Address    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Tester Residential    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    BUSINESS    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    ABC, 13 Caro Road, Robertsham, Johannesburg South, Gauteng, 2091    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    0723456778    1s
    Close Application
    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    ABC, 13 Caro Road, Robertsham, Johannesburg South, Gauteng, 2091    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    0723456778    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    ABC, 13 Caro Road, Robertsham, Johannesburg South, Gauteng, 2091    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    0723456778    1s
    Click Edit Address Business
    Edit Delivery Address Business    ${EMPTY}
    Click Save Address
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Please enter a business name    5s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Please enter a business name    5s
    Swipe Down    ${windowScroll}
    Click Cancel Screen
    Click Edit Address Business
    Edit Delivery Address Postal Code    ${EMPTY}
    Click Save Address
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Please enter a postal code    5s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Please enter a postal code    5s
    Swipe Down    ${windowScroll}
    Click Cancel Screen
    Click Edit Address Business
    Edit Delivery Address Postal Code    8007
    Click Save Address
    Edit Delivery Address Confirm Address
    Click Address Got It Thanks
    Edit Delivery Address On Map    13 Caro Road
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    ABC, 13 Caro Road, Robertsham, Johannesburg South, Gauteng, 8007    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    0723456778    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    ABC, 13 Caro Road, Robertsham, Johannesburg South, Gauteng, 8007    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    0723456778    1s
    [Teardown]    Tear Down

Apps > My Account > Address Book > Edit Address > Pin On Map (Outside SA) - QA-9736
    [Tags]    QA-9736
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Edit Address Business
    Edit Delivery Address Postal Code My Acc    8007
    Click Save Address
    Edit Delivery Address Confirm Address My Acc
    Click Address Got It Thanks
    Edit Delivery Address On Map My Acc    12 Ridge Way
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    12 Ridge Way, Green Point, Cape Town, Western Cape, 8007    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    12 Ridge Way, Green Point, Cape Town, Western Cape, 8007    30s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    12 Ridge Way, Green Point, Cape Town, Western Cape, 8007    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    12 Ridge Way, Green Point, Cape Town, Western Cape, 8007    30s
    [Teardown]    Tear Down

Apps > My Account > Address Book > Edit Address > Street Corrections (Residential) - QA-5346
    [Tags]    QA-5346
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Edit Address Business
    Edit Delivery Address My Acc Empty
    Click Save Address
    Verify Text On Screen    Please enter the recipient's name    5s
    Verify Text On Screen    Please enter a 10-digit SA phone number without country code, spaces, or special characters    1s
    Swipe Up    ${windowScroll}
    Verify Text On Screen    Please enter the suburb    1s
    Verify Text On Screen    Please enter the city    1s
    Click Back Android
    Click Back iOS    Back
    Click Edit Address Business
    Edit Delivery Address Postal Code My Acc    8007
    Click Save Address
    Edit Delivery Address Confirm Address My Acc
    Click Address Got It Thanks
    Edit Delivery Address On Map My Acc    12 Ridge Way
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    12 Ridge Way, Green Point, Cape Town, Western Cape, 8007    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    12 Ridge Way, Green Point, Cape Town, Western Cape, 8007    30s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    12 Ridge Way, Green Point, Cape Town, Western Cape, 8007    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    12 Ridge Way, Green Point, Cape Town, Western Cape, 8007    30s
    [Teardown]    Tear Down

Apps > My Account > Address Book > Edit Address > Pin On Map - QA-5348
    [Tags]    QA-5348
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Edit Address Business
    Edit Delivery Address Postal Code My Acc    8007
    Click Save Address
    Edit Delivery Address Confirm Address My Acc
    Click Address Got It Thanks
    Edit Delivery Address On Map My Acc    12 Ridge Way
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    12 Ridge Way, Green Point, Cape Town, Western Cape, 8007    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    12 Ridge Way, Green Point, Cape Town, Western Cape, 8007    30s
    Close Application
    Start Application    ${False}
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Edit Address Business
    Edit Delivery Address Suburb My Acc
    Click Save Address
    Edit Delivery Address Confirm Address My Acc Suburb
    Click Address Got It Thanks
    Edit Delivery Address On Map My Acc Suburb    13 Caro Road
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    12 Ridge Way, Green Point, Cape Town, Gauteng, 8007    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    12 Ridge Way, Green Point, Cape Town, Gauteng, 8007    30s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    12 Ridge Way, Green Point, Cape Town, Gauteng, 8007    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    12 Ridge Way, Green Point, Cape Town, Gauteng, 8007    30s
    [Teardown]    Tear Down
