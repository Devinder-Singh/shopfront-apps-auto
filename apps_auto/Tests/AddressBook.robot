*** Settings ***
Default Tags      address_book
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > My Account > Address Book > Delivery Address (with pre-saved addresses) - QASA-484
    [Tags]    QASA-484
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Delete Address
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Address successfully deleted    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    You don't have any addresses saved.    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Please add a Delivery Address    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    You don't have any addresses saved. Please add a Delivery Address    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > My Account > Address Book > Add Business Address > Street Suggestion - QASA-483
    [Tags]    QASA-483
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Add Delivery Address
    Click Address Business
    Add Delivery Address Business My Acc No Name    Tester Residential    0723456778    13 Caro Road
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Please enter a business name    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Please enter a business name    ${MIN_TIMEOUT}
    Swipe Down    ${windowScroll}
    Edit Delivery Address Business My Acc    ABC
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    New Delivery Address    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Tester Residential    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    BUSINESS    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    ABC, 13 Caro Road, Robertsham, Johannesburg South, Gauteng, 2091    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    0723456778    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Add Delivery Address    ${MIN_TIMEOUT}
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
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    ABC, 13 Caro Road, Robertsham, Johannesburg South, Gauteng, 2091    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    0723456778    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    ABC, 13 Caro Road, Robertsham, Johannesburg South, Gauteng, 2091    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    0723456778    1s
    [Teardown]    Tear Down

Apps > My Account > Address Book > Add Residential Address > Street Suggestion - QASA-481
    [Tags]    QASA-481
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Add Delivery Address
    Run Keyword If    '${PLATFORM_NAME}'=='ios'   Click Residential
    Add Delivery Address    Tester Residential    072345677    13 Caro Road
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Please enter a 10-digit SA phone number without country code, spaces, or special characters    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Please enter a 10-digit SA phone number without country code, spaces, or special characters    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Add Delivery Address
    Run Keyword If    '${PLATFORM_NAME}'=='ios'  Click Residential
    Add Delivery Address    Tester Residential    0723456778    13 Caro Road
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    New Delivery Address    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Tester Residential    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    RESIDENTIAL    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    13 Caro Road, Robertsham, Johannesburg South, Gauteng, 2091    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    0723456778    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Add Delivery Address    ${MIN_TIMEOUT}
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
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    13 Caro Road, Robertsham, Johannesburg South, Gauteng, 2091    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    0723456778    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    ABC, 13 Caro Road, Robertsham, Johannesburg South, Gauteng, 2091    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    0723456778    1s
    [Teardown]    Tear Down

Apps > My Account > Address Book > Delivery Address (with no saved addresses) - QASA-62
    [Tags]    QASA-62
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Delete Address
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Address successfully deleted    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    You don't have any addresses saved.    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Please add a Delivery Address    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    You don't have any addresses saved. Please add a Delivery Address    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    You don't have any addresses saved.    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Please add a Delivery Address    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    You don't have any addresses saved. Please add a Delivery Address    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > My Account > Address Book > Delivery Address > Field Validations - QASA-61 / QASA-60
    [Tags]    QASA-61    QASA-60
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Delete Address
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Address successfully deleted    ${MIN_TIMEOUT}
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
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Add Delivery Address    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Tester Residential    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    BUSINESS    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    ABC, 13 Caro Road, Robertsham, Johannesburg South, Gauteng, 2091    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    0723456778    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Add Delivery Address    ${MIN_TIMEOUT}
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
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    ABC, 13 Caro Road, Robertsham, Johannesburg South, Gauteng, 2091    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    0723456778    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    ABC, 13 Caro Road, Robertsham, Johannesburg South, Gauteng, 2091    ${MIN_TIMEOUT}
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
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    ABC, 13 Caro Road, Robertsham, Johannesburg South, Gauteng, 8007    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    0723456778    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    ABC, 13 Caro Road, Robertsham, Johannesburg South, Gauteng, 8007    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    0723456778    1s
    [Teardown]    Tear Down

Apps > My Account > Address Book > Edit Address > Pin On Map (Outside SA) - QASA-59
    [Tags]    QASA-59
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
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
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    12 Ridge Way, Green Point, Cape Town, Western Cape, 8007    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    12 Ridge Way, Green Point, Cape Town, Western Cape, 8007    ${MIN_TIMEOUT}
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
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    12 Ridge Way, Green Point, Cape Town, Western Cape, 8007    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    12 Ridge Way, Green Point, Cape Town, Western Cape, 8007    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > My Account > Address Book > Edit Address > Street Corrections (Residential) - QASA-482
    [Tags]    QASA-482
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
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
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    12 Ridge Way, Green Point, Cape Town, Western Cape, 8007    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    12 Ridge Way, Green Point, Cape Town, Western Cape, 8007    ${MIN_TIMEOUT}
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
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    12 Ridge Way, Green Point, Cape Town, Western Cape, 8007    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    12 Ridge Way, Green Point, Cape Town, Western Cape, 8007    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > My Account > Address Book > Edit Address > Pin On Map - QASA-480
    [Tags]    QASA-480
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Edit Address Business
    Edit Delivery Address Postal Code My Acc    8007
    Click Save Address
    Edit Delivery Address Confirm Address My Acc
    Click Address Got It Thanks
    # Fix edit delivery pin on Map
    Edit Delivery Address On Map My Acc    12 Ridge Way
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    12 Ridge Way, Green Point, Cape Town, Western Cape, 8007    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    12 Ridge Way, Green Point, Cape Town, Western Cape, 8007    ${MIN_TIMEOUT}
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
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    12 Ridge Way, Green Point, Cape Town, Gauteng, 8007    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    12 Ridge Way, Green Point, Cape Town, Gauteng, 8007    ${MIN_TIMEOUT}
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
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    12 Ridge Way, Green Point, Cape Town, Gauteng, 8007    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    12 Ridge Way, Green Point, Cape Town, Gauteng, 8007    ${MIN_TIMEOUT}
    [Teardown]    Tear Down
