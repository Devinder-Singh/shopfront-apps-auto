*** Settings ***
Default Tags      regression
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Register & Login - QA-5329
    [Tags]    QA-5329
    [Setup]    Start Application
    Click Menu
    Click Menu Register
    Register Takealot Unverify    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}
    Verify Register Takealot Blank
    Click Cancel Screen
    Click Menu Register
    Register Takealot    AutoTest    Test    ?    t@ke@!ot1234
    Click Menu
    Click Menu iOS
    Click Menu Logout
    Click Menu iOS
    Click Menu Login
    Login Takealot Only    ${EMPTY}    ${EMPTY}
    Verify Text On Screen    Please enter your email address    10s
    Verify Text On Screen    Please enter your password    1s
    Login Takealot    ${new_email_address}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu Logout
    [Teardown]    Tear Down

Apps > Promotions (Android) Daily Deals - QA-5357 / QA-7443
    [Tags]    QA-5357    QA-7443
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu Daily Deals
    Verify Product Image
    Click Product Filter
    Select Daily Deals Filter Option From API
    Click Apply Filter
    Click Filter Product from API
    Click Add To Cart
    Click Go To Cart
    Change Cart Quantity Android    4
    Click Item Promotion Text
    Verify Text On Screen    4 x R    10s
    Verify Text On Screen    Daily Deals    1s
    Verify Text On Screen    Only 4 per customer    1s
    Verify Text On Screen    Item Total    1s
    [Teardown]    Tear Down

Apps > Promotions (Android) App Only Deals - QA-8409 / QA-7443
    [Tags]    QA-8409    QA-7443
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Click Menu Daily Deals
    Click App Only Deals
    Verify Product Image
    Click Product Filter
    Select App Only Deals Filter Option From API
    Click Apply Filter
    Click Filter Product from API
    Click Add To Cart
    Click Go To Cart
    Change Cart Quantity Android    4
    Click Item Promotion Text
    Verify Text On Screen    4 x R    10s
    Verify Text On Screen    App Only Deals    1s
    Verify Text On Screen    Only 4 per customer    1s
    Verify Text On Screen    Item Total    1s
    [Teardown]    Tear Down

Apps > Promotions (Android) Other Promo tabs - QA-8410 / QA-7443
    [Tags]    QA-8410    QA-7443
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Click Menu Daily Deals
    Select Third Deals From API
    Verify Product Image
    Click Product Filter
    Select Third Deals Filter Option From API
    Click Apply Filter
    Click Filter Product from API
    Click Add To Cart
    Click Go To Cart
    Change Cart Quantity Android    5
    Click Item Promotion Text
    Verify Text On Screen    5 x R    10s
    Verify Element On Screen    ${query_result_DealsName}    2s
    Verify Text On Screen    Item Total    1s
    [Teardown]    Tear Down

Apps > Promotions (Android) Set Bundle - QA-8367 / QA-7443
    [Tags]    QA-8367    QA-7443
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Abstinence
    Click Product From Title    Abstinence Cape Fynbos distilled spirit non-alcoholic 750ml
    Click Add To Cart
    Click Go To Cart
    Verify Text On Screen    Missed promotion    30s
    Verify Text On Screen Android    VIEW BUNDLE    1s
    Verify Text On Screen iOS    View Bundle    1s
    Close Application
    Start Application
#    Clear Environment
    Click Home
    Click Search Home
    Search Product    Abstinence
    Click Product From Title    Abstinence Cape Fynbos distilled spirit non-alcoholic 750ml
    Click Add Bundle To Cart
    Click Go To Cart
    Wait for Checkout
    Check Text On Screen Not    Missed promotion
    Check Text On Screen Not    VIEW BUNDLE
    Check Text On Screen Not    View Bundle
    [Teardown]    Tear Down

Apps > Promotions (Android) Multi-Buys - QA-8411 / QA-7443
    [Tags]    QA-8411    QA-7443
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Accessible File
    Click Product From Title    Treeline Accessible Files Pink Foolscap - Pack of 4
    Click Add To Cart
    Click Go To Cart
    Verify Text On Screen    Missed promotion    30s
    Verify Text On Screen Android    ADD 1 ITEM TO QUALIFY    1s
    Verify Text On Screen iOS    Add 1 item to qualify    1s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Accessible File
    Click Product From Title    Treeline Accessible Files Pink Foolscap - Pack of 4
    Click Shop The Deal
    Click Product From Title    Parrot Products Eraser Whiteboard (95*50mm 12 Peel Off Layers)
    Click Add To Cart
    Click Go To Cart
#    Change Cart Quantity Android    2
#    Click Add Items to Qualify iOS
#    Click Product From Title    Teddy Finger Paint - 4 x 100ml
#    Click Add To Cart
#    Click Go To Cart
    Check Text On Screen Not    Missed promotion
    Check Text On Screen Not    ADD 1 ITEM TO QUALIFY
    Check Text On Screen Not    Add 1 item to qualify
    [Teardown]    Tear Down

Apps > Promotions (Android) Unboxed & Other Offers - QA-8412 / QA-7443
    [Tags]    QA-8412    QA-7443
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Unboxed Dea
    Click Product From Title    HP 123 Black Ink Cartridge
    Click Other Offers Add To Cart
    Click Go To Cart
    Click Checkout
    [Teardown]    Tear Down

Apps > Verify Home Screen - QA-5355
    [Tags]    QA-5355
    [Setup]    Start Application
    Click Home
    Verify Text On Screen    Daily Deals    30s
    Click View All Daily Deals
    Click Daily Deals Product from API
    [Teardown]    Tear Down

Apps > Verify Home Screen - QA-8876
    [Tags]    QA-8876
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Close Application
    Start Application    ${False}
    Click Home
    Verify Element On Screen Not    Recommended For You    15s
    Verify Element On Screen Not    Recently Viewed    15s
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Close Application
    Start Application    ${False}
    Verify Text On Screen Scroll    Recommended For You    1s    ${windowScroll}    ${btnSearchHome}
    Verify Text On Screen Scroll    Recently Viewed    1s    ${windowScroll}    ${btnSearchHome}
    Click Clear All Recently Viewed
    Click Cancel Clear All Recently Viewed
    Click Clear All Recently Viewed
    Confirm Clear All Recently Viewed
    Check Text On Screen Not    Recently Viewed
    Click Menu
    Click Menu Shop By Department
    Verify Text On Screen    Daily Deals    30s
    Verify Text On Screen Android    App Only Deals    1s
    Verify Text On Screen iOS    App Only    1s
#    Verify Text On Screen    Gaming    1s
#    Verify Text On Screen    Health & Personal Care    1s
#    Verify Text On Screen    Essential Campsite Supplies    1s
    Click Icon Daily Deals
    Click Daily Deals Product from API
    Verify Element On Screen    ${btnAddToCart}    30s
    Click Back Android
    Verify Element On Screen Android    ${btnProductSearchFilter}    30s
    Click Back Android
    Click Back iOS    Deals
    Verify Element On Screen iOS    ${btnProductSearchFilter}    30s
    Click Back iOS    Back
    Click Icon App Only Deals
    Click App Only Deals Product from API
    Verify Element On Screen    ${btnAddToCart}    30s
    Click Back Android
    Swipe Down    ${windowScroll}
    Verify Element On Screen Android    ${btnProductSearchFilter}    30s
    Click Back Android
    Click Back iOS    Deals
    Verify Element On Screen iOS    ${btnProductSearchFilter}    30s
    Click Back iOS    Back
    Click Icon Daily Deals
    Select Third Deals From API
    Click Third Tab Product from API
#    Click Back PDP
#    Click Home Back
    [Teardown]    Tear Down

Apps > Verify Home Screen - QA-8877
    [Tags]    QA-8877
    [Setup]    Start Application
    Click Home
    Click Home Cart
    Verify Text On Screen    Cart    30s
    [Teardown]    Tear Down

Apps > Verify Home Screen - QA-8878
    [Tags]    QA-8878
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Wishlist
    Click Wishlist
    Close Application
    Start Application    ${False}
    Click Home
    Click Home WishList
    Click Wishlist Edit
    Select Wishlist Item
    Click Wishlist Delete Items
    Verify Text On Screen Android    This list is empty    30s
    [Teardown]    Tear Down

Apps > Search - QA-5358
    [Tags]    QA-5358
    [Setup]    Start Application
    Clear Environment
    Verify Home Menu
    Click Menu
    Verify Menu Items
    Click Menu Shop By Department
    Click Menu Sport and Fitness
    Click Product Auto from API
    Click Add To Cart
    [Teardown]    Tear Down

Apps > PLP - QA-5360
    [Tags]    QA-5360
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Click Menu Daily Deals
    Click Daily Deals Product from API
    Verify Add To Wishlist
    Click Add To Cart
    Verify Element On Screen    ${btnGoToCart}    30s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    toy
    Click Product from API
    Click Add To Cart
    Verify Element On Screen    ${btnGoToCart}    30s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Verify Element On Screen    ${btnGoToCart}    30s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    johnnie wal
    Click Product from API
    Click Add To Cart
    Verify Element On Screen    ${btnGoToCart}    30s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    glass
    Click First Product from API
    Click Seller Name
    Click Product Seller Deals
    [Teardown]    Tear Down

Apps > PLP > Sort - QA-8889
    [Tags]    QA-8889
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    pencil
    Click Search Product Sort
    Click Sort High To Low
    Verify Sorted Products    Price+Descending
    Swipe Down    ${windowScroll}
    Click Search Product Sort
    Click Sort Low To High
    Verify Sorted Products    Price+Ascending
    Swipe Down    ${windowScroll}
    Click Search Product Sort
    Click Sort Top Rated
    Verify Sorted Products    Rating+Descending
    Swipe Down    ${windowScroll}
    Click Search Product Sort
    Click Sort New Arrivals
    Verify Sorted Products    ReleaseDate+Descending
    [Teardown]    Tear Down

Apps > PLP > Mulit-Filter - QA-8340
    [Tags]    QA-8340
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    pencil
    Click Search Product Filter
    Click Filter Category
    Click Filter Office Stationery
    Click Filter Select Button
    Click Filter Apply Button
    [Teardown]    Tear Down

#Apps > PLP > Mulit-Filter 02 - QA-8340
#    [Tags]    QA-8340
#    [Setup]    Start Application
#    Click Home
#    Click Search Home
#    Search Product    pencil
#    Click Search Product Filter
#    Click Filter Availability
#    Click Filter In Stock
#    Click Filter Select Button iOS
#    Click Filter Apply Button
#    Verify Filtered Products    Availability:0.0-0.0
#    [Teardown]    Tear Down

#Apps > PLP > Mulit-Filter 03 - QA-8340
#    [Tags]    QA-8340
#    [Setup]    Start Application
#    Click Home
#    Click Search Home
#    Search Product    pencil
#    Click Search Product Filter
#    Click Filter Brand
#    Click Filter Brand Name
#    Click Filter Select Button
#    Click Filter Apply Button
#    Verify Filtered Products    Brand:Meeco
#    [Teardown]    Tear Down

#Apps > PLP > Mulit-Filter 04 - QA-8340 / QA-8910
#    [Tags]    QA-8340    QA-8910
#    [Setup]    Start Application
#    Click Home
#    Click Search Home
#    Search Product    pencil
#    Click Search Product Filter
#    Click Filter Colour
#    Click Filter Colour Name
#    Click Filter Select Button
#    Click Filter Apply Button
#    Verify Filtered Products    BasicColours:Blue
#    [Teardown]    Tear Down

#Apps > PLP > Mulit-Filter 05 - QA-8340
#    [Tags]    QA-8340
#    [Setup]    Start Application
#    Click Home
#    Click Search Home
#    Search Product    pencil
#    Click Search Product Filter
#    Click Filter Material
#    Click Filter Material Name
#    Click Filter Select Button
#    Click Filter Apply Button
#    Verify Filtered Products    ASMaterials:Nylon
#    [Teardown]    Tear Down

#Apps > PLP > Mulit-Filter 06 - QA-8340 / QA-8910
#   [Tags]    QA-8340    QA-8910
#    [Setup]    Start Application
#    Click Home
#    Click Search Home
#    Search Product    pencil
#    Click Search Product Filter
#    Click Filter Rating
#    Click Filter Rating Name
#    Click Filter Apply Button
#    Verify Filtered Products    Rating:4.0-5.0
#    [Teardown]    Tear Down

Apps > PLP > Overflow Menus - QA-8341
    [Tags]    QA-8341
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    30s
    Click Back Android
    Click Back Android
    Click Back iOS    pencil case
    Click Back iOS    Back
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    30s
    Click More Options Menu Android
    Click Options Menu Home
    Click Back iOS    pencil case
    Click Back iOS    Back
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    30s
    Click More Options Menu Android
    Click Options Menu Categories
    Click Back iOS    pencil case
    Click Back iOS    Back
    Verify Text On Screen    Daily Deals    30s
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    30s
    Click More Options Menu Android
    Click Options Menu Deals
    Click Back iOS    pencil case
    Click Back iOS    Back
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    30s
    Click More Options Menu Android
    Click Options Menu Lists
    Click Back iOS    pencil case
    Click Back iOS    Back
    Verify Text On Screen Android    Wish List    30s
    Verify Text On Screen ios    My Lists    30s
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    30s
    Click More Options Menu Android
    Click Options Menu Account
    Click Back iOS    pencil case
    Click Back iOS    Back
    Verify Text On Screen Android    Personal Details    30s
    [Teardown]    Tear Down

Apps > PDP - QA-5307
    [Tags]    QA-5307
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Product Text    ${query_result_CartProduct}
    Click Add To Wishlist Only
    Verify Text On Screen    Item added to Wish List    30s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    disposable mas
    Get Sponsored Product Detail
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    Verify Text On Screen    Sponsored    2s
    Verify Text On Screen    % OFF    2s
    Verify Text On Screen    ${query_result_adProductStatus}    2s
#    Verify Text On Screen    ${query_result_adProductRating}
    Verify Text On Screen    ${query_result_adProductPrice}    2s
#    Verify Text On Screen    ${query_result_adProductListPrice}    2s
    Verify Text On Screen    ${query_result_adProductBrand}    2s
    Click Product From Title    ${query_result_adProductTitle}
    Verify Text On Screen Scroll    Related Products    1s    ${windowScroll}    ${btnAddToCart}
    Verify Text On Screen    Sponsored    5s
    [Teardown]    Tear Down

Apps > PDP - QA-8890
    [Tags]    QA-8890
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    airtim
    Click Variant Product from API
    Click Product Variant From API
    Click Add To Cart
    Click Go To Cart
    Click Product Text    ${query_result_CartProduct}
    Click Product Variant From API
    Click Add To Wishlist Only
    Verify Text On Screen    Item added to Wish List    30s
    [Teardown]    Tear Down

Apps > PDP - QA-8891
    [Tags]    QA-8891
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    jean
    Click Variant Product from API
    Verify PDP Screen Element Not Exists    ${btnAddToCart}
    Verify PDP Screen Element Not Exists    ${btnAddWishlist}
    [Teardown]    Tear Down

Apps > PDP - QA-8892
    [Tags]    QA-8892
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
    Search Product    jean
    Click Variant Product from API
    Click PDP Write Review
    Click Review Rating
    Enter Review Message    Auto Test
    Click Review Submit
    Verify Text On Screen    Thank you for your review    30s
    Click PDP Write Review
    Click Review Rating
    Enter Review Message    Auto Test
    Click Review Submit
    Verify Text On Screen    You've already submitted a review for this product    30s
    Click Back Android
    Click Back iOS    ${query_result_CartProduct}
    Click PDP Show All Reviews
    Click Review Sort
    Click Review Sort Most Helpful
    Click Review Sort
    Click Review Sort Most Recent
    Click Review Helpful
    Verify Text On Screen    Thank you for your feedback    10s
    Click Review Filter
    Click Review Filter Rating
    Click Review Filter Rating Five
    Click Review Filter Done
    Click Review Filter Apply
    Verify Element On Screen    ${btnReviewFilter}    15s
    Click Review Icon More
    Click Review Report
    Verify Element On Screen    Your report has been submitted    15s
    Close Application
    Start Application
    Click Menu
    Click Menu Login
    Close Application
    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    jean
    Click Variant Product from API
    Click PDP Write Review
    Verify Element On Screen    ${btnLogin}    15s
    [Teardown]    Tear Down

Apps > PDP - QA-8893
    [Tags]    QA-8893
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    jean
    Click Variant Product from API
    Verify PDP Screen Element Not Exists    ${btnAddToCart}
    Click Product Variant From API
    Click Add To Wishlist Only
    Verify Text On Screen    Item added to Wish List    30s
    Click Add To Cart
    [Teardown]    Tear Down

Apps > Merchandised Landing Pages (CMS Widgets) - Carousel Widget - QA-5359
    [Tags]    QA-5359
    [Setup]    Start Application
    Click Menu
    Click Menu Shop By Department
    Click Menu Department    Beauty
    Click Product Widget Carousel
    Verify Product Widget Navigation
    [Teardown]    Tear Down

Merchandised Landing Pages (CMS Widgets) - Banner Pair Widget - QA-8901
    [Tags]    QA-8901
    [Setup]    Start Application
    Click Menu
    Click Menu Shop By Department
    Click Menu Department    Beauty
    Click Product Widget Banner
    Verify Product Widget Navigation
    [Teardown]    Tear Down

Apps > Merchandised Landing Pages (CMS Widgets) - QA-8902
    [Tags]    data    QA-8902
    [Setup]    Start Application
    Click Home
    Click Search Home
    Verify Text On Screen    Trending    30s
    Click Search Trending
    [Teardown]    Tear Down

Merchandised Landing Pages (CMS Widgets) -> Product List Widget - QA-8903
    [Tags]    QA-8903
    [Setup]    Start Application
    Click Menu
    Click Menu Shop By Department
    Click Menu Department    Beauty
    Click Product Widget Product
    Verify Product Widget Navigation
    [Teardown]    Tear Down

Merchandised Landing Pages (CMS Widgets) - Image List Widget - QA-8904
    [Tags]    QA-8904
    [Setup]    Start Application
    Click Menu
    Click Menu Shop By Department
    Click Menu Department    Beauty
    Click Product Widget Image
    Verify Product Widget Navigation
    [Teardown]    Tear Down

Merchandised Landing Pages (CMS Widgets) - Contextual Navigation Widget - QA-8905
    [Tags]    QA-8905
    [Setup]    Start Application
    Click Menu
    Click Menu Shop By Department
    Click Menu Department    Beauty
    Click Product Widget Image
    Verify Product Widget Navigation
    [Teardown]    Tear Down

Apps > Wishlist (Android) - QA-5367
    [Tags]    android    QA-5367
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Wishlist Nav Bar
    Verify Text On Screen Android    Wish List    30s
    Verify Text On Screen Android    Trending on Takealot    1s
    Verify Text On Screen Android    DEFAULT    1s
    Verify Text On Screen iOS    Wish List    30s
    Verify Text On Screen iOS    Trending on Takealot    1s
    Verify Text On Screen iOS    DEFAULT    1s
    Click Create Wishlist
    [Teardown]    Tear Down

Apps > Wishlist (Android) > Delete List - QA-8906
    [Tags]    QA-8906
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Wishlist
    Close Application
    Start Application
    Click Home
    Click Wishlist Nav Bar
    Click Wishlist Default
    Click Wishlist Add To Cart
    Click Back Android
    Click Back iOS    My Lists
    Click Home Cart
    Click Checkout
    Close Application
    Start Application
    Click Home
    Click Wishlist Nav Bar
    Click Create Wishlist
    Navigate to Wishlist Auto
    Click More Options Menu Android
    Verify Text On Screen Android    Rename List    30s
    Verify Text On Screen Android    Delete List    1s
    Click Delete Wishlist
    [Teardown]    Tear Down

Apps > Wishlist (Android) > Bottom Navigation - QA-8907
    [Tags]    QA-8907
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Wishlist
    Close Application
    Start Application    ${False}
    Click Home
    Click Wishlist Nav Bar
    Click Wishlist Default
    Click Wishlist Add To Cart
    Click More Options Menu
    Verify Text On Screen Android    Share List    30s
    Verify Text On Screen iOS    Share    30s
    Verify Text On Screen    Edit    1s
    [Teardown]    Tear Down

Apps > Wishlist (iOS) - QA-5361
    [Tags]    QA-5361
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Click Menu Daily Deals
    Click Daily Deals Product from API
    Click Add To Cart
    Click Go To Cart
    Change Cart Quantity Android    2
    Click Checkout Delete First Item
    Verify Text On Screen iOS    No items    30s
    Verify Text On Screen Android    Your Shopping Cart is Empty    30s
    [Teardown]    Tear Down

#Wishlist icon on PLP screen is not unique
#Apps > Cart (iOS) - QA-8908
#    [Tags]    QA-8908
#    [Setup]    Start Application
#    Clear Environment
#    Click Menu
#    Click Menu Shop By Department
#    Click Menu Sport and Fitness
#    Click Product Auto from API
#    Click Add To Wishlist
#    Click Wishlist
#    Click Wishlist Add To Cart
#    Click Back Android
#    Click Back iOS    My Lists
#    Click Home Cart
#    Click Checkout
#    Close Application
#    Start Application
#    Clear Environment
#    Click Home
#    Click Search Home
#    Search Product    Pencil
#    Click Search Product Wishlist
#    Verify Text On Screen Android    Item added to Wish List    30s
#    Close Application
#    Start Application    ${False}
#    Click Home
#    Click Wishlist Nav Bar
#    Click Wishlist Default
#    Click Wishlist Edit
#    Select Wishlist Item
#    Click Wishlist Delete Items
#    Verify Text On Screen    This list is empty!    30s
#    Close Application
#    Start Application
#    Clear Environment
#    Click Home
#    Click Search Home
#    Search Product    Pencil
#    Click Product from API
#    Click Add To Cart
#    Click Go To Cart
#    Click Checkout Move To Wishlist First Item
##    Verify Text On Screen Android    Item(s) moved to list    30s
##    Verify Text On Screen iOS    Item added to Wish List    30s
#    [Teardown]    Tear Down

Apps > Order Tracking - QA-5274
    [Tags]    QA-5274
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
    Close Application
    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Click Order Awaiting Payment
    Verify Text On Screen    ORDER SUMMARY    30s
    Verify Text On Screen    1 Item    1s
    Verify Text On Screen    Delivery    1s
    Verify Text On Screen Android    Order Total    1s
    Verify Text On Screen Android    To Pay    1s
    Verify Text On Screen iOS    TO PAY    1s
    Verify Text On Screen    PAYMENT METHOD    1s
    Verify Text On Screen    Credit Card    1s
    Swipe Up    ${windowScroll}
    Verify Text On Screen    DELIVERY METHOD    1s
    Verify Text On Screen    First Delivery Free - Standard    1s
    Verify Text On Screen    SHIPPING ADDRESS    1s
    Swipe Up    ${windowScroll}
    Verify Text On Screen    Test    1s
    Verify Text On Screen    12 Ridge Way    1s
    Verify Text On Screen    Green Point    1s
    Verify Text On Screen    Cape Town    1s
    Verify Text On Screen    8005    1s
    Swipe Down    ${windowScroll}
    Click Order Pay Now
    Click Change Payment Method Only
    Click Payfast Payment Method
    Click Pay With Payfast
    Verify Payfast Payment Text    Instant EFT
    [Teardown]    Tear Down

Apps > My Account Verifications - QA-5356
    [Tags]    QA-5356
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Verify Text On Screen    Last 3 months    30s
    Click Back Android
    Click Back iOS    My Account
    Click Menu Exchanges And Returns
    Verify Element On Screen    ${btnMenuExchReturns}    30s
#    Verify Text On Screen Android    Open file with    30s
#    Verify Text On Screen Android    Chrome    1s
#    Click Window Android
    Close Application
    Start Application    ${False}
    Click Menu
    Click Menu My Account
    Click Menu Personal Detail
    Update Personal Detail Name    AutoTester
    Verify Text On Screen    Your name has been successfully updated    30s
    Update Personal Detail Email    ?    t@ke@!ot1234
    Update Personal Detail Email    ${G_EMAIL}    t@ke@!ot1234
    Verify Text On Screen    Your email address has been successfully updated    30s
    Update Personal Detail Mobile    0789896556
    Verify Text On Screen    Your mobile number has been successfully updated    30s
    Update Personal Detail Password    t@ke@!ot1234    Abcd2200
    Update Personal Detail Password    Abcd2200    t@ke@!ot1234
    Verify Text On Screen    Your password has been successfully updated    30s
    Update Personal Detail Business    Automation    12345
    Verify Text On Screen    Your business details have been successfully updated    30s
    Click Back Android
    Click Back iOS    My Account
    Click Menu Address Book
    Click Add Delivery Address
    Click Residential
    Add Delivery Address My Acc    Tester Residential    0723456778    13 Caro Road
    Verify Text On Screen iOS    DELETE    30s
    Click Back Delivery Android
    Click Back iOS    My Account
    Click Menu Address Book
    Click Edit Address
    Edit Delivery Address Street My Acc    13 Caro Roa
    Verify Text On Screen iOS    DELETE    30s
    Click Back Delivery Android
    Click Back iOS    My Account
    Click Menu Address Book
    Click Delete Address
    Verify Text On Screen Android    Address successfully deleted    30s
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
    Verify Text On Screen    13 Caro Road, Robertsham, Johannesburg South, Gauteng, 2091    30s
    [Teardown]    Tear Down

Apps > My Account Verifications - QA-9567
    [Tags]    QA-9567
    [Setup]    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Load Gift Voucher
    Apply Dummy Gift Voucher Code
    Close Application
    Start Application
    Click Menu
    Click Menu My Account
    Verify Text On Screen    Available Credit: R    30s
    Click Menu Credits Refunds
    Verify Text On Screen    Credit will be automatically applied to your next purchase    30s
    Verify Text On Screen    Refund History    1s
    Verify Text On Screen Android    REDEEM GIFT VOUCHER    1s
    Verify Text On Screen iOS    Redeem Gift Voucher    1s
    Click Menu Credit History
    Verify Text On Screen    Available Credit    30s
#    Verify Text On Screen    Gift Voucher:    1s
    Click Back Android
    Click Back iOS    Credit & Refunds
    Click Menu Refund History
    Verify Text On Screen    You have no refund history    30s
    Close Application
    Start Application
    Click Menu
    Click Menu My Account Android
    Click Menu Settings
    Verify Text On Screen    Notifications    30s
    Verify Text On Screen    Login and Security    5s
    Click Back Android
    Click Back iOS    Back
    Click Menu iOS
    Click Menu Takealot Group
    Verify Text On Screen iOS    Takealot.group    30s
    Verify Text On Screen Android    Mr. D    30s
    Verify Text On Screen iOS    Mr D    30s
    Verify Text On Screen    Superbalist    5s
    Click Back Android
    Click Menu Help
    Verify Text On Screen Android    Open file with    30s
    Verify Text On Screen Android    Chrome    5s
    [Teardown]    Tear Down

Apps > Order Tracking 02 - QA-9609
    [Tags]    QA-9609
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
    Display WC Province Pickup Points
    Click Pickup Point
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
    Verify Text On Screen    ORDER SUMMARY    30s
    Verify Text On Screen    1 Item    1s
    Verify Text On Screen    Delivery    1s
    Verify Text On Screen Android    Order Total    1s
    Verify Text On Screen Android    To Pay    1s
    Verify Text On Screen iOS    TO PAY    1s
    Verify Text On Screen    PAYMENT METHOD    1s
    Verify Text On Screen    Credit Card    1s
    Swipe Up    ${windowScroll}
    Verify Text On Screen    DELIVERY METHOD    1s
    Verify Text On Screen    Collect    1s
    Verify Text On Screen    TAKEALOT PICKUP POINT    1s
    Swipe Up    ${windowScroll}
    Verify Text On Screen    Takealot Cape Town Warehouse Pickup Point    1s
    Verify Text On Screen    Block B, Montague Park    1s
    Verify Text On Screen    Business Estate    1s
    Verify Text On Screen    Montague Gardens    1s
    Verify Text On Screen    Cape Town    1s
    Verify Text On Screen    7441    1s
    Swipe Down    ${windowScroll}
    Click Order Pay Now
    Click Change Payment Method Only
    Click Payfast Payment Method
    Click Pay With Payfast
    Verify Payfast Payment Text    Instant EFT
    [Teardown]    Tear Down

Apps > Order Tracking 05 - QA-9619
    [Tags]    QA-9619
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
    Click Surcharge Delivery
    Click Donate No Thanks
    Click Add Payment Voucher
    Enter Payment Voucher Code
    Click Apply Payment Voucher
    Click Back Payment Voucher
    Click Pay With Credit Card
#    Click Payment Confirm Order
    Close Application
    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Click Order Awaiting Payment
    Verify Text On Screen    ORDER SUMMARY    30s
    Verify Text On Screen    1 Item    1s
    Verify Text On Screen    Delivery    1s
    Verify Text On Screen Android    Order Total    1s
    Verify Text On Screen Android    To Pay    1s
    Verify Text On Screen iOS    TO PAY    1s
    Swipe Up    ${windowScroll}
    Verify Text On Screen    PAYMENT METHOD    1s
    Verify Text On Screen    Credit Card    1s
    Verify Text On Screen    DELIVERY METHOD    1s
    Verify Text On Screen    Standard    1s
    Verify Text On Screen    SHIPPING ADDRESS    1s
    Swipe Up    ${windowScroll}
    Verify Text On Screen    Test    1s
    Verify Text On Screen    12 Ridge Way    1s
    Verify Text On Screen    Green Point    1s
    Verify Text On Screen    Cape Town    1s
    Verify Text On Screen    8005    1s
    Swipe Down    ${windowScroll}
    Click Order Pay Now
    Click Change Payment Method Only
    Click Payfast Payment Method
    Click Pay With Payfast
    Verify Payfast Payment Text    Instant EFT
    [Teardown]    Tear Down

Apps > Cart (Android) - QA-5298 / QA-9606
    [Tags]    android    QA-5298    QA-9606
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
    Click Checkout Android
    Verify Toolbar iOS
    [Teardown]    Tear Down

Apps > Cart (Android) 02 - QA-9599
    [Tags]    QA-9599
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout Move To Wishlist First Item
#    Verify Text On Screen Android    Item(s) moved to list    30s
    Verify Text On Screen Android    Your Shopping Cart is Empty    5s
    Verify Text On Screen Android    Trending on Takealot    5s
    Verify Element On Screen Android    ${btnCartContinueShopping}    1s
#    Verify Text On Screen iOS    Item added to Wish List    30s
    Add To Cart Trending First Item
    Click Checkout
    Close Application
    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
#    Click Increase Cart Quantity iOS    1
    Click Go To Cart
    Change Cart Quantity Android    2
    Click Checkout
    [Teardown]    Tear Down

Apps > Cart (Android) 04 - QA-9600 / QA-9605
    [Tags]    QA-9600    QA-9605
    [Setup]    Start Application
    Clear Environment
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
    Search Product    book
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    vouche
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Verify Element On Screen    ${btnWishListIcon}    30s
    Verify Text On Screen Android    The gift voucher will be delivered via email to the recipient    30s
#    Verify Text On Screen    The eBook will be added to your Digital Library, ready for you to download    1s
    Swipe Up    ${windowScroll}
    Swipe Up    ${windowScroll}
    Verify Text On Screen Android    The prepaid code will be delivered to you via email    1s
    Verify Text On Screen Android    This product is not eligible for Cash on Delivery (COD)    1s
    Verify Text On Screen Android    Cart    1s
    Click Checkout
    Click Delivery
    Click Address
    Click Free Delivery
    Verify Text On Screen Android    Delivery via email to    30s
#    Verify Text On Screen iOS    Delivery via email to    30s
    [Teardown]    Tear Down

Cart Update & Cart Notification - TV - QA-8420
    [Tags]    QA-8420
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Televisio
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Domestic TV Licence
    [Teardown]    Tear Down

My Account > Takealot Group > Superbalist & Mr.D Links - QA-9956
    [Tags]    QA-9956
    [Setup]    Start Application
    Click Menu
    Click Menu My Account Android
    Click Menu Superbalist
    Close Application
    Start Application
    Click Menu
    Click Menu My Account Android
    Click Menu MrD
    [Teardown]    Tear Down

Cart Update & Cart Notification - Liquor - QA-8419
    [Tags]    QA-8419
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    johnny
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Select Age
    Click Verify Age
    [Teardown]    Tear Down

Cart Update & Cart Notification - Heavy Good - QA-8421
    [Tags]    QA-8421
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
    Add To Cart
    Click Pay With Credit Card
    Click Cart Update Continue Checkout
    Click Pay With Credit Card
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
    Click Delivery
    Click Address
    Click Free Delivery
    Click Donate No Thanks
    Add To Cart
    Click Pay With Credit Card
    Click Cart Update Back To Cart
    Click Checkout
    [Teardown]    Tear Down
