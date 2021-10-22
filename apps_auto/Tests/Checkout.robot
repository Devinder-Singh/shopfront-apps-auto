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
    Verify Text On Screen    12 Ridge Way    30s
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
    Verify Text On Screen Android    Please enter a business name    30s
    Verify Text On Screen iOS    Please enter a business name    30s
    Edit Delivery Address Business My Acc    ABC
    Verify Text On Screen Android    ABC, 13 Caro Road, Robertsham, Johannesburg South, Gauteng, 2091    1s
    Verify Text On Screen iOS    ABC, 13 Caro Road, Robertsham, Johannesburg South, Gauteng, 2091    1s
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
    Verify Text On Screen Android    70+ Takealot Pickup Points nationwide. Open 6 days a week    30s
    Verify Text On Screen iOS    70+ Takealot Pickup Points nationwide. Open 6 days a week    30s
    [Teardown]    Tear Down
