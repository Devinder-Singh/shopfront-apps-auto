*** Settings ***
Default Tags      regression
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps - Checkout - Delivery Methods - QA-5227
    [Setup]    Start Application
    Clear Environment
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
    [Setup]    Start Application
    Clear Environment
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
    [Setup]    Start Application
    Clear Environment
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
    [Setup]    Start Application
    Clear Environment
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
    [Setup]    Start Application
    Clear Environment
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
    [Setup]    Start Application
    Clear Environment
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
    [Setup]    Start Application
    Clear Environment
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
    [Setup]    Start Application
    Clear Environment
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
    [Setup]    Start Application
    Clear Environment
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
    [Setup]    Start Application
    Clear Environment
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
    [Setup]    Start Application
    Clear Environment
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
    [Setup]    Start Application
    Clear Environment
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
    [Setup]    Start Application
    Clear Environment
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
    [Setup]    Start Application
    Clear Environment
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
    [Setup]    Start Application
    Clear Environment
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
    [Setup]    Start Application
    Clear Environment
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
    [Setup]    Start Application
    Clear Environment
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
    [Setup]    Start Application
    Clear Environment
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
    [Setup]    Start Application
    Clear Environment
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

Apps > Checkout > Collect > Select Pickup Point button - QA-5256
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    [Teardown]    Tear Down

Apps > Checkout > Collect > Pickup Point INFO - QA-5207
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point Info
    Verify Pickup Point Text    Block B, Montague Park Business Estate, Topaz Boulevard, Montague Gardens, Cape Town, 7441
    Verify Pickup Point Text    We’ll send you an email once your order is ready for collection
    Verify Pickup Point Text    Business Hours
    Verify Pickup Point Text    (Next 7 Days)
    Verify Pickup Point Text    Thursday
    Verify Pickup Point Text    Friday
    Verify Pickup Point Text    Saturday
    Verify Pickup Point Text    Sunday
    Verify Pickup Point Text    Monday
    Verify Pickup Point Text    Tuesday
    Verify Pickup Point Text    Wednesday
    Verify Pickup Point Text    08h00 - 18h00
    Verify Pickup Point Text    08h00 - 13h00
    Verify Pickup Point Text    08h00 - 15h00
    [Teardown]    Tear Down

Apps > Checkout > Collect > Pickup Point INFO 02 - QA-5207
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Filter Province
    Click Gauteng Province
    Click Pickup Point Info
    Verify Pickup Point Text    Big Bird Petroport, N1 Highway, Midrand, Johannesburg, 1685
    Verify Pickup Point Text    We’ll send you an SMS or email once your order is ready for collection. You’ll then have 7 days to collect your order
    Verify Pickup Point Text    Business Hours
    Verify Pickup Point Text    (Next 7 Days)
    Verify Pickup Point Text    Thursday
    Verify Pickup Point Text    Friday
    Verify Pickup Point Text    Saturday
    Verify Pickup Point Text    Sunday
    Verify Pickup Point Text    Monday
    Verify Pickup Point Text    Tuesday
    Verify Pickup Point Text    Wednesday
    Verify Pickup Point Text    06h00 - 18h00
    Verify Pickup Point Text    08h00 - 13h00
    Verify Pickup Point Text    08h00 - 15h00
    [Teardown]    Tear Down

Apps > Checkout > Collect > Pickup Points List - QA-5237
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Filter Province
    Click Gauteng Province
    Verify Pickup Points Gauteng
    Click Filter Province
    Click All Available Provinces
    Verify All Pickup Points
    Verify Pickup Points Gauteng
    Verify Pickup Point
    Verify Collect Address Text    LAST USED
    Click Filter Province
    Click Western Cape Province
    Click Pickup Point Info
    Click Select Pickup Point
    Click Free Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment    Card Number
    [Teardown]    Tear Down

Apps > Checkout > Collect > Pickup Points List 02 - QA-5237
    [Setup]    Start Application
    Click Menu
    Click Menu Orders
    Click Order Awaiting Payment
    Verify Order Detail Text    Takealot Cape Town Warehouse Pickup Point
    [Teardown]    Tear Down

Apps > Checkout > Collect > Add Only Digital Item - QA-5265
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    airtime
    Click Product
    Click Airtime
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Continue Airtime
    Click Donate No Thanks
    [Teardown]    Tear Down

Apps > Checkout > Collect > Shipping Options (Standard) - QA-5243
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Verify Delivery Options Text    Standard Collect
    [Teardown]    Tear Down

Apps > Checkout > Collect > Shipping Options > Free (Order above 450) - QA-5239
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    chair office
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Click Free Delivery
    [Teardown]    Tear Down

Apps > Checkout > Collect > Shipping Options > R25 (Order below 450) - QA-5202
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Click Collection Fee R25
    [Teardown]    Tear Down

Apps > Checkout > Collect > Shipping Options > No Fee (CapeTown DC) - QA-5258
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    chair office
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Click Free Delivery
    [Teardown]    Tear Down

Apps > Checkout > Collect > Delivery Options (Collect Options) - QA-5223
    [Setup]    Start Application
    Clear Environment
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
    [Setup]    Start Application
    Clear Environment
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
    [Setup]    Start Application
    Clear Environment
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
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    airtime
    Click Product
    Click Airtime
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Continue Airtime
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

Apps > Checkout > Order Review 02 - QA-5230
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    [Teardown]    Tear Down

Apps > Checkout > Order Review 03 - QA-5230
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout Delete First Item
    Click Checkout
    Click Continue Airtime
    Click Donate No Thanks
    Verify Payment Text    ORDER REVIEW
    [Teardown]    Tear Down

Apps > Checkout > Payment > Earn eBucks - QA-5211
    [Setup]    Start Application
    Clear Environment
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
    [Setup]    Start Application
    Clear Environment
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

Apps > Checkout > Payment > Gift Msg 02 - QA-5203
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Airtime
    Click Product
    Click Airtime
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Continue Airtime
    Click Donate No Thanks
    Verify Payment Text Not    Is this a gift? Add a gift message
    [Teardown]    Tear Down

Apps > Checkout > Payment > Payment Method Availability - QA-5209
    [Setup]    Start Application
    Clear Environment
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

Apps > Checkout > Payment > Payment Method Availability 02 - QA-5209
    [Setup]    Start Application
    Clear Environment
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

Apps > Checkout > Payment > Payment Method Availability 03 - QA-5209
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    airtime
    Click Product
    Click Airtime
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Continue Airtime
    Click Donate No Thanks
    Click Change Payment Method
    Click Mobicred Payment Info
    Verify Mobicred Payment Info
    Click Got It Thanks Payment Method
    Click COD Payment Info
    Verify COD Payment Info
    [Teardown]    Tear Down

Apps > Checkout > Payment > Post-Order Creation - QA-5279
    [Setup]    Start Application
    Clear Environment
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
    [Setup]    Start Application
    Clear Environment
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

Apps > Checkout > Payment > Donation 02 - QA-5198
    [Setup]    Start Application
    Clear Environment
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
    [Setup]    Start Application
    Clear Environment
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

Apps > Checkout > Payment > Confirmation 02 - QA-5269
    [Setup]    Start Application
    Clear Environment
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
    [Setup]    Start Application
    Clear Environment
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
    [Teardown]    Tear Down

Apps > Checkout > Payment > Pay with PayFast 02 - QA-5282
    [Setup]    Start Application
    Click Menu
    Click Menu Orders
    Click Order Awaiting Payment
    Click Order Pay Now
    Click Change Payment Method
    [Teardown]    Tear Down

Apps > Checkout > Payment > Credit Card - PayU - QA-5285
    [Setup]    Start Application
    Clear Environment
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
    [Setup]    Start Application
    Clear Environment
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
#    Click Payment Confirm Order
#    Verify Confirmation Text    You have chosen to pay with Cash on Delivery. Please have your cash ready for the driver
    [Teardown]    Tear Down

Apps > Checkout > Payment > Credit Card - PayGate - Unsuccessful Payment - QA-5287
    [Setup]    Start Application
    Clear Environment
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
    [Teardown]    Tear Down

Apps > Checkout > Payment > Credit Card - PayGate - Unsuccessful Payment 02 - QA-5287
    [Setup]    Start Application
    Click Menu
    Click Menu Orders
    Click Order Awaiting Payment
    Click Order Pay Now
    Click Change Payment Method
    [Teardown]    Tear Down

Apps > Checkout > Payment > Pay with Ozow - QA-5288
    [Setup]    Start Application
    Clear Environment
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
    [Teardown]    Tear Down

Apps > Checkout > Payment > Pay with Ozow 02 - QA-5288
    [Setup]    Start Application
    Click Menu
    Click Menu Orders
    Click Order Awaiting Payment
    Click Order Pay Now
    Click Pay With Ozow
    [Teardown]    Tear Down

Apps > Checkout > Payment > Credit Card - Success Payment - Existing Order - QA-5289
    [Setup]    Start Application
    Clear Environment
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

Apps > Checkout > Payment > Credit Card - Success Payment - Existing Order 02 - QA-5289
    [Setup]    Start Application
    Click Menu
    Click Menu Orders
    Click Order Awaiting Payment
    Click Order Pay Now
    Click Pay With Credit Card
    [Teardown]    Tear Down

Apps > Checkout > Payment > Mobicred - QA-5295
    [Setup]    Start Application
    Clear Environment
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
    [Setup]    Start Application
    Clear Environment
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

Apps > Checkout > TV Licence Verification 02 - QA-6692
    [Setup]    Start Application
    Clear Environment
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
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
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
    Click Product
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
    Click Product
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
    Click Product
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

Apps > Checkout > Delivery Options > Promise Date 02 - QA-5205
    [Setup]    Start Application
    Click Menu
    Click Menu Orders
    Click Order Awaiting Payment
    Verify Order Detail Text    ORDER SUMMARY
    [Teardown]    Tear Down

Apps > Checkout > Collect Options > Promise Date - QA-5210
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
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
    Click Product
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
    Click Product
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
    Click Pay With Credit Card
    Verify Card Payment    Card Number
    [Teardown]    Tear Down

Apps > Checkout > Collect Options > Promise Date 02 - QA-5210
    [Setup]    Start Application
    Click Menu
    Click Menu Orders
    Click Order Awaiting Payment
    Verify Order Detail Text    ORDER SUMMARY
    [Teardown]    Tear Down
