*** Settings ***
Default Tags      checkout_regression
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps - Checkout - Delivery Methods - QASA-593
    [Tags]    QASA-593
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    Pencil Case
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Verify Delivery Text    Courier delivery to your door
    Verify Delivery Text    70+ Takealot Pickup Points nationwide. Open 6 days a week
    [Teardown]    Tear Down

Apps - Checkout - Delivery Methods - Digital Only - QASA-114
    [Tags]    QASA-114
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    airtim
    Click Variant Product from API
    Click Product Variant From API    2
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Continue Digital Item
    Click Donate No Thanks
    Click Add Payment Voucher
    Enter Payment Voucher Code
    Click Apply Payment Voucher
    Click Back Payment Voucher
    Verify Element On Screen    ${rdoPaymentUseMyCredit}    ${MIN_TIMEOUT}
    Click Payment Confirm Order
    Click Track Order Detail
    Swipe Up    ${windowScroll}
    Verify Element On Screen    ${txtDigitalDeliveryMethod}    ${MIN_TIMEOUT}
    Verify Element On Screen    ${txtDigitalShippingAddress}    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps - Checkout - Delivery Methods - Digital Items 03 - QASA-115
    [Tags]    QASA-115
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Verify Delivery Text    Courier delivery to your door
    Verify Delivery Text    70+ Takealot Pickup Points nationwide. Open 6 days a week
    Click Collect
    Click Pickup Point
    [Teardown]    Tear Down

Apps > Checkout > Collect > Liquor Item - QASA-588
    [Tags]    QASA-588
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    johnny
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Verify Age
    Verify Text On Screen    Sorry, some items in your cart are not eligible for collection    ${MIN_TIMEOUT}
    Click Collect Not Available
    Verify Delivery Text Not    Takealot Pickup Points
    [Teardown]    Tear Down

Apps - Checkout - Delivery Methods - Digital and Physical Item and Collect 04 - QASA-117
    [Tags]    QASA-117
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    airtim
    Click Variant Product from API
    Click Product Variant From API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Verify Element On Screen    ${txtDigitalItem}    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    montego
    Click Variant Product from API
    Click Product Variant From API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Verify Element On Screen    ${btnDelivery}    ${MIN_TIMEOUT}
    Verify Element On Screen    ${btnCollect}    ${MIN_TIMEOUT}
    Click Collect
    Click Pickup Point
    [Teardown]    Tear Down

Checkout - Collect - Add Delivery and Digital Items - QASA-589
    [Tags]    QASA-589
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    airtim
    Click Variant Product from API
    Click Product Variant From API
    Click Add To Cart
    Click Go To Cart
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    montego
    Click Variant Product from API
    Click Product Variant From API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Verify Pickup Point
    [Teardown]    Tear Down

Checkout - Collect - Add Only Delivery Items - QASA-574
    [Tags]    QASA-574
    [Setup]    Start Application
    Clear Environment
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    montego
    Click Variant Product from API
    Click Product Variant From API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Verify Pickup Point
    [Teardown]    Tear Down

Checkout - Collect - White Goods - QASA-580
    [Tags]    QASA-580
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    fridg
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Verify Delivery Text    Sorry, some items in your cart are not eligible for collection
    Click Collect Not Available
    Verify Delivery Text Not    Takealot Pickup Points
    [Teardown]    Tear Down

Checkout - Age Verification - QASA-576
    [Tags]    QASA-576
    [Setup]    Start Application
    Clear Environment
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    johnny
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Select Age
    Click Age Selector OK Button
    Click Verify Age
    Verify Age Text    The date of birth you entered indicates that you are under the age of 18. We are not permitted to sell liquor and/or selected vaping products to you. Please remove all liquor and/or selected vaping products from your cart to proceed.
    [Teardown]    Tear Down

Checkout > Delivery Address > Saved Addresses - QASA-616 
    [Tags]    QASA-616
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Delete Address
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Verify Delivery Address Text    You don't have any addresses saved. Please add a Delivery Address
    Click Add Delivery Address
    Click Residential
    Add Delivery Address    Tester Residential    0723456778    13 Caro Road
    Click Any Delivery
    [Teardown]    Tear Down

Checkout - Delivery Address - General 03 - QASA-112
    [Tags]    QASA-112
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    [Teardown]    Tear Down

Checkout - Delivery Address - General 04 - QASA-111
    [Tags]    QASA-111
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Edit Address
    Swipe Up    ${windowScroll}
    Edit Delivery Address Mobile Number    0897665665
    Swipe Up    ${windowScroll}
    Swipe Up    ${windowScroll}
    Click Save Address    
    Click Address
    [Teardown]    Tear Down

Checkout - Delivery Address - Edit Address - Street Correction - QASA-610
    [Tags]    QASA-610
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Edit Address
    Swipe Up    ${windowScroll}
    Verify Element On Screen    ${btnSaveAddress}    15s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    RECIPIENT NAME    2s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    RECIPIENT MOBILE NUMBER    2s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    STREET ADDRESS    2s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    SUBURB    2s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    CITY / TOWN    2s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    PROVINCE    2s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    POSTAL CODE    2s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    COMPLEX / BUILDING (OPTIONAL)    2s
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Recipient Name    2s
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Recipient Mobile Number    2s
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Street Address    2s
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Suburb    2s
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    City / Town    2s
#    Swipe Up    ${windowScroll}
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Province    2s
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Postal Code    2s
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Complex / Building (Optional)    2s
#    Swipe Down    ${windowScroll}
    Edit Delivery Address Mobile Number    089766566
    Click Element    ${txtRecipientStreet}
    Click Element    ${txtRecipientMobile}
    Swipe Up    ${windowScroll}
    Edit Delivery Address Postal Code    101
    Swipe Up    ${windowScroll}
    Swipe Up    ${windowScroll}
    Click Save Address
    Verify Text On Screen    Please enter a 10-digit SA phone number without country code, spaces, or special characters    5s
    Swipe Up    ${windowScroll}
    Verify Text On Screen    Please enter a 4 digit postal code    2s
    Close Application
    Start Application    ${False}
    Clear Environment
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Edit Address
    Swipe Up    ${windowScroll}
    Edit Delivery Address Mobile Number    0820000000
    Click Element    ${txtRecipientStreet}
    Click Element    ${txtRecipientMobile}
    Swipe Up    ${windowScroll}
    Edit Delivery Address Postal Code    8006
    Swipe Up    ${windowScroll}
    Swipe Up    ${windowScroll}
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
    Verify Text On Screen    0820000000    10s
    Verify Text On Screen    12 Ridge Way    2s
    Verify Text On Screen    Green Point    2s
    Verify Text On Screen    Cape Town    2s
    Swipe Up    ${windowScroll}
    Verify Text On Screen    Western Cape    2s
    Verify Text On Screen    8006    2s
    [Teardown]    Tear Down

Checkout - Delivery Address - Add Residential Address - Street Suggestion - QASA-603
    [Tags]    QASA-603
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Add Delivery Address
    Click Residential
    Add Delivery Address    Tester Residential    0723456778    13 Caro Road
    Click Any Delivery
    Get Address Coordinates
    [Teardown]    Tear Down

#TODO
Checkout - Delivery Address - Address Form Validation - QASA-600
    [Tags]    QASA-600
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Address
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    COMPLEX / BUILDING (OPTIONAL)    10s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Complex / Building (Optional)    10s
    Verify Text On Screen    Complex or Building Name, unit number or floor    10s
    Click Address Mobile Question
    Verify Text On Screen    Enter the mobile number of the person receiving the delivery, so we can send delivery updates via SMS    10s
    Click Address Got It Thanks
    Swipe Up    ${windowScroll}
    Click Address Province
    Verify Text On Screen    Eastern Cape    10s
    Verify Text On Screen    Free State    2s
    Verify Text On Screen    Gauteng    2s
    Verify Text On Screen    KwaZulu-Natal    2s
    Verify Text On Screen    Limpopo    2s
    Verify Text On Screen    Mpumalanga    2s
    Verify Text On Screen    Northern Cape    2s
    Verify Text On Screen    North West    2s
    Verify Text On Screen    Western Cape    2s
    Close Application
    Start Application
    Clear Environment
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Add Delivery Address
    Click Residential
    Swipe Up    ${windowScroll}
    Swipe Up    ${windowScroll}
    Click Save Address
    Verify Text On Screen    Please enter the recipient's name    10s
    Verify Text On Screen    Please enter a 10-digit SA phone number without country code, spaces, or special characters    2s
    Verify Text On Screen    Please enter the street address    2s
    Verify Text On Screen    Please enter the suburb    2s
    Swipe Up    ${windowScroll}
    Verify Text On Screen    Please enter the city    2s
    Verify Text On Screen    Please select a province    2s
    Verify Text On Screen    Please enter a postal code    2s
#    Edit Delivery Address Street My Acc    PO Box 3456
#    Verify Text On Screen    PO Box addresses are not allowed    10s
    Close Application
    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Add Delivery Address
    Click Residential
    Add Delivery Address    ${EMPTY}    %^    &*
    Verify Text On Screen    Please enter the recipient's name    10s
    Verify Text On Screen    Please enter a 10-digit SA phone number without country code, spaces, or special characters    2s
#    Verify Text On Screen    Please enter the street address    2s
    Close Application
    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Add Delivery Address
    Click Residential
    Verify Element On Screen    ${btnSaveAddress}    ${MIN_TIMEOUT}
    Swipe Up    ${windowScroll}
#    Edit Delivery Address Complex    AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
    Edit Delivery Address City    AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
    Edit Delivery Address Suburb    AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
    Edit Delivery Address Street My Acc Only    AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
    Swipe Up    ${windowScroll}
    Click Save Address
#    Verify Text On Screen    Maximum length for street is 64 characters    10s
#    Verify Text On Screen    Maximum length for complex details is 128 characters    2s
#    Verify Text On Screen    Maximum length for city is 64 characters    2s
#    Verify Text On Screen    Maximum length for suburb is 64 characters    2s
    Close Application
    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Add Delivery Address
    Click Address Business
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    BUSINESS NAME    10s
    Edit Delivery Address Business My Acc    AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
    Click Save Address
#    Verify Text On Screen    Maximum length for business name is 64 characters    10s
    [Teardown]    Tear Down

Checkout - Delivery Address - Street Suggestion - QASA-582
    [Tags]    QASA-582
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
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
    Add Delivery Address    Tester Residential    072345677    13 Caro Road
    Verify Text On Screen    Please enter a 10-digit SA phone number without country code, spaces, or special characters    10s
    Verify Text On Screen    Please enter a business name    2s
#    Edit Delivery Address Business    AutoBusiness
#    Edit Delivery Address Mobile Number    0723456778
#    Edit Delivery Address Street    13 Caro Road
#    Click Save Address
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
    Click Add Delivery Address
    Click Address Business
    Edit Delivery Address Business    TestBusiness
    Add Delivery Address    Tester Residential    0723456778    13 Caro Road
    Click Any Delivery
    [Teardown]    Tear Down

Checkout - Delivery Address - Pin on Map - QASA-570
    [Tags]    QASA-570
    [Setup]    Start Application
    Clear Environment
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
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
    Click Confirm Address Partially    partialAddress=12 Ridge Way, Green Point, Cape Town,
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

Apps > Checkout > Collect > Select Pickup Point Info button - QASA-565
    [Tags]    QASA-565
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point Info
    Click Select Pickup Point
    Click Any Delivery
    [Teardown]    Tear Down

Apps > Checkout > Collect > Pickup Point INFO - QASA-609
    [Tags]    QASA-609
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point Info
    Verify Text On Screen    Block B, Montague Park Business Estate, Topaz Boulevard, Montague Gardens, Cape Town, 7441    15s
    Verify Text On Screen    We’ll send you an email once your order is ready for collection    2s
    Verify Text On Screen    Business Hours    2s
    Verify Text On Screen    (Next 7 Days)    2s
    Verify Text On Screen    Thursday    2s
    Verify Text On Screen    Friday    2s
    Verify Text On Screen    Saturday    2s
    Swipe Up    ${windowScroll}
    Verify Text On Screen    Sunday    2s
    Verify Text On Screen    Monday    2s
    Verify Text On Screen    Tuesday    2s
    Verify Text On Screen    Wednesday    2s
    Verify Text On Screen    08h00 - 18h00    2s
    Verify Text On Screen    08h00 - 13h00    2s
    Verify Text On Screen    08h00 - 15h00    2s
    Close Application
    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Filter Province
    Click Gauteng Province
    Click Pickup Point Info
    Verify Text On Screen    Big Bird Petroport, N1 Highway, Midrand, Johannesburg, 1685    15s
    Verify Text On Screen    We’ll send you an SMS or email once your order is ready for collection. You’ll then have 7 days to collect your order    2s
    Verify Text On Screen    Business Hours    2s
    Verify Text On Screen    (Next 7 Days)    2s
    Verify Text On Screen    Thursday    2s
    Verify Text On Screen    Friday    2s
    Verify Text On Screen    Saturday    2s
    Swipe Up    ${windowScroll}
    Verify Text On Screen    Sunday    2s
    Verify Text On Screen    Monday    2s
    Verify Text On Screen    Tuesday    2s
    Verify Text On Screen    Wednesday    2s
    Verify Text On Screen    10h00 - 17h00    2s
    Verify Text On Screen    11h00 - 17h00    2s
    [Teardown]    Tear Down

Apps > Checkout > Collect > Pickup Points List - QASA-583
    [Tags]    QASA-583
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
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
    Click Filter Province
    Click All Available Provinces
    Verify All Pickup Points
#    Verify Pickup Points Gauteng
#    Verify Pickup Point
#    Verify Collect Address Text    LAST USED
    Swipe Down    ${windowScroll}
    Swipe Down    ${windowScroll}
    Swipe Down    ${windowScroll}
    Swipe Down    ${windowScroll}
    Swipe Down    ${windowScroll}
    Click Filter Province
    Click Western Cape Province
    Click Pickup Point Info
    Click Select Pickup Point
    Click Any Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment
    Close Application
    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Click Order Awaiting Payment
    Swipe Up    ${windowScroll}
    Swipe Up    ${windowScroll}
    Verify Order Detail Text    Takealot Cape Town Warehouse Pickup Point
    [Teardown]    Tear Down

Apps > Checkout > Collect > Add Only Digital Item - QASA-556
    [Tags]    QASA-556
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    airtim
    Click Variant Product from API
    Click Product Variant From API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Continue Digital Item
    Click Donate No Thanks
    [Teardown]    Tear Down

Apps > Checkout > Collect > Shipping Options (Standard) - QASA-577
    [Tags]    QASA-577
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Verify Text On Screen    Standard Collect    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Checkout > Collect > Shipping Options > Free (Order above 450) - QASA-581
    [Tags]    QASA-581
    [Setup]    Start Application
    Clear Environment
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    chair office
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Filter Province
    Click Western Cape Province
    Run Keyword If    '${PLATFORM_NAME}'=='ios'   Click Pickup Point    Brackenfell Cape Town, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='android'   Click Pickup Point    Brackenfell 
    Run Keyword If    '${PLATFORM_NAME}'=='ios'   Verify Text On Screen    Free    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'   Verify Text On Screen    FREE    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Checkout > Collect > Shipping Options > R25 (Order below 450) - QASA-614
    [Tags]    QASA-614
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Filter Province
    Click Western Cape Province
    Run Keyword If    '${PLATFORM_NAME}'=='ios'   Click Pickup Point    Brackenfell Cape Town, Western Cape
    Run Keyword If    '${PLATFORM_NAME}'=='android'   Click Pickup Point    Brackenfell 
    Verify Text On Screen    25    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Checkout > Collect > Shipping Options > No Fee (CapeTown DC) - QASA-563
    [Tags]    QASA-563
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pen
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Filter Province
    Click Western Cape Province
    Click Pickup Point
    Run Keyword If    '${PLATFORM_NAME}'=='ios'   Verify Text On Screen    Free    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'   Verify Text On Screen    FREE    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Checkout > Collect > Delivery Options (Collect Options) - QASA-597
    [Tags]    QASA-597
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    zagg slim book
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Verify Delivery Options Text    Standard Collect
    Verify Delivery Options Text    Why the wait?
    Click Any Delivery
    Click Donate No Thanks
    Verify Payment Text    ORDER REVIEW
    Verify Payment Text    Delivery Method
    Verify Payment Text    Pickup Point
    Click Change Payment Pickup Point
    Click Pickup Point
    Click Any Delivery
    Click Change Payment Delivery Method
    Click Collect
    [Teardown]    Tear Down

Apps > Checkout > Collect > Tablet > Change Delivery Method - QASA-569
    [Tags]    QASA-569
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    slim book
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Click Any Delivery
    Click Donate No Thanks
    Wait Until Element Is Visible    ${btnChange}    ${MIN_TIMEOUT}
    Scroll To Text    ORDER REVIEW
    Swipe Down    ${windowScroll}
    Swipe Down    ${windowScroll}
    Click Change Payment Pickup Point
    Click Pickup Point
    Click Any Delivery
    Click Change Payment Delivery Method
    Click Collect
    [Teardown]    Tear Down

Apps > Checkout > Collect > Change Pickup point - QASA-571
    [Tags]    QASA-571
    [Setup]    Start Application
    Clear Environment
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    slim book
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Click Any Delivery
    Click Donate No Thanks
    Verify Payment Text    ORDER REVIEW
    Click Change Payment Pickup Point
    Click Pickup Point    Takealot Cape Town Warehouse
    Click Any Delivery
    [Teardown]    Tear Down

Apps > Checkout > Order Review - QASA-590
    [Tags]    QASA-590
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    airtime
    Click Product
    Click Airtime
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Continue Digital Item
    Click Donate No Thanks
    Verify Payment Text    ORDER REVIEW
    Verify Payment Text    Sent upon payment DIGITAL ITEMS
    Click Payment Show Details
    Verify Payment Details Text    Sent upon payment
    Verify Payment Details Text    DIGITAL ITEMS
    Verify Payment Details Text    Delivery via email to take2Automation+201905211152@gmail.com
    Verify Payment Details Text    Vodacom Mobile Airtime Voucher - R10
    Verify Payment Details Text    Qty: 1
    Click Payment Cancel
    Click Change Payment Method
    Verify Payment Options Text    EFT with Ozow
    Verify Payment Options Text    EFT with PayFast
    Verify Payment Options Text    Cash on Delivery
    Verify Payment Options Text    eBucks
    Verify Payment Options Text    Mobicred
    [Teardown]    Tear Down

Apps > Checkout > Order Review 02 - QASA-110
    [Tags]    QASA-110
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    airtim
    Click Variant Product from API
    Click Product Variant From API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Continue Digital Item
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout Delete First Item
    Click Checkout
    Click Continue Digital Item
    Click Donate No Thanks
    Scroll To Text    ORDER REVIEW
    [Teardown]    Tear Down

Apps > Checkout > Payment > Earn eBucks - QASA-605
    [Tags]    QASA-605
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Click Any Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Select Earn eBucks
    Enter eBucks ID Number    8201095098089
    Click Earn eBucks
#    Verify Payment Text    eBucks details Successfully captured
    Click Change Payment Method
    Click eBucks Payment Method
    Click eBucks Payment Info
    Verify Payment Options Text No Wait    eBucks is not available for this order
    Click Card Payment Method
    Select Earn eBucks
#    Verify Earn eBucks Text    eBucks details Successfully captured
    Click eBucks Delete
    Click eBucks Cancel
    Click Change Payment Method
    Click eBucks Payment Method
    [Teardown]    Tear Down

Apps > Checkout > Payment > Gift Msg - QASA-613
    [Tags]    QASA-613
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Any Delivery
    Click Donate No Thanks
    Verify Payment Text    Is this a gift? Add a gift message
    Click Add Gift
    Verify Gift Text    Hi Test, Enjoy your gift! From AutoTest Tester
    [Teardown]    Tear Down

Apps > Checkout > Payment > Gift Msg 02 - QASA-109
    [Tags]    QASA-109
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    airtim
    Click Variant Product from API
    Click Product Variant From API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Continue Digital Item
    Click Donate No Thanks
    Verify Payment Text Not    Is this a gift? Add a gift message
    [Teardown]    Tear Down

Apps > Checkout > Payment > Payment Method Availability - QASA-607
    [Tags]    QASA-607
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Any Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Click Change Payment Method
    Click eBucks Payment Method
    Click Change Payment Method
    Click Ozow Payment Method
    Click Change Payment Method
    Click Mobicred Payment Method
    Click Change Payment Method
    Click Cash Payment Method
    Click Change Payment Method
    Click Payfast Payment Method
    Click Pay With Payfast
    Verify Payfast Payment    Secure payments by PayFast
    [Teardown]    Tear Down

Apps > Checkout > Payment > Payment Method Availability 02 - QASA-107
    [Tags]    QASA-107
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Any Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Payfast Payment Method
    Click Pay With Payfast
    Verify Payfast Payment Text
    [Teardown]    Tear Down

Apps > Checkout > Payment > Payment Method Availability 03 - QASA-108
    [Tags]    QASA-108
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    airtim
    Click Variant Product from API
    Click Product Variant From API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Continue Digital Item
    Click Donate No Thanks
    Click Change Payment Method
    Click Mobicred Payment Info
    Verify Mobicred Payment Info
    Click OK Payment Method Info
    Click COD Payment Info
    Verify COD Payment Info
    [Teardown]    Tear Down

Apps > Checkout > Payment > Post-Order Creation - QASA-542
    [Tags]    QASA-542
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Any Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment
    Click Pay with Credit Card Back
    Click Change Payment Method
    Click Card Payment Method
    Verify Payment Element Not Exists    ${txtChangePaymentDeliveryMethod}
    Verify Payment Element Not Exists    ${txtChangePaymentPickup}
    Verify Payment Element Not Exists    ${txtPaymentEBucks}
    Verify Payment Element Not Exists    ${txtGiftAdd}
    [Teardown]    Tear Down

Apps > Checkout > Payment > Donation - QASA-618
    [Tags]    QASA-618
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Any Delivery
    Verify Payment Donation Text    Donate R 5 to Beautiful Gate Children's Charity
    Verify Payment Donation Text    Beautiful Gate South Africa is a registered non-profit organisation providing care and support to vulnerable children and families
    Verify Element On Screen    ${imgPaymentDonation}    ${MIN_TIMEOUT}
    Click Payment Donate
    Verify Element On Screen    ${rdoDonationSelected}    ${MIN_TIMEOUT}
    Verify Element On Screen    ${lblPaymentDonation}    ${MIN_TIMEOUT}
#    Verify Element On Screen    ${lblPaymentR5}    ${MIN_TIMEOUT}
    Click Payment Donation Info Icon
    Verify Payment Donation Info Text    Beautiful Gate South Africa is a registered non-profit organisation providing care and support to vulnerable children and families
#    Click Payment Donation Ok
    Click Payment Donation Deselect
    Verify Payment Element Not Exists    ${lblPaymentDonation}
    Verify Payment Element Not Exists    ${lblPaymentR5}
    Click Back Payment Screen
    Click Any Delivery
    Click Change Payment Method
    Click Card Payment Method
    [Teardown]    Tear Down

Apps > Checkout > Payment > Donation 02 - QASA-95
    [Tags]    QASA-95
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Any Delivery
    Click Donate No Thanks
    Click Back Payment Screen
    Click Back Delivery Options
    Click Delivery Address Back
    Click Cancel Delivery Method
    Click Checkout
    Click Delivery
    Click Address
    Click Any Delivery
    Click Donate No Thanks
   [Teardown]    Tear Down

Apps > Checkout > Payment > Confirmation - QASA-552
    [Tags]    QASA-552
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Any Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Click Change Payment Method
    Click eBucks Payment Method
    Click Change Payment Method
    Click Ozow Payment Method
    Click Change Payment Method
    Click Mobicred Payment Method
    Click Change Payment Method
    Click Payfast Payment Method
    Click Change Payment Method
    Click Cash Payment Method
    Click Payment Confirm Order
    Verify Text On Screen    You have chosen to pay with Cash on Delivery    ${MIN_TIMEOUT}
    Verify Text On Screen    Please have your cash ready for the driver
    Verify Text On Screen    Share your purchase on Facebook or Twitter using the hashtag #anythingyoucanimagine and you could win the value of the product back in takealot.com store credit
    Verify Element On Screen    ${lblShareAndWin}
    [Teardown]    Tear Down

Apps > Checkout > Payment > Confirmation 02 - QASA-106
    [Tags]    QASA-106
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Any Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Input Credit Card Number    8997877654456554
    Click Credit Card Name
    Verify Text On Screen    Please enter a valid credit card number    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Checkout > Payment > Pay with PayFast - QASA-539
    [Tags]    QASA-539
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product From API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Any Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Payfast Payment Method
    Click Pay With Payfast
    Verify Payfast Payment Text
    Click Back Screen
    Click Pay With Payfast
    Verify Payfast Payment Text
    Close Application
    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Click Order Awaiting Payment
    Click Order Pay Now
    Click Change Payment Method
    [Teardown]    Tear Down

Apps > Checkout > Payment > Credit Card - PayU - QASA-536
    [Tags]    QASA-536
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Any Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment
    [Teardown]    Tear Down

Apps > Checkout > Payment > COD - QASA-535
    [Tags]    QASA-535
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Any Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Cash Payment Method
    Click Payment Confirm Order
    Verify Text On Screen    You have chosen to pay with Cash on Delivery    ${MIN_TIMEOUT}
    Verify Text On Screen    Please have your cash ready for the driver
    [Teardown]    Tear Down

Apps > Checkout > Payment > Credit Card - PayGate - Unsuccessful Payment - QASA-534
    [Tags]    QASA-534
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Any Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Payfast Payment Method
    Click Pay With Payfast
    Verify Payfast Payment Text
    Click Back Screen
    Click Pay With Payfast
    Verify Payfast Payment Text
    Close Application
    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Click Order Awaiting Payment
    Click Order Pay Now
    Click Change Payment Method
    [Teardown]    Tear Down

Apps > Checkout > Payment > Pay with Ozow - QASA-533
    [Tags]    QASA-533
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Any Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Ozow Payment Method
    Click Pay With Ozow
    Verify Text On Screen    Select your bank    ${MIN_TIMEOUT}
    Click Back Screen
    Click Pay With Ozow
    Close Application
    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Click Order Awaiting Payment
    Click Order Pay Now
    Click Pay With Ozow
    [Teardown]    Tear Down

Apps > Checkout > Payment > Credit Card - Success Payment - Existing Order - QASA-532
    [Tags]    QASA-532
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Any Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment
    Close Application
    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Click Order Awaiting Payment
    Click Order Pay Now
    Click Pay With Credit Card
    [Teardown]    Tear Down

Apps > Checkout > Payment > Mobicred - QASA-527
    [Tags]    QASA-527
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Any Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Mobicred Payment Method
    Click Pay With Mobi
    Verify Text On Screen    Please log in to your Mobicred account    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Checkout > TV Licence Verification - QASA-307
    [Tags]    QASA-307
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    Televisio
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Domestic TV Licence    Business
    Verify Text On Screen    Company Registration Number / Owner ID    ${MIN_TIMEOUT}
    Verify Text On Screen    TV Licence / EasyPay Number
    Click Back Screen
    Click Domestic TV Licence    Holiday Home    ${MIN_TIMEOUT}
    Verify Tv Licence Text    Licence Holder SA ID / Passport Number
    Click Back Screen
    Click Domestic TV Licence
    Click Verify TV Licence
    Enter TV Licence    7209195063086
    Click Delivery
    [Teardown]    Tear Down

Apps > Checkout > TV Licence Verification 02 - QASA-105
    [Tags]    QASA-105
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    Televisio
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Verify Element On Screen    ${btnCheckout}    ${MIN_TIMEOUT}
    Click Back Screen
    Click Search Icon
    Search Product    johnny wal
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Verify Text On Screen    TV Licence    ${MIN_TIMEOUT}
    Verify Text On Screen    Age Verification
    Verify Element On Screen    ${navTvLicVerification}
    [Teardown]    Tear Down

Apps > Checkout > Delivery Options > Promise Date - QASA-611
    [Tags]    QASA-611
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product available in CPT only
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Back Delivery Options
    Click Delivery Address Back
    Click Cancel Delivery Method
    Click Home
    Click Search Icon
    Click Search Home
    Search Product    pencil
    Click Product in Leadtime
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Back Delivery Options
    Click Delivery Address Back
    Click Cancel Delivery Method
    Click Home
    Click Search Icon
    Search Product    pencil
    Click Product available in JHB only
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Back Delivery Options
    Click Delivery Address Back
    Click Cancel Delivery Method
    Click Home
    Click Search Icon
    Search Product    pencil
    Click Product available in JHB and CPT
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Back Delivery Options
    Click Delivery Address Back
    Click Cancel Delivery Method
    Click Home
    Click Search Icon
    Search Product    pencil
    Click Product available in JHB and CPT
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Any Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment    Card Number
    Close Application
    Start Application
    Click Menu
    Click Menu Orders
    Click Order Awaiting Payment
    Verify Order Detail Text    ORDER SUMMARY
    [Teardown]    Tear Down

Apps > Checkout > Collect Options > Promise Date - QASA-606
    [Tags]    QASA-606
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product available in CPT only
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Click Back Collect Options
    Click Collect Address Back
    Click Cancel Delivery Method
    Click Home
    Click Search Icon
    Click Search Home
    Search Product    pencil
    Click Product in Leadtime
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Click Back Collect Options
    Click Collect Address Back
    Click Cancel Delivery Method
    Click Home
    Click Search Icon
    Search Product    pencil
    Click Product available in JHB only
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Click Back Collect Options
    Click Collect Address Back
    Click Cancel Delivery Method
    Click Home
    Click Search Icon
    Search Product    pencil
    Click Product available in JHB and CPT
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Click Any Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment    Card Number
    Close Application
    Start Application
    Click Menu
    Click Menu Orders
    Click Order Awaiting Payment
    Verify Order Detail Text    ORDER SUMMARY
    [Teardown]    Tear Down

Apps > Checkout > Payment > Pay with eBucks - QASA-538
    [Tags]    QASA-538
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product From API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Click Any Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click eBucks Payment Method
    Click Pay With eBucks
    Fill In EBucks Credentials
    Click EBucks Balance
    Fill In EBucks Amount Form    299
    Fill In EBUcks OTP Form
    Verify Text On Screen    Invalid OTP    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Checkout > Payment > Credits (Voucher) - QASA-537
    [Tags]    QASA-537
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Click Any Delivery
    Click Donate No Thanks
    Click Add Payment Voucher
    Enter Payment Voucher Code
    Click Apply Payment Voucher
    Click Back Screen
    Verify Element On Screen    ${rdoPaymentUseMyCredit}    ${MIN_TIMEOUT}
    Verify Payment Text    Use my Credit (R
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Payment Text    You don't owe us a cent. Your available credit balance covers the full value of your order
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Payment Text    You don’t owe us a cent. Your available credit balance covers the full value of your order
    Swipe Up    ${windowScroll}
    Click Payment Donation
    Verify Element On Screen    ${lblPaymentDonation}    ${MIN_TIMEOUT}
    Verify Element On Screen    ${lblPaymentCreditsApplied}
    Verify Element On Screen    ${txtPaymentAmount}
    Click Payment Confirm Order
    [Teardown]    Tear Down

Apps > Checkout > Delivery Options > General Test Case - QASA-601
    [Tags]    QASA-601
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    airtime
    Click First Product from API
    Click Airtime
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Verify Continue Digital Item Text    Digital Items
    Verify Continue Digital Item Text    Sent upon payment
    Click Continue Digital Item
    Click Donate No Thanks
    [Teardown]    Tear Down

Apps > Checkout > Delivery Options > General Test Case 02 - QASA-104
    [Tags]    QASA-104
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    airtim
    Click Variant Product from API
    Click Product Variant From API
    Click Add To Cart
    Click Go To Cart
    Verify Element On Screen    ${btnCheckout}    ${MIN_TIMEOUT}
    Click Back Screen
    Click Search Icon
    Search Product    montego
    Click Variant Product from API    1
    Click Product Variant From API    2
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Any Delivery
    Click Continue Digital Item
    Click Donate No Thanks
    [Teardown]    Tear Down

Apps > Checkout > Delivery Options > General Test Case 03 - QASA-103
    [Tags]    QASA-103
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    [Teardown]    Tear Down

Apps > Checkout > Delivery Options > General Test Case 04 - QASA-102
    [Tags]    QASA-102
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product in Leadtime
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Why The Wait
    Verify Text On Screen    Why the Wait?    ${MIN_TIMEOUT}
    Verify Text On Screen    One or more items in your cart need to be ordered from our supplier. We will ship your order once all your items are ready
    Click Got It Thanks
    [Teardown]    Tear Down

Apps > Checkout > Delivery Options > General Test Case 05 - QASA-101
    [Tags]    QASA-101
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product in Leadtime
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Click Why The Wait
    Verify Text On Screen    Why the Wait?    ${MIN_TIMEOUT}
    Verify Text On Screen    One or more items in your cart need to be ordered from our supplier
    Verify Text On Screen    You can collect your order once all your items have arrived and you
    Verify Text On Screen    ve received email confirmation that your order is ready
    Click Got It Thanks
    [Teardown]    Tear Down

Apps > Checkout > Delivery Options > General Test Case 06 - QASA-100
    [Tags]    QASA-100
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Verify Element On Screen    ${btnCheckout}    ${MIN_TIMEOUT}
    Click Back Screen
    Click Search Icon
    Search Product    monito
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Verify Element On Screen    ${btnCheckout}    ${MIN_TIMEOUT}
    Click Back Screen
    Click Search Icon
    Search Product    Drone
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Verify Element On Screen    ${btnCheckout}    ${MIN_TIMEOUT}
    Click Back Screen
    Click Search Icon
    Search Product    toy
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Verify Element On Screen    ${btnCheckout}    ${MIN_TIMEOUT}
    Click Back Screen
    Click Search Icon
    Search Product    glass
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Click Delivery Show Details
    Verify Text On Screen    ITEMS FOR COLLECTION    ${MIN_TIMEOUT}
    Verify Text On Screen    Qty: 1
    Verify Delivery Options Thimbnail Images
    [Teardown]    Tear Down

Apps > Checkout > Delivery Options > Add Gift Recipient - QASA-298
    [Tags]    QASA-298
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    Gift Vouch
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Verify Text On Screen    Delivery via email to    ${MIN_TIMEOUT}
    Verify Text On Screen    ${G_EMAIL}
    Click Change Digital Item Recepient
    Enter Gift Message    Automation Test
    Click Gift Message Save Button
    [Teardown]    Tear Down

Apps > Checkout > Delivery Options > Add Gift Recipient 02 - QASA-99
    [Tags]    QASA-99
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    Airtime
    Click Product from API
    Click Airtime
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Verify Continue Digital Item Text    Delivery via email to
    Verify Continue Digital Item Text    take2Automation+201905213934@gmail.com
    Verify Continue Digital Item Text    Digital Items
    Verify Continue Digital Item Text    Sent upon payment
    [Teardown]    Tear Down

Apps > Checkout > Delivery Options > Add Gift Recipient 03 - QASA-98
    [Tags]    QASA-98
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    eBook
    Click Product from API
    Verify PDP Screen Text    This is an electronic book (eBook). In order to read this eBook you need to: (1) have a compatible device; (2) register for an Adobe ID; (3) download the correct eReader software
    [Teardown]    Tear Down

Apps > Checkout > Delivery Options > Add Gift Recipient 04 - QASA-97
    [Tags]    QASA-97
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Verify Delivery Options Text    Items for Delivery
    Verify Delivery Options Text    When would you like it delivered?
    [Teardown]    Tear Down

Apps > Checkout > Delivery Options > Add Gift Recipient 05 - QASA-96
    [Tags]    QASA-96
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Verify Delivery Options Text    Items for Collection
    Verify Delivery Options Text    Estimated collection from:
    [Teardown]    Tear Down

Apps > Checkout > Payment > Mobicred - QASA-555
    [Tags]    QASA-555
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Any Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Mobicred Payment Method
    Click Pay With Mobi
    Verify Text On Screen    Mobicred Username    ${MAX_TIMEOUT}
    Verify Text On Screen    Mobicred Password
    [Teardown]    Tear Down
