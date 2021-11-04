*** Settings ***
Default Tags      checkout
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Checkout > Delivery Address > Edit Address > Pin On Map > My Location - QASA-564
    [Tags]    QASA-564
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Edit Address
    Edit Delivery Address Postal Code    8006
    Click Save Address
    Click Confirmed Address
    Click Got It Thanks
    Add Map Street Address    12 Ridge Way
    Click Map Address Option
    Click Use This Location
    Close Application
    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Address
    Verify Text On Screen    12 Ridge Way    10s
    Verify Text On Screen    Green Point    2s
    Verify Text On Screen    Cape Town    2s
    Swipe Up    ${windowScroll}
    Verify Text On Screen    Western Cape    2s
    Verify Text On Screen    8006    2s
    [Teardown]    Tear Down

Apps > Checkout > Delivery Address > Last Used Address - QASA-604
    [Tags]    QASA-604
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Pen
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Verify Text On Screen    12 Ridge Way    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Checkout > Delivery > Address > Incomplete Address - QASA-592
    [Tags]    QASA-592
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Add Delivery Address
    Click Address Business
    Add Delivery Address Business My Acc No Name    Tester Residential    0723456778    13 Caro Road
    Verify Text On Screen    Please enter a business name    ${MIN_TIMEOUT}
    Edit Delivery Address Business My Acc    ABC
    Verify Text On Screen    ABC, 13 Caro Road, Robertsham, Johannesburg South, Gauteng, 2091    1s
    [Teardown]    Tear Down

Apps > Checkout > Collect > Subtitle change - QASA-596
    [Tags]    QASA-596
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Verify Text On Screen    70+ Takealot Pickup Points nationwide. Open 6 days a week    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Checkout > Collect > Pickup Points > No Last Used Pickup Point - QASA-562
    [Tags]    QASA-562
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Filter Province
    Click Gauteng Province
    Verify Pickup Points Gauteng
    Swipe Down    ${windowScroll}
    Swipe Down    ${windowScroll}
    Swipe Down    ${windowScroll}
    Swipe Down    ${windowScroll}
    Swipe Down    ${windowScroll}
    Click Filter Province
    Click All Available Provinces
    Verify All Pickup Points
    [Teardown]    Tear Down

Apps > Checkout > Collect > Pickup Points > Filter by Province - QASA-585
    [Tags]    QASA-585
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Filter Province
    Verify Text On Screen    Eastern Cape
    Verify Text On Screen    Free State
    Verify Text On Screen    Gauteng
    Verify Text On Screen    Kwa-Zulu-Natal
    Verify Text On Screen    Limpopo
    Verify Text On Screen    Mpumalanga
    Verify Text On Screen    North West
    Verify Text On Screen    Northern Cape
    Verify Text On Screen    Western Cape
    Click All Available Provinces
    Verify All Pickup Points
    [Teardown]    Tear Down

Apps > Checkout > Collect > Pickup Points List (First time user) - QASA-594
    [Tags]    QASA-594
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Close Application
    Start Application    ${False}
    Click Menu
    Click Menu Register
    Register Takealot    AutoTest    Test    ?    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Verify Text On Screen    Filter by Province:    ${MIN_TIMEOUT}
    Verify Text On Screen    All    1s
    Click Filter Province
    Click Western Cape Province
    Verify Text On Screen    Takealot Cape Town Warehouse Cape Town, Western Cape
    Close Application
    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Verify Text On Screen    Takealot Cape Town Warehouse Cape Town, Western Cape    ${MIN_TIMEOUT}
    [Teardown]    Tear Down
