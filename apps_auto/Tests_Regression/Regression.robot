*** Settings ***
Default Tags      regression
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Register & Login - QA-5329
    [Setup]    Start Application
    Click Menu
    Click Menu Register
    Register Takealot    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}
    Verify Text On Screen    Please enter your first name    30s
    Verify Text On Screen    Please enter your surname    1s
    Verify Text On Screen    Please enter your email address    1s
    Verify Text On Screen    Please enter your password    1s
    Verify Text On Screen    Please confirm your password    1s
    Click Back My Account
    Click Menu Register
    Register Takealot    AutoTest    Test    AutoTest10@take2.co.za    t@ke@!ot1234
    Click Back My Account
    Click Menu
    Click Menu Logout
    Click Menu Login
    Login Takealot    ${EMPTY}    ${EMPTY}
    Verify Text On Screen    Please enter your email address    30s
    Verify Text On Screen    Please enter your password    1s
    Login Takealot    AutoTest10@take2.co.za    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu Logout
    [Teardown]    Tear Down

Apps > Promotions (Android) Daily Deals - QA-5357
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Click Menu Daily Deals
    Verify Product Image
    Click Product Filter
    Select Filter Option    Baby & Toddler
    Click Apply Filter
    Click Product Daily Deals
    Click Add To Cart
    Click Increase Cart Quantity    4
    Click Go To Cart
    Click Item Promotion Text
    Verify Checkout Text    4 x R 
    Verify Checkout Text    1 x R 
    Verify Checkout Text    Daily Deals
    Verify Checkout Text    Only 4 per customer
    Verify Checkout Text    Normal Price
    Verify Checkout Text    Item Total
    [Teardown]    Tear Down

Apps > Promotions (Android) App Only Deals - QA-8409
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Click Menu Daily Deals
    Click App Only Deals
    Verify Product Image
    Click Product Filter
    Select Filter Option    Cellphones & Wearables
    Click Apply Filter
    Click Product Daily Deals
    Click Add To Cart
    Click Increase Cart Quantity    4
    Click Go To Cart
    Click Item Promotion Text
    Verify Checkout Text    4 x R 
    Verify Checkout Text    1 x R 
    Verify Checkout Text    App Only Deals
    Verify Checkout Text    Only 4 per customer
    Verify Checkout Text    Normal Price
    Verify Checkout Text    Item Total
    [Teardown]    Tear Down

Apps > Promotions (Android) Other Promo tabs - QA-8410
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Click Menu Daily Deals
    Click Wine Club Deals
    Verify Product Image
    Click Product Filter
    Select Filter Option    Home & Kitchen
    Click Apply Filter
    Click Product Daily Deals
    Click Add To Cart
    Click Increase Cart Quantity    4
    Click Go To Cart
    Click Item Promotion Text
    Verify Checkout Text    5 x R 
    Verify Checkout Text    Item Total
    [Teardown]    Tear Down

Apps > Promotions (Android) Set Bundle - QA-8367
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Hobbit Trilogy
    Click Product From Title    Hobbit Trilogy/The Lord of the Rings Trilogy: Extended...(Blu-ray)
#    Click Add Bundle To Cart
    Click Add To Cart
    Click Go To Cart
    Verify Text On Screen    Missed promotion:    30s
    Verify Text On Screen    VIEW BUNDLE    1s
    Tear Down
    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Hobbit Trilog
    Click Product From Title    Hobbit Trilogy/The Lord of the Rings Trilogy: Extended...(Blu-ray)
    Click Add Bundle To Cart
    Click Go To Cart
    Check Text On Screen Not    Missed promotion:
    Check Text On Screen Not    VIEW BUNDLE
    [Teardown]    Tear Down

Apps > Promotions (Android) Multi-Buys - QA-8411
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Dumi Mkoksta
    Click Product From Title    Dumi Mkokstad - Egameni Likajesu (CD)
    Click Shop The Deal
    Click Product From Title    Amazing Spiderman 2 (DVD)
    Click Add To Cart
    Click Go To Cart
    Verify Text On Screen    Missed promotion:    30s
    Verify Text On Screen    ADD 1 ITEM TO QUALIFY    1s
    Change Cart Quantity    2
    Check Text On Screen Not    Missed promotion:
    Check Text On Screen Not    ADD 1 ITEM TO QUALIFY
    [Teardown]    Tear Down

Apps > Promotions (Android) Unboxed & Other Offers - QA-8412
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Unboxed Dea
    Click Product from API
    Click Other Offers Add To Cart
    Click Go To Cart
    Click Checkout
    [Teardown]    Tear Down

Apps > Verify Home Screen - QA-5355
    [Setup]    Start Application
    Click Home
    Verify Home Screen Text    Daily Deals
    Click View All Daily Deals
    Click Product Daily Deals
    [Teardown]    Tear Down

Apps > Verify Home Screen 02 - QA-5355
    [Setup]    Start Application
    Click Home
    Verify Home Screen Text Not    Recommended For You
    Verify Home Screen Text Not    Recently Viewed
    Click Menu
    Click Menu Login
    Login Takealot    take2Automation+201905213934@gmail.com    t@ke@!ot1234
    Click Home
    Verify Home Screen Text    Recommended For You
    Verify Home Screen Text    Recently Viewed
    Click Clear All Recently Viewed
    Click Cancel Clear All Recently Viewed
    Click Clear All Recently Viewed
    Confirm Clear All Recently Viewed
    Verify Home Screen Text Not    Recently Viewed
    Verify Home Screen Text    Essential Campsite Supplies
    Click Menu
    Click Menu Shop By Department
    Verify Home Screen Text    Daily Deals
    Verify Home Screen Text    App Only Deals
    Verify Home Screen Text    Home Cook Essentials
    Verify Home Screen Text    Health & Personal Care
    Verify Home Screen Text    Essential Campsite Supplies
    Click Home Back
    Click Icon Daily Deals
    Click Product Daily Deals
    Click Back PDP
    Click Home Back
    Click Icon App Only Deals
    Click Product Daily Deals
    Click Back PDP
    Click Home Back
    Click Icon Home Cook Essentials
    Click Product Daily Deals
    Click Back PDP
    Click Home Back
    Click Icon Health & Personal Care
    Click Product Daily Deals
    [Teardown]    Tear Down

Apps > Verify Home Screen 03 - QA-5355
    [Setup]    Start Application
    Click Home
    Click Cart
    Verify PDP Screen Element    ${navCartScr}
    [Teardown]    Tear Down

Apps > Verify Home Screen 04 - QA-5355
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Home WishList
    Click Wishlist
    Click Wishlist Edit
    Select Wishlist Item
    Click Wishlist Delete Items
    Verify Wishlist Text    No items
    [Teardown]    Tear Down

Apps > Search - QA-5358
    [Setup]    Start Application
    Clear Environment
    Verify Home Menu
    Click Menu
    Verify Menu Items
    Click Menu Shop By Department
    Click Menu New To Electronics
    Click Product From Title    Fitbit Inspire 2 Fitness Tracker - Black
    Click Add To Cart
    [Teardown]    Tear Down

Apps > PLP - QA-5360
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Click Menu Daily Deals
    Click Product Daily Deals
    Verify Add To Wishlist
    Click Add To Cart
    Click Continue Shopping
    Click Search Icon
    Search Product    toy
    Click Product from API
    Click Add To Cart
    Click Continue Shopping
    Click Search Icon
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Continue Shopping
    Click Search Icon
    Search Product    johnnie wal
    Click Product from API
    Click Add To Cart
    Click Continue Shopping
    Click Search Icon
    Search Product    glass
    Click First Product from API
    Click Seller Name
    Click Product Daily Deals
    [Teardown]    Tear Down

Apps > PLP > Sort & Filter - QA-8340
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Search Product    pencil
    Click First Product from API
    Click Search Product Sort
    Click Sort High To Low
    Verify Sorted Products    Price+Descending
    Click Search Product Sort
    Click Sort Low To High
    Verify Sorted Products    Price+Ascending
    Click Search Product Sort
    Click Sort Top Rated
    Verify Sorted Products    Rating+Descending
    Click Search Product Sort
    Click Sort New Arrivals
    Verify Sorted Products    ReleaseDate+Descending
    Click Search Product Filter
    Click Filter Category
    Click Filter Office Stationery
    Click Filter Select Button
    Click Filter Apply Button
    Click Search Product Filter
    Click Filter Availability
    Click Filter In Stock
    Click Filter Apply Button
    Verify Filtered Products    Availability:0.0-0.0
    Click Search Product Filter
    Click Filter Brand
    Click Filter Brand Name
    Click Filter Select Button
    Click Filter Apply Button
    Verify Filtered Products    Brand:Meeco
    Click Search Product Filter
    Click Filter Colour
    Click Filter Colour Name
    Click Filter Select Button
    Click Filter Apply Button
    Verify Filtered Products    BasicColours:Blue
    Click Search Product Filter
    Click Filter Material
    Click Filter Material Name
    Click Filter Select Button
    Click Filter Apply Button
    Verify Filtered Products    ASMaterials:Nylon
    Click Search Product Filter
    Click Filter Rating
    Click Filter Rating Name
    Click Filter Apply Button
    Verify Filtered Products    Rating:4.0-5.0
    [Teardown]    Tear Down

Apps > PLP > Overflow Menus - QA-8341
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Search Product    pencil
    Click First Product from API
    Click Back My Account
    Click Home
    Search Product    pencil
    Click First Product from API
    Click More Options Menu
    Click Options Menu Home
    Click Home
    Search Product    pencil
    Click First Product from API
    Click More Options Menu
    Click Options Menu Categories
    Verify Text On Screen    Daily Deals    30s
    Click Home
    Search Product    pencil
    Click First Product from API
    Click More Options Menu
    Click Options Menu Deals
    Click Home
    Search Product    pencil
    Click First Product from API
    Click More Options Menu
    Click Options Menu Lists
    Verify Text On Screen    Wish List    30s
    Click Home
    Search Product    pencil
    Click First Product from API
    Click More Options Menu
    Click Options Menu Account
    Verify Text On Screen    Personal Details    30s
    [Teardown]    Tear Down

Apps > PDP - QA-5307
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Continue Shopping
    Click Add To Wishlist
    Verify Text On Screen    Description    30s
    Verify Text On Screen    Product Information    30s
    Verify Text On Screen    Write a Review    30s
    [Teardown]    Tear Down

Apps > PDP 02 - QA-5307
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Search Product    airtim
    Click First Product from API
    Click Airtime
    Click Add To Cart
    Click Continue Shopping
    Click Add To Wishlist
    Verify Text On Screen    Description    30s
    Verify Text On Screen    Product Information    30s
    Verify Text On Screen    Write a Review    30s
    [Teardown]    Tear Down

Apps > PDP 03 - QA-5307
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Search Product    Pencil
    Get Variant Product to Add To Cart
    Click Add To Wishlist
    Verify PDP Screen Element Not Exists    ${btnAddToCart}
    Verify Text On Screen    Description    30s
    Verify Text On Screen    Product Information    30s
    Verify Text On Screen    Write a Review    30s
    Click Blue Colour Option
    Click Add To Cart
    [Teardown]    Tear Down

Apps > PDP 04 - QA-5307
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Search Product    pencil
    Get Variant Product to Add To Cart
    Click PDP Write Review
    Click Review Rating
    Enter Review Message
    Click Review Submit
    Verify Text On Screen    You Might Also Like    30s
    [Teardown]    Tear Down

Apps > Merchandised Landing Pages (CMS Widgets) - QA-5359
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    [Teardown]    Tear Down

Apps > Merchandised Landing Pages (CMS Widgets) 02 - QA-5359
    [Setup]    Start Application
    Click Menu
    Click Menu Shop By Department
    Click Menu Sport and Fitness
    Click Product Widget First View All
    Click Product Daily Deals
    [Teardown]    Tear Down

Apps > Merchandised Landing Pages (CMS Widgets) 03 - QA-5359
    [Setup]    Start Application
    Click Home
    Click Search Home
    Click Search Recent
    [Teardown]    Tear Down

Apps > Merchandised Landing Pages (CMS Widgets) 04 - QA-5359
    [Setup]    Start Application
    Click Home
    Click Search Home
    Click Search Trending
    [Teardown]    Tear Down

Apps > Wishlist (Android) - QA-5367
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Wishlist Nav Bar
    Verify Text On Screen    Trending on Takealot    30s
    Verify Text On Screen    Wish List    30s
    Verify Text On Screen    DEFAULT    30s
    Click Create Wishlist
    [Teardown]    Tear Down

Apps > Wishlist (Android) 02 - QA-5367
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Wishlist
    [Teardown]    Tear Down

Apps > Wishlist (Android) 03 - QA-5367
    [Setup]    Start Application
    Click Home
    Click Wishlist Nav Bar
    Navigate to Wishlist Auto
    Click Wishlist Add To Cart
    Click More Options Menu
    Verify Text On Screen    Share List    30s
    Verify Text On Screen    Edit    30s
    Verify Text On Screen    Rename List    30s
    Verify Text On Screen    Delete List    30s
    [Teardown]    Tear Down

Apps > Wishlist (Android) 04 - QA-5367
    [Setup]    Start Application
    Click Home
    Click Wishlist Nav Bar
    Navigate to Wishlist Auto
    Click Cart
    Click Checkout
    [Teardown]    Tear Down

Apps > Wishlist (Android) 05 - QA-5367
    [Setup]    Start Application
    Click Home
    Click Wishlist Nav Bar
    Navigate to Wishlist Auto
    Click More Options Menu
    Click Delete Wishlist
    [Teardown]    Tear Down

Apps > Wishlist (Android) 06 - QA-5367
    [Setup]    Start Application
    Click Home
    Click Wishlist Nav Bar
    Navigate to Wishlist
    Click More Options Menu
    Check Text On Screen Not    Delete List
    [Teardown]    Tear Down

Apps > Wishlist (Android) 07 - QA-5367
    [Setup]    Start Application
    Click Home
    Click Search Home
    Verify Text On Screen    Recent Searches    30s
    Verify Text On Screen    Trending    30s
    [Teardown]    Tear Down

Apps > Cart & Wishlist - QA-5361
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Click Menu Daily Deals
    Click Product Daily Deals
    Click Add To Cart
    Click Increase Cart Quantity    2
    Click Go To Cart
    Click Checkout Delete First Item
    [Teardown]    Tear Down

Apps > Cart & Wishlist 02 - QA-5361
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Click Menu Shop By Department
    Click Menu Sport and Fitness
    Click Product Daily Deals
    Click Add To Wishlist
    Click Wishlist
    Click Wishlist Add To Cart
    Click Cart
    Click Checkout
    [Teardown]    Tear Down

Apps > Cart & Wishlist 03 - QA-5361
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Search Product Wishlist
    Verify Text On Screen    Item added to Wish List    30s
    [Teardown]    Tear Down

Apps > Cart & Wishlist 04 - QA-5361
    [Setup]    Start Application
    Click Home
    Click Wishlist Nav Bar
    Navigate to Wishlist
    Click More Options Menu
    Click Wishlist Delete Items
    [Teardown]    Tear Down

Apps > Cart & Wishlist 05 - QA-5361
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Search Product Wishlist
    Verify Text On Screen    Item added to Wish List    30s
    [Teardown]    Tear Down

Apps > Cart & Wishlist 06 - QA-5361
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout Move To Wishlist First Item
    Verify Text On Screen    Item(s) moved to list    30s
    [Teardown]    Tear Down

Apps > My Account Verifications - QA-5356
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Verify Text On Screen    Order History    30s
    Click Back Screen
    Click Menu Exchanges And Returns
    Verify Text On Screen    Open file with    30s
    Verify Text On Screen    Chrome    1s
    Click Menu Exchanges And Returns
    Click Menu Personal Detail
    Update Personal Detail Name    AutoTester
    Verify Text On Screen    Your name has been successfully updated    30s
    Update Personal Detail Email
    Verify Text On Screen    Your email address has been successfully updated    30s
    Update Personal Detail Mobile
    Verify Text On Screen    Your mobile number has been successfully updated    30s
    Update Personal Detail Password
    Verify Text On Screen    Your mobile number has been successfully updated    30s
    Update Personal Detail Business
    Verify Text On Screen    Your business details have been successfully updated    30s
    Click Menu Address Book
    Click Add Delivery Address
    Click Residential
    Add Delivery Address My Acc    Tester Residential    0723456778    38 Baxter Way
    Click Back Delivery Android
    Click Menu Address Book
    Edit Delivery Address Street My Acc    13 Caro Road
    Click Back Delivery Android
    Click Menu Address Book
    Click Delete Address
    Verify Text On Screen    Address successfully deleted    30s
    [Teardown]    Tear Down

Apps > My Account Verifications 02 - QA-5356
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Verify Text On Screen    12 Ridge Way, Pinelands, Cape Town, Western Cape, 7405    30s
    [Teardown]    Tear Down

Apps > My Account Verifications 03 - QA-5356
    [Setup]    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Load Gift Voucher
    Apply Gift Voucher Code
    [Teardown]    Tear Down

Apps > My Account Verifications 04 - QA-5356
    [Setup]    Start Application
    Click Menu
    Click Menu My Account
    Verify Text On Screen    Available Credit: R    30s
    Click Menu Credits Refunds
    Verify Text On Screen    Credit will be automatically applied to your next purchase    30s
    Verify Text On Screen    REFUND MY CREDIT    30s
    Verify Text On Screen    REDEEM GIFT VOUCHER    30s
    Click Menu Credit History
    Verify Text On Screen    Available Credit    30s
    Verify Text On Screen    Gift Voucher:    1s
    Click Back Credit and Refunds
    Click Menu Refund History
    Verify Text On Screen    You have no refund history    30s
    [Teardown]    Tear Down

Apps > My Account Verifications 05 - QA-5356
    [Setup]    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Settings
    Verify Text On Screen    Notifications    30s
    Verify Text On Screen    Login and Security    5s
    Click Back Screen
    Click Menu Takealot Group
    Verify Text On Screen    Mr. D    30s
    Verify Text On Screen    Superbalist    5s
    Click Back Screen
    Click Menu Help
    Verify Text On Screen    Open file with    30s
    Verify Text On Screen    Chrome    5s
    [Teardown]    Tear Down

Apps > Order Tracking - QA-5274
    [Setup]    Start Application
    Clear Environment
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
    Click Pay With Credit Card
    Verify Card Payment
    [Teardown]    Tear Down

Apps > Order Tracking 02 - QA-5274
    [Setup]    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Click Order Awaiting Payment
    Verify Product Added to Cart
    Verify Text On Screen    ORDER SUMMARY    1s
    Verify Text On Screen    1 Item    1s
    Verify Text On Screen    Delivery    1s
    Verify Text On Screen    Order Total    1s
    Verify Text On Screen    To Pay    1s
    Verify Text On Screen    PAYMENT METHOD    1s
    Verify Text On Screen    Credit Card    1s
    Verify Text On Screen    DELIVERY METHOD    1s
    Verify Text On Screen    First Delivery Free - Standard    1s
    Verify Text On Screen    SHIPPING ADDRESS    1s
    Verify Text On Screen    Test    1s
    Verify Text On Screen    12 Ridge Way    1s
    Verify Text On Screen    Green Point    1s
    Verify Text On Screen    Cape Town    1s
    Verify Text On Screen    8005    1s
    Click Order Pay Now
    Click Change Payment Method
    Click Payfast Payment Method
    Click Pay With Payfast
    Verify Payfast Payment Text    Secure payments by PayFast
    [Teardown]    Tear Down

Apps > Order Tracking 03 - QA-5274
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
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
    Verify Card Payment
    [Teardown]    Tear Down

Apps > Order Tracking 04 - QA-5274
    [Setup]    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Click Order Awaiting Payment
    Verify Product Added to Cart
    Verify Text On Screen    ORDER SUMMARY    1s
    Verify Text On Screen    1 Item    1s
    Verify Text On Screen    Delivery    1s
    Verify Text On Screen    Order Total    1s
    Verify Text On Screen    To Pay    1s
    Verify Text On Screen    PAYMENT METHOD    1s
    Verify Text On Screen    Credit Card    1s
    Verify Text On Screen    DELIVERY METHOD    1s
    Verify Text On Screen    First Delivery Free - Standard    1s
    Verify Text On Screen    SHIPPING ADDRESS    1s
    Verify Text On Screen    Test    1s
    Verify Text On Screen    12 Ridge Way    1s
    Verify Text On Screen    Green Point    1s
    Verify Text On Screen    Cape Town    1s
    Verify Text On Screen    8005    1s
    Click Order Pay Now
    Click Change Payment Method
    Click Payfast Payment Method
    Click Pay With Payfast
    Verify Payfast Payment Text    Secure payments by PayFast
    [Teardown]    Tear Down

Apps > Order Tracking 05 - QA-5274
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Fridg
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
    Click Back Payment Voucher
    Click Payment Confirm Order
    [Teardown]    Tear Down

Apps > Order Tracking 06 - QA-5274
    [Setup]    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Click Order Awaiting Payment
    Verify Product Added to Cart
    Verify Text On Screen    ORDER SUMMARY    1s
    Verify Text On Screen    1 Item    1s
    Verify Text On Screen    Delivery    1s
    Verify Text On Screen    Order Total    1s
    Verify Text On Screen    To Pay    1s
    Verify Text On Screen    PAYMENT METHOD    1s
    Verify Text On Screen    Credit Card    1s
    Verify Text On Screen    DELIVERY METHOD    1s
    Verify Text On Screen    First Delivery Free - Standard    1s
    Verify Text On Screen    SHIPPING ADDRESS    1s
    Verify Text On Screen    Test    1s
    Verify Text On Screen    12 Ridge Way    1s
    Verify Text On Screen    Green Point    1s
    Verify Text On Screen    Cape Town    1s
    Verify Text On Screen    8005    1s
    Click Order Pay Now
    Click Change Payment Method
    Click Payfast Payment Method
    Click Pay With Payfast
    Verify Payfast Payment Text    Secure payments by PayFast
    [Teardown]    Tear Down

Apps > Cart (Android) - QA-5298
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout Delete First Item
    Click Checkout Cart Undo
    Click Checkout
    [Teardown]    Tear Down

Apps > Cart (Android) 02 - QA-5298
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout Move To Wishlist First Item
    Verify Text On Screen    Item(s) moved to list    30s
    Verify Text On Screen    Your Shopping Cart is Empty    5s
    Verify Text On Screen    Trending on Takealot    5s
    Verify Element On Screen    ${btnCartContinueShopping}    1s
    Add To Cart Trending First Item
    Click Checkout
    [Teardown]    Tear Down

Apps > Cart (Android) 03 - QA-5298
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Change Cart Quantity    2
    Click Checkout
    [Teardown]    Tear Down

Apps > Cart (Android) 04 - QA-5298
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    airtim
    Click First Product from API
    Click Airtime
    Click Add To Cart
    Click Continue Shopping
    Click Search Icon
    Search Product    ebook
    Click First Product from API
    Click Add To Cart
    Click Continue Shopping
    Click Search Icon
    Search Product    vouche
    Click First Product from API
    Click Add To Cart
    Click Go To Cart
    Verify Text On Screen    The gift voucher will be delivered via email to the recipient    30s
    Verify Text On Screen    The eBook will be added to your Digital Library, ready for you to download    1s
    Verify Text On Screen    The prepaid code will be delivered to you via email    1s
    Verify Text On Screen    This product is not eligible for Cash on Delivery (COD)    1s
    Verify Text On Screen    Cart    1s
    Verify Element On Screen    ${btnWishListIcon}    1s
    [Teardown]    Tear Down
