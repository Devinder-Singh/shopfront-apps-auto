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

Apps > Checkout > Collect > Pickup Points > Last Used Pickup Point - QASA-561
    [Tags]    QASA-561
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
    Click Pickup Point
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

Apps > Checkout > Collect > Pickup Points > Pickup Points ordering - QASA-578
    [Tags]    QASA-578
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
    Verify Text On Screen    Filter by Province:    ${MIN_TIMEOUT}
    Click Filter Province
    Click Western Cape Province
    Verify Text On Screen    Takealot Cape Town Warehouse Cape Town, Western Cape
    Click Pickup Point
    [Teardown]    Tear Down

Apps > Checkout > Collect > Shipping Option > Why the wait link (Lead-time info) - QASA-584
    [Tags]    QASA-584
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Leadtime Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Click Delivery Show Details
    Verify Text On Screen    Ordered from supplier: 5 to 7 working days    5s
    Click Back Screen
    Click Free Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment
    Close Application
    Start Application    ${False}
    Cancel Latest Order
    [Teardown]    Tear Down

Android > Checkout > Payment > Default Payment Method - QASA-560
    [Tags]    QASA-560
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
    Click Free Delivery
    Click Donate No Thanks
    Verify Element On Screen    ${btnCreditCard}    ${MIN_TIMEOUT}
    Click Change Payment Method
    Click Payfast Payment Method
    Click Pay With Payfast
    Verify Payfast Payment Text    Instant EFT
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
    Click Address
    Click Free Delivery
    Click Donate No Thanks
    Click Pay With Payfast
    Verify Payfast Payment Text    Instant EFT
    [Teardown]    Tear Down

Android > Checkout > Payment > Default Payment Method - QASA-866
    [Tags]    QASA-866
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
    Click Free Delivery
    Click Donate No Thanks
    Click Add Payment Voucher
    Enter Payment Voucher Code
    Click Apply Payment Voucher
    Verify Element On Screen Not    ${btnCreditCard}
    Verify Element On Screen Not    ${btnPayWithFast}
    [Teardown]    Tear Down

Apps > Checkout > Payments > Credit Card > PayGate > Successful Payment - QASA-543
    [Tags]    QASA-543
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
    Click Free Delivery
    Click Donate No Thanks
    Verify Element On Screen    ${btnCreditCard}    ${MIN_TIMEOUT}
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment
    Pay via Credit Card Paygate
    Click Track Order
    [Teardown]    Tear Down

Apps > Checkout > Payment > Credit Card > PayU Screens (UI Checks) - QASA-545
    [Tags]    QASA-545
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
    Click Free Delivery
    Click Donate No Thanks
    Verify Element On Screen    ${btnCreditCard}    ${MIN_TIMEOUT}
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment
    Click Cancel Screen
    Click Checkout
    Click Delivery
    Click Address
    Click Free Delivery
    Click Donate No Thanks
    Verify Element On Screen    ${btnCreditCard}    ${MIN_TIMEOUT}
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment
    Pay via Credit Card Paygate
    Click Track Order
    [Teardown]    Tear Down

Apps > Checkout > Payments > Credit Card > PayU > Unsuccessful Payment for an existing order - QASA-540
    [Tags]    QASA-540
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
    Click Free Delivery
    Click Donate No Thanks
    Verify Element On Screen    ${btnCreditCard}    ${MIN_TIMEOUT}
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment
    Click Cancel Screen
    Click Checkout
    Click Delivery
    Click Address
    Click Free Delivery
    Click Donate No Thanks
    Verify Element On Screen    ${btnCreditCard}    ${MIN_TIMEOUT}
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
    Verify Element On Screen    ${btnCreditCard}    ${MIN_TIMEOUT}
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment
    Pay via Credit Card Paygate    Test    Tester    4000019562093601
    Verify Text On Screen    Card Transaction Failed    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Checkout > Payment > Credit Card > PayGate Screens (UI Checks) - QASA-548
    [Tags]    QASA-548
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
    Click Free Delivery
    Click Donate No Thanks
    Verify Element On Screen    ${btnCreditCard}    ${MIN_TIMEOUT}
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment
    Pay via Credit Card Paygate    Test    Tester    4000019562093601
    Verify Text On Screen    Card Transaction Failed    ${MIN_TIMEOUT}
    Click Credit Card Retry
    Click Cancel Screen
    [Teardown]    Tear Down

Apps > Checkout > Payment > Credit Card > PayGate Screens (UI Checks) - QASA-867
    [Tags]    QASA-867
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
    Click Free Delivery
    Click Donate No Thanks
    Verify Element On Screen    ${btnCreditCard}    ${MIN_TIMEOUT}
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment
    Pay via Credit Card Paygate    Test    Tester    4000000000000002    05    2025    877    ${True}
    Click Track Order
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
    Click Address
    Click Free Delivery
    Click Donate No Thanks
    Verify Element On Screen    ${btnCreditCard}    ${MIN_TIMEOUT}
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment
    Delete Saved Credit Card
    [Teardown]    Tear Down

Apps > Checkout > Payments > Credit Card > PayU > Successful Payment for an existing order - QASA-549
    [Tags]    QASA-549
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
    Click Free Delivery
    Click Donate No Thanks
    Verify Element On Screen    ${btnCreditCard}    ${MIN_TIMEOUT}
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
    Verify Element On Screen    ${btnCreditCard}    ${MIN_TIMEOUT}
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment
    Pay via Credit Card Paygate    Test    Tester    4000000000000002    05    2025    877    ${True}
    Click Track Order
    [Teardown]    Tear Down

Apps > Checkout > Payments > Credit Card > PayU > Unsuccessful Payment - QASA-551
    [Tags]    QASA-551
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
    Click Free Delivery
    Click Donate No Thanks
    Verify Element On Screen    ${btnCreditCard}    ${MIN_TIMEOUT}
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment
    Pay via Credit Card Paygate    Test    Tester    4000019562093601
    Verify Text On Screen    Card Transaction Failed    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Click Order Awaiting Payment
    [Teardown]    Tear Down

Apps > Checkout > Payments > Credit Card > PayGate > Unsuccessful Payment - QASA-553
    [Tags]    QASA-553
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
    Click Free Delivery
    Click Donate No Thanks
    Verify Element On Screen    ${btnCreditCard}    ${MIN_TIMEOUT}
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment
    Pay via Credit Card Paygate    Test    Tester    4000000000000028
    Verify Text On Screen    Card Transaction Failed    ${MIN_TIMEOUT}
    Click Credit Card Retry
    Click Credit Card Pay New
    Pay via Credit Card Paygate    Test    Tester    4000000000000036
    Verify Text On Screen    Card Transaction Failed    ${MIN_TIMEOUT}
    Click Credit Card Retry
    Click Credit Card Pay New
    Pay via Credit Card Paygate    Test    Tester    5200000000000049
    Verify Text On Screen    Card Transaction Failed    ${MIN_TIMEOUT}
    Click Credit Card Retry
    Click Credit Card Pay New
    Pay via Credit Card Paygate    Test    Tester    5200000000000064
    Verify Text On Screen    Card Transaction Failed    ${MIN_TIMEOUT}
    Click Credit Card Retry
    Click Credit Card Pay New
    Pay via Credit Card Paygate    Test    Tester    4000002220000002
    Verify Text On Screen    Card Transaction Failed    ${MIN_TIMEOUT}
    Click Credit Card Retry
    Click Credit Card Pay New
    Pay via Credit Card Paygate    Test    Tester    4000000000000002
    Click Track Order
    Close Application
    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Verify Text On Screen    Delivery by    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Checkout > Delivery Options > Heavy Charge - QASA-842
    [Tags]    QASA-842
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Fridg
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Surcharge Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Verify Text On Screen    R 100    10s
    Click Pay With Credit Card
    Verify Card Payment
    Pay via Credit Card Paygate    Test    Tester    4000000000000002
    Click Track Order
    [Teardown]    Tear Down

Apps > Checkout > TV Licence Verification - QASA-828
    [Tags]    QASA-828
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Televisio
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout    
    Click Domestic TV Licence    Business
    Enter Business TV Licence    261607329    1234
    Click Back Screen
    Click Back Screen
    Click Domestic TV Licence    Holiday Home
    Enter Holiday Home TV Licence    1234
    Click Back Screen
    Click Back Screen
    Click Domestic TV Licence    Dealer
    Enter Dealer TV Licence    609800545    1234
    Click Back Screen
    Click Back Screen
    Click Domestic TV Licence    Holiday Home
    Enter Holiday Home TV Licence    69111452030816911145203081
    Verify Text On Screen    Your TV licence account is in arrears. You need to settle your account with the SABC before you can continue with your purchase    ${MIN_TIMEOUT}
    Click Cancel TV Licence
    Enter Holiday Home TV Licence    6911145203081
    Verify Text On Screen    Your TV licence account is in arrears. You need to settle your account with the SABC before you can continue with your purchase
    Click Cancel TV Licence
    Enter Holiday Home TV Licence    920503380109784
    Verify Text On Screen    No TV licence found for your ID
    Click Cancel TV Licence
    Enter Holiday Home TV Licence    5554565555555
    Verify Text On Screen    There was an error when attempting to validate your TV licence, please try again
    Click Cancel TV Licence
    Enter Holiday Home TV Licence    1
    Verify Text On Screen    Please contact the SABC call centre on (011) 330 9555 regarding your account
    Click Cancel Screen
    Click Back Screen
    Click Domestic TV Licence
    Click Verify TV Licence
    Verify Text On Screen    Please enter an SA ID / Passport Number
    Enter TV Licence    1234
    Click Delivery
    [Teardown]    Tear Down

Apps > Checkout > Payment > Gift Voucher & Coupon - QASA-544
    [Tags]    QASA-544
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
    Click Free Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Click Add Payment Voucher
    Enter Payment Voucher Code
    Click Apply Payment Voucher
    Click Back Payment Voucher
    Verify Payment Element Exists    ${rdoPaymentUseMyCredit}
    Verify Text On Screen    Use my Credit (R    ${MIN_TIMEOUT}
    Verify Payment Text    You don't owe us a cent. Your available credit balance covers the full value of your order
    Click Add Payment Voucher
    Enter Payment Voucher Used
    Click Apply Payment Voucher
    Verify Payment Text    Voucher has already been used    ${MIN_TIMEOUT}
    Click Back Payment Voucher
    Click Payment Confirm Order
    Click Track Order
    [Teardown]    Tear Down

Android > Checkout > Payment > Order Summary - QASA-595
    [Tags]    QASA-595
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Drone
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout    
    Click Delivery
    Click Address
    Click Free Delivery
    Click Payment Donate
    Verify Text On Screen    1 Item    ${MIN_TIMEOUT}
    Verify Text On Screen    Free    ${MIN_TIMEOUT}
    Verify Text On Screen    5    ${MIN_TIMEOUT}
    Click Add Payment Voucher
    Enter Payment Voucher Code
    Click Apply Payment Voucher
    Click Back Payment Voucher
    Verify Payment Element Exists    ${rdoPaymentUseMyCredit}
    Verify Text On Screen    Use my Credit (R    ${MIN_TIMEOUT}
    Verify Text On Screen    TO PAY    ${MIN_TIMEOUT}
    Click Payment Confirm Order
    Click Track Order
    [Teardown]    Tear Down

Apps > Checkout > Collect > Shipping Option > Collection cost Free for order = R 450 - QASA-575
    [Tags]    QASA-575
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    microwav
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point    Brackenfell Cape Town, Western Cape
    Wait Until Element Is Visible    ${btnFree}        ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Checkout > Payment > Pay With OZOW - QASA-533
    [Tags]    QASA-533
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
    Click Free Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Ozow Payment Method
    Click Pay With Ozow
    Click Ozow Payment Bank
    Enter Ozow Username Password Submit    dev@i-pay.co.za    T3mpP@ssw0rd
    Select Ozow Acc No Submit
    Enter Ozow OTP Submit
    Click Track Order
    [Teardown]    Tear Down

Apps > Checkout > Payment > Pay with eBucks screen - QASA-538
    [Tags]    QASA-538
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
    Click Pickup Point
    Click Free Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click eBucks Payment Method
    Click Pay With eBucks
    Enter EBUcks User ID and Password
    Click EBUcks Account
    Enter EBUcks Amount
    Enter EBUcks OTP
    Click Track Order
    [Teardown]    Tear Down
