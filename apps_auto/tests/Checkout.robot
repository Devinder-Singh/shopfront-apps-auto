*** Settings ***
Default Tags      regression
Resource          ../common/config/defaultConfig.robot
Resource    ../common/kw/kwMenu.robot

*** Test Cases ***
Apps - Checkout - Delivery Methods - QA-5227
    Clear Environment
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    take2Automation+201905211152@gmail.com    t@ke@!ot1234
    Verify Logged In    AutoTest
    Click Home
    Click Search Home
    Search Product    Pencil Case
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Verify Delivery Text    Courier delivery to your door
    Verify Delivery Text    50+ Takealot Pickup Points nationwide. Open 6 days a week
    [Teardown]    Tear Down

Apps - Checkout - Delivery Methods - Digital Items - QA-5227
    Clear Environment
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    airtim
    Click Product
    Click Airtime
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Continue Airtime
    Click Donate No Thanks
    [Teardown]    Tear Down

Apps - Checkout - Delivery Methods - Digital Items 02 - QA-5227
    Clear Environment
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Verify Delivery Text    Courier delivery to your door
    Verify Delivery Text    50+ Takealot Pickup Points nationwide. Open 6 days a week
    Click Collect
    Click Pickup Point
    [Teardown]    Tear Down

Apps - Checkout - Delivery Methods - Liquor Item - QA-5227 / QA-5232
    Clear Environment
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    johnny
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Verify Age
    Verify Delivery Text    Sorry, some items in your cart are not eligible for collection.
    Click Collect Not Available
    Verify Delivery Text Not    Takealot Pickup Points
    [Teardown]    Tear Down

Apps - Checkout - Delivery Methods - Digital and Physical Item - QA-5227
    Clear Environment
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    airtim
    Click Product
    Click Airtime
    Click Add To Cart
    Click Continue Shopping
    Click Search Icon
    Search Product    montego
    Click Product
    Click 10 Kg
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    [Teardown]    Tear Down

Checkout - Collect - Add Delivery and Digital Items - QA-5231
    Clear Environment
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    airtim
    Click Product
    Click Airtime
    Click Add To Cart
    Click Continue Shopping
    Click Search Icon
    Search Product    montego
    Click Product
    Click 10 Kg
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Verify Pickup Point
    [Teardown]    Tear Down

Checkout - Collect - Add Only Delivery Items - QA-5247
    Clear Environment
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    montego
    Click Product
    Click 10 Kg
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Verify Pickup Point
    [Teardown]    Tear Down

Checkout - Collect - White Goods - QA-5240
    Clear Environment
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    fridg
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Verify Delivery Text    Sorry, some items in your cart are not eligible for collection
    Click Collect Not Available
    Verify Delivery Text Not    Takealot Pickup Points
    [Teardown]    Tear Down

Checkout - Age Verification - QA-5244
    Clear Environment
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    johnny
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Verify Age
    Click Back Delivery
    Click Verify Age
    Verify Age Text    The date of birth you entered indicates that you are under the age of 18. We are not permitted to sell liquor to you. Please remove all liquor items from your cart to proceed
    [Teardown]    Tear Down

Checkout - Delivery Address - General - QA-5200
    Clear Environment
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Delete Address
    [Teardown]    Tear Down

Checkout - Delivery Address - General 02 - QA-5200
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
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

Checkout - Delivery Address - General 03 - QA-5200
    Clear Environment
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    [Teardown]    Tear Down

Checkout - Delivery Address - General 04 - QA-5200
    Clear Environment
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Edit Address
    Edit Delivery Address Mobile Number    0897665665
    swipe by percent    50     50     50    100  1000
    Click Save Address
    Click Address
    [Teardown]    Tear Down

Checkout - Delivery Address - Edit Address - Street Correction - QA-5206
    Clear Environment
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Edit Address
    Verify Add Address Text    RECIPIENT NAME
    Verify Add Address Text    RECIPIENT MOBILE NUMBER
    Verify Add Address Text    STREET ADDRESS
    Verify Add Address Text    SUBURB
    Verify Add Address Text    CITY / TOWN
    Verify Add Address Text    PROVINCE
    Verify Add Address Text    POSTAL CODE
    Verify Add Address Text    COMPLEX / BUILDING (OPTIONAL)
    Edit Delivery Address Mobile Number    089766566
    Edit Delivery Address Postal Code    101
    Click Save Address
    Verify Add Address Text    Please enter a 10-digit SA phone number without country code, spaces, or special characters
    Verify Add Address Text    Please enter a 4 digit postal code
    [Teardown]    Tear Down

Checkout - Delivery Address - Edit Address - Street Correction 03 - QA-5206
    Clear Environment
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Edit Address
    Edit Delivery Address Mobile Number    0820000000
    Edit Delivery Address Postal Code    8006
    Click Save Address
    Click Confirmed Address
    Click Got It Thanks
    Add Map Street Address    12 Ridge Way
    Click Map Address Option
    Click Use This Location
    [Teardown]    Tear Down

Checkout - Delivery Address - Edit Address - Street Correction 04 - QA-5206
    [Setup]    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Address
    Verify Add Address Text    0820000000
    Verify Add Address Text    12 Ridge Way
    Verify Add Address Text    Green Point
    Verify Add Address Text    Cape Town
    Verify Add Address Text    Western Cape
    Verify Add Address Text    8006
    [Teardown]    Tear Down

Checkout - Delivery Address - Add Residential Address - Street Suggestion - QA-5213
    Clear Environment
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
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
    Clear Environment
    [Setup]    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Address
    Verify Add Address Text    COMPLEX / BUILDING (OPTIONAL)
    Verify Add Address Text    Complex or Building Name, unit number or floor
    Click Address Mobile Question
    Verify Add Address Question Text    Enter the mobile number of the person receiving the delivery, so we can send delivery updates via SMS.
    Click Address Got It Thanks
    Click Address Province
    Verify Add Address Province Text    Eastern Cape
    Verify Add Address Province Text    Free State
    Verify Add Address Province Text    Gauteng
    Verify Add Address Province Text    KwaZulu-Natal
    Verify Add Address Province Text    Limpopo
    Verify Add Address Province Text    Mpumalanga
    Verify Add Address Province Text    Northern Cape
    Verify Add Address Province Text    North West
    Verify Add Address Province Text    Western Cape
    [Teardown]    Tear Down

Checkout - Delivery Address - Address Form Validation 02 - QA-5217
    Clear Environment
    [Setup]    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Add Delivery Address
    Click Residential
    Add Delivery Address My Acc    ""    ""    ""
    Verify Add Address Text    Please enter the recipient's name
    Verify Add Address Text    Please enter a 10-digit SA phone number without country code, spaces, or special characters
    Verify Add Address Text    Please enter the street address
    Verify Add Address Text    Please enter the suburb
    Verify Add Address Text    Please enter the city
    Verify Add Address Text    Please select a province
    Verify Add Address Text    Please enter a postal code
    Edit Delivery Address Street My Acc    PO Box 3456
    Verify Add Address Text    PO Box addresses are not allowed
    [Teardown]    Tear Down

Checkout - Delivery Address - Address Form Validation 03 - QA-5217
    [Setup]    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Add Delivery Address
    Click Residential
    Add Delivery Address My Acc    @$    %^    &*
    Verify Add Address Text    Please enter the recipient's name
    Verify Add Address Text    Please enter a 10-digit SA phone number without country code, spaces, or special characters
    Verify Add Address Text    Please enter the street address
    Edit Delivery Address City    AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
    Edit Delivery Address Complex    AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
    Edit Delivery Address Suburb    AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
    Edit Delivery Address Street My Acc    AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
    Click Save Address
    Verify Add Address Text    Maximum length for street is 64 characters
    Verify Add Address Text    Maximum length for complex details is 128 characters
    Verify Add Address Text    Maximum length for city is 64 characters
    Verify Add Address Text    Maximum length for suburb is 64 characters
    [Teardown]    Tear Down

Checkout - Delivery Address - Address Form Validation 04 - QA-5217
    [Setup]    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Add Delivery Address
    Click Address Business
    Verify Add Address Text    BUSINESS NAME
    Edit Delivery Address Business My Acc    AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
    Click Save Address
    Verify Add Address Text    Maximum length for business name is 64 characters
    [Teardown]    Tear Down

Checkout - Delivery Address - Street Suggestion - QA-5238
    Clear Environment
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Add Delivery Address
    Click Address Business
    Add Delivery Address    Tester Residential    072345677    13 Caro Road
    Verify Add Address Text    Please enter a 10-digit SA phone number without country code, spaces, or special characters
    Verify Add Address Text    Please enter a business name
    Edit Delivery Address Business    AutoBusiness
    Edit Delivery Address Mobile Number    0723456778
    Edit Delivery Address Street    13 Caro Road
    Click Save Address
    Click Free Delivery
    [Teardown]    Tear Down

Checkout - Delivery Address - Pin on Map - QA-5251
    Clear Environment
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product
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
    [Teardown]    Tear Down

Checkout - Delivery Address - Pin on Map 02 - QA-5251
    [Setup]    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Address Book
    Click Address
    Verify Edit Address Text    12 Ridge Way
    Verify Edit Address Text    Green Point
    Verify Edit Address Text    Cape Town
    Verify Edit Address Text    Western Cape
    Verify Edit Address Text    8006
    [Teardown]    Tear Down
