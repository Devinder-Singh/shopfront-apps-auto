*** Settings ***
Default Tags      checkout
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps - Checkout - Delivery Methods - QA-5227
    [Tags]    QA-5227
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil Case
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Verify Delivery Text    Courier delivery to your door
    Verify Delivery Text    50+ Takealot Pickup Points nationwide. Open 6 days a week
    [Teardown]    Tear Down

Apps - Checkout - Delivery Methods - Digital Items 02 - QA-9525
    [Tags]    QA-9525
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
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

Apps - Checkout - Delivery Methods - Digital Items 03 - QA-9524
    [Tags]    QA-9524
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Verify Delivery Text    Courier delivery to your door
    Verify Delivery Text    50+ Takealot Pickup Points nationwide. Open 6 days a week
    Click Collect
    Click Pickup Point
    [Teardown]    Tear Down

Apps - Checkout - Delivery Methods - Liquor Item - QA-9523 / QA-5232
    [Tags]    QA-9523    QA-5232
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    johnny
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Verify Age
    Verify Text On Screen    Sorry, some items in your cart are not eligible for collection    30s
    Click Collect Not Available
    Verify Delivery Text Not    Takealot Pickup Points
    [Teardown]    Tear Down

Apps - Checkout - Delivery Methods - Digital and Physical Item 04 - QA-9522
    [Tags]    QA-9522
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
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
    Click Pickup Point
    [Teardown]    Tear Down

Checkout - Collect - Add Delivery and Digital Items - QA-5231
    [Tags]    QA-5231
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
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

Checkout - Collect - Add Only Delivery Items - QA-5247
    [Tags]    QA-5247
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
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

Checkout - Collect - White Goods - QA-5240
    [Tags]    QA-5240
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
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

Checkout - Age Verification - QA-5244
    [Tags]    QA-5244
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    johnny
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Verify Age
    Verify Age Text    The date of birth you entered indicates that you are under the age of 18. We are not permitted to sell liquor to you. Please remove all liquor items from your cart to proceed
    [Teardown]    Tear Down

Checkout - Delivery Address - General - QA-5200 / QA-9529
    [Tags]    QA-5200    QA-9529
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
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
    Click Free Delivery
    [Teardown]    Tear Down

Checkout - Delivery Address - General 03 - QA-9530
    [Tags]    QA-9530
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
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

Checkout - Delivery Address - General 04 - QA-9531
    [Tags]    QA-9531
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
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

Checkout - Delivery Address - Edit Address - Street Correction - QA-5206
    [Tags]    QA-5206
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
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
    Verify Text On Screen iOS    RECIPIENT NAME    2s
    Verify Text On Screen iOS    RECIPIENT MOBILE NUMBER    2s
    Verify Text On Screen iOS    STREET ADDRESS    2s
    Verify Text On Screen iOS    SUBURB    2s
    Verify Text On Screen iOS    CITY / TOWN    2s
    Verify Text On Screen iOS    PROVINCE    2s
    Verify Text On Screen iOS    POSTAL CODE    2s
    Verify Text On Screen iOS    COMPLEX / BUILDING (OPTIONAL)    2s
#    Verify Text On Screen Android    Recipient Name    2s
#    Verify Text On Screen Android    Recipient Mobile Number    2s
#    Verify Text On Screen Android    Street Address    2s
#    Verify Text On Screen Android    Suburb    2s
#    Verify Text On Screen Android    City / Town    2s
#    Swipe Up    ${windowScroll}
#    Verify Text On Screen Android    Province    2s
#    Verify Text On Screen Android    Postal Code    2s
#    Verify Text On Screen Android    Complex / Building (Optional)    2s
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

Checkout - Delivery Address - Add Residential Address - Street Suggestion - QA-5213
    [Tags]    QA-5213
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
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
    Click Free Delivery
    [Teardown]    Tear Down

Checkout - Delivery Address - Address Form Validation - QA-5217
    [Tags]    QA-5217
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Address
    Verify Text On Screen iOS    COMPLEX / BUILDING (OPTIONAL)    10s
    Verify Text On Screen Android    Complex / Building (Optional)    10s
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
    Add Delivery Address My Acc    ${EMPTY}    %^    &*
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
    Verify Element On Screen    ${btnSaveAddress}    30s
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
    Verify Text On Screen iOS    BUSINESS NAME    10s
    Edit Delivery Address Business My Acc    AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
    Click Save Address
#    Verify Text On Screen    Maximum length for business name is 64 characters    10s
    [Teardown]    Tear Down

Checkout - Delivery Address - Street Suggestion - QA-5238
    [Tags]    QA-5238
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
    Click Free Delivery
    [Teardown]    Tear Down

Checkout - Delivery Address - Pin on Map - QA-5251
    [Tags]    QA-5251
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

Apps > Checkout > Collect > Select Pickup Point button - QA-5256
    [Tags]    QA-5256
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    [Teardown]    Tear Down

Apps > Checkout > Collect > Pickup Point INFO - QA-5207
    [Tags]    QA-5207
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
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

Apps > Checkout > Collect > Pickup Points List - QA-5237
    [Tags]    QA-5237
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
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
    Click Free Delivery
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

Apps > Checkout > Collect > Add Only Digital Item - QA-5265
    [Tags]    QA-5265
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
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

Apps > Checkout > Collect > Shipping Options (Standard) - QA-5243
    [Tags]    QA-5243
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Verify Text On Screen    Standard Collect    30s
    [Teardown]    Tear Down

Apps > Checkout > Collect > Shipping Options > Free (Order above 450) - QA-5239
    [Tags]    QA-5239
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    chair office
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Click Free Delivery
    [Teardown]    Tear Down

Apps > Checkout > Collect > Shipping Options > R25 (Order below 450) - QA-5202
    [Tags]    QA-5202
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
#    Click Collection Fee R25
    [Teardown]    Tear Down

Apps > Checkout > Collect > Shipping Options > No Fee (CapeTown DC) - QA-5258
    [Tags]    QA-5258
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    chair office
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Click Free Delivery
    [Teardown]    Tear Down

Apps > Checkout > Collect > Delivery Options (Collect Options) - QA-5223
    [Tags]    QA-5223
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
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
    Click Free Delivery
    Click Donate No Thanks
    Verify Payment Text    ORDER REVIEW
    Verify Payment Text    Delivery Method
    Verify Payment Text    Pickup Point
    Click Change Payment Pickup Point
    Click Pickup Point
    Click Free Delivery
    Click Change Payment Delivery Method
    Click Collect
    [Teardown]    Tear Down

Apps > Checkout > Collect > Tablet > Change Delivery Method - QA-5252
    [Tags]    QA-5252
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    zagg slim book
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Click Free Delivery
    Click Donate No Thanks
    Verify Payment Text    ORDER REVIEW
    Click Change Payment Pickup Point
    Click Pickup Point
    Click Free Delivery
    Click Change Payment Delivery Method
    Click Collect
    [Teardown]    Tear Down

Apps > Checkout > Collect > Change Pickup point - QA-5250
    [Tags]    QA-5250
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    zagg slim book
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Click Free Delivery
    Click Donate No Thanks
    Verify Payment Text    ORDER REVIEW
    Click Change Payment Pickup Point
    Click Pickup Point Brackenfell
    Click Free Delivery
    [Teardown]    Tear Down

Apps > Checkout > Order Review - QA-5230
    [Tags]    QA-5230
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
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

Apps > Checkout > Order Review 02 - QA-9532
    [Tags]    QA-9532
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout Delete First Item
    Click Checkout
    Click Continue Digital Item
    Click Donate No Thanks
    Verify Payment Text    ORDER REVIEW
    [Teardown]    Tear Down

Apps > Checkout > Payment > Earn eBucks - QA-5211
    [Tags]    QA-5211
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Click Free Delivery
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

Apps > Checkout > Payment > Gift Msg - QA-5203
    [Tags]    QA-5203
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Free Delivery
    Click Donate No Thanks
    Verify Payment Text    Is this a gift? Add a gift message
    Click Add Gift
    Verify Gift Text    Hi Test, Enjoy your gift! From AutoTest Tester
    [Teardown]    Tear Down

Apps > Checkout > Payment > Gift Msg 02 - QA-9533
    [Tags]    QA-9533
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Airtime
    Click Product
    Click Airtime
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Continue Digital Item
    Click Donate No Thanks
    Verify Payment Text Not    Is this a gift? Add a gift message
    [Teardown]    Tear Down

Apps > Checkout > Payment > Payment Method Availability - QA-5209
    [Tags]    QA-5209
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Free Delivery
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

Apps > Checkout > Payment > Payment Method Availability 02 - QA-9535
    [Tags]    QA-9535
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Free Delivery
    Click Donate No Thanks
    Click Pay With Payfast
    Verify Payfast Payment    Secure payments by PayFast
    [Teardown]    Tear Down

Apps > Checkout > Payment > Payment Method Availability 03 - QA-9534
    [Tags]    QA-9534
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
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
    Click Change Payment Method
    Click Mobicred Payment Info
    Verify Mobicred Payment Info
    Click Got It Thanks Payment Method
    Click COD Payment Info
    Verify COD Payment Info
    [Teardown]    Tear Down

Apps > Checkout > Payment > Post-Order Creation - QA-5279
    [Tags]    QA-5279
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Free Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment    Card Number
    Click Pay with Credit Card Back
    Click Change Payment Method
    Click Card Payment Method
    Verify Payment Element Not Exists    ${txtChangePaymentDeliveryMethod}
    Verify Payment Element Not Exists    ${txtChangePaymentPickup}
    Verify Payment Element Not Exists    ${txtPaymentEBucks}
    Verify Payment Element Not Exists    ${txtGiftAdd}
    [Teardown]    Tear Down

Apps > Checkout > Payment > Donation - QA-5198
    [Tags]    QA-5198
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Free Delivery
    Verify Payment Donation Text    Donate R 5 to Beautiful Gate Children's Charity
    Verify Payment Donation Text    Beautiful Gate South Africa is a registered non-profit organisation providing care and support to vulnerable children and families
    Verify Payment Element Exists    ${imgPaymentDonation}
    Click Payment Donate
    Verify Payment Element Exists    ${rdoDonationSelected}
    Verify Payment Element Exists    ${lblPaymentDonation}
#    Verify Payment Element Exists    ${lblPaymentR5}
    Click Payment Donation Info Icon
    Verify Payment Donation Info Text    Beautiful Gate South Africa is a registered non-profit organisation providing care and support to vulnerable children and families
#    Click Payment Donation Ok
    Click Payment Donation Deselect
    Verify Payment Element Not Exists    ${lblPaymentDonation}
    Verify Payment Element Not Exists    ${lblPaymentR5}
    Click Back Payment Screen
    Click Free Delivery
    Click Change Payment Method
    Click Card Payment Method
    [Teardown]    Tear Down

Apps > Checkout > Payment > Donation 02 - QA-9550
    [Tags]    QA-9550
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Free Delivery
    Click Donate No Thanks
    Click Back Payment Screen
    Click Back Delivery Options
    Click Delivery Address Back
    Click Cancel Delivery Method
    Click Checkout
    Click Delivery
    Click Address
    Click Free Delivery
    Click Donate No Thanks
   [Teardown]    Tear Down

Apps > Checkout > Payment > Confirmation - QA-5269
    [Tags]    QA-5269
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Free Delivery
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
#    Click Payment Confirm Order
#    Verify Confirmation Text    You have chosen to pay with Cash on Delivery. Please have your cash ready for the driver
#    Verify Confirmation Text    Share your purchase on Facebook or Twitter and you could win its value back in takealot.com store credit! To enter: Share your purchase on takealot.com's Facebook page or on Twitter, tag takealot.com's page or handle and add the hashtag #anythingyoucanimagine. T&C’s apply
#    Verify Confirmation Element Exists    ${lblShareAndWin}
    [Teardown]    Tear Down

Apps > Checkout > Payment > Confirmation 02 - QA-9536
    [Tags]    QA-9536
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Free Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Input Credit Card Number    8997877654456554
    Click Credit Card Name
    Verify Card Payment Text    Please enter a valid credit card number
    [Teardown]    Tear Down

Apps > Checkout > Payment > Pay with PayFast - QA-5282
    [Tags]    QA-5282
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Free Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Payfast Payment Method
    Click Pay With Payfast
    Verify Payfast Payment
    Click PayFast Cancel
    Click Pay With Payfast
    Verify Payfast Payment
    Close Application
    Start Application
    Click Menu
    Click Menu Orders
    Click Order Awaiting Payment
    Click Order Pay Now
    Click Change Payment Method
    [Teardown]    Tear Down

Apps > Checkout > Payment > Credit Card - PayU - QA-5285
    [Tags]    QA-5285
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Free Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment    Card Number
    [Teardown]    Tear Down

Apps > Checkout > Payment > COD - QA-5286
    [Tags]    QA-5286
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Free Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Cash Payment Method
    Click Payment Confirm Order
    Verify Confirmation Text    You have chosen to pay with Cash on Delivery. Please have your cash ready for the driver
    [Teardown]    Tear Down

Apps > Checkout > Payment > Credit Card - PayGate - Unsuccessful Payment - QA-5287
    [Tags]    QA-5287
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Free Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Payfast Payment Method
    Click Pay With Payfast
    Verify Payfast Payment
    Click PayFast Cancel
    Click Pay With Payfast
    Verify Payfast Payment
    Close Application
    Start Application
    Click Menu
    Click Menu Orders
    Click Order Awaiting Payment
    Click Order Pay Now
    Click Change Payment Method
    [Teardown]    Tear Down

Apps > Checkout > Payment > Pay with Ozow - QA-5288
    [Tags]    QA-5288
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Free Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Ozow Payment Method
    Click Pay With Ozow
    Click Back Payment Ozow
    Click Pay With Ozow
    Close Application
    Start Application
    Click Menu
    Click Menu Orders
    Click Order Awaiting Payment
    Click Order Pay Now
    Click Pay With Ozow
    [Teardown]    Tear Down

Apps > Checkout > Payment > Credit Card - Success Payment - Existing Order - QA-5289
    [Tags]    QA-5289
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Free Delivery
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
    Click Order Pay Now
    Click Pay With Credit Card
    [Teardown]    Tear Down

Apps > Checkout > Payment > Mobicred - QA-5295
    [Tags]    QA-5295
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Free Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Mobicred Payment Method
    Click Pay With Mobi
    Verify Payment Mobi Text    Please log in to your Mobicred account
    [Teardown]    Tear Down

Apps > Checkout > TV Licence Verification - QA-6692
    [Tags]    QA-6692
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Television
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Business TV Licence
    Verify Tv Licence Text    COMPANY REGISTRATION NUMBER / OWNER ID
    Verify Tv Licence Text    TV LICENCE / EASYPAY NUMBER
    Click Back TV Licence
    Click Holiday TV Licence
    Verify Tv Licence Text    LICENCE HOLDER SA ID / PASSPORT NUMBER
    Click Back TV Licence
    Click Domestic TV Licence
    Click Verify TV Licence
    Enter TV Licence    1234
    Click Delivery
    [Teardown]    Tear Down

Apps > Checkout > TV Licence Verification 02 - QA-9537
    [Tags]    QA-9537
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Television
    Click Product
    Click Add To Cart
    Click Continue Shopping
    Click Search Icon
    Search Product    johnny wal
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Verify Tv Licence Text    TV Licence
    Verify Tv Licence Text    Age Verification
    Verify Tv Licence Element Exists    ${navTvLicVerification}
    [Teardown]    Tear Down

Apps > Checkout > Delivery Options > Promise Date - QA-5205
    [Tags]    QA-5205
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
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
    Click Free Delivery
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

Apps > Checkout > Collect Options > Promise Date - QA-5210
    [Tags]    QA-5210
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
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
    Click Free Delivery
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

Apps > Checkout > Payment > Pay with eBucks - QA-5283
    [Tags]    QA-5283
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Click Free Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click eBucks Payment Method
    Click Pay With eBucks
    Fill In EBucks Credentials
    Click EBucks Balance
    Fill In EBucks Amount Form
    Fill In EBUcks OTP Form
    Verify Payment EBucks Text    Invalid OTP
    [Teardown]    Tear Down

Apps > Checkout > Payment > Credits (Voucher) - QA-5284
    [Tags]    QA-5284
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Click Free Delivery
    Click Donate No Thanks
    Click Add Payment Voucher
    Enter Payment Voucher Code
    Click Apply Payment Voucher
    Click Back Payment Voucher
    Verify Payment Element Exists    ${rdoPaymentUseMyCredit}
    Verify Payment Text    Use my Credit (R
    Verify Payment Text    You don't owe us a cent. Your available credit balance covers the full value of your order
    Click Payment Donation
    Verify Payment Element Exists    ${txtPaymentAmount}
    Click Payment Confirm Order
    [Teardown]    Tear Down

Apps > Checkout > Delivery Options > General Test Case - QA-5215
    [Tags]    QA-5215
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
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

Apps > Checkout > Delivery Options > General Test Case 02 - QA-9539
    [Tags]    QA-9539
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    airtime
    Click First Product from API
    Click Airtime
    Click Add To Cart
    Click Continue Shopping
    Click Search Icon
    Search Product    montego
    Click First Product from API
    Click 10 Kg
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Free Delivery
    Click Continue Digital Item
    Click Donate No Thanks
    [Teardown]    Tear Down

Apps > Checkout > Delivery Options > General Test Case 03 - QA-9540
    [Tags]    QA-9540
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
    [Teardown]    Tear Down

Apps > Checkout > Delivery Options > General Test Case 04 - QA-9541
    [Tags]    QA-9541
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
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
    Verify Delivery Options Text    Why the wait?
    Verify Delivery Options Text    One or more items in your cart need to be ordered from our supplier. You can collect your order once all your items have arrived and you've received email confirmation that your order is ready
    Click Got It Thanks
    [Teardown]    Tear Down

Apps > Checkout > Delivery Options > General Test Case 05 - QA-9542
    [Tags]    QA-9542
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
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
    Verify Delivery Options Text    Why the wait?
    Verify Delivery Options Text    One or more items in your cart need to be ordered from our supplier. You can collect your order once all your items have arrived and you've received email confirmation that your order is ready
    Click Got It Thanks
    [Teardown]    Tear Down

Apps > Checkout > Delivery Options > General Test Case 06 - QA-9543
    [Tags]    QA-9543
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Continue Shopping
    Click Search Icon
    Search Product    Television
    Click Product from API
    Click Add To Cart
    Click Continue Shopping
    Click Search Icon
    Search Product    Fridge
    Click Product from API
    Click Add To Cart
    Click Continue Shopping
    Click Search Icon
    Search Product    toy
    Click Product from API
    Click Add To Cart
    Click Continue Shopping
    Click Search Icon
    Search Product    glass
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Click Free Delivery
    Click +2 Show Details
    Verify Delivery Options Text    Items for Collection
    Verify Delivery Options Text    Qty: 1
    Verify Delivery Options Thimbnail Images
    [Teardown]    Tear Down

Apps > Checkout > Delivery Options > Add Gift Recipient - QA-7850
    [Tags]    QA-7850
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Gift Vouch
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Verify Continue Digital Item Text    Delivery via email to
    Verify Continue Digital Item Text    take2Automation+201905213934@gmail.com
    Click Change Digital Item Recepient
    Enter Gift Message    Automation Test
    Click Gift Message Save Button
    [Teardown]    Tear Down

Apps > Checkout > Delivery Options > Add Gift Recipient 02 - QA-9544
    [Tags]    QA-9544
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
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

Apps > Checkout > Delivery Options > Add Gift Recipient 03 - QA-9545
    [Tags]    QA-9545
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    eBook
    Click Product from API
    Verify PDP Screen Text    This is an electronic book (eBook). In order to read this eBook you need to: (1) have a compatible device; (2) register for an Adobe ID; (3) download the correct eReader software
    [Teardown]    Tear Down

Apps > Checkout > Delivery Options > Add Gift Recipient 04 - QA-9546
    [Tags]    QA-9546
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
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

Apps > Checkout > Delivery Options > Add Gift Recipient 05 - QA-9547
    [Tags]    QA-9547
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
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

Apps > Checkout > Payment > Mobicred - QA-5266
    [Tags]    QA-5266
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Free Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Mobicred Payment Method
    Click Pay With Mobi
    Verify Text On Screen    Mobicred Username    60s
    Verify Text On Screen    Mobicred Password    60s
    [Teardown]    Tear Down
