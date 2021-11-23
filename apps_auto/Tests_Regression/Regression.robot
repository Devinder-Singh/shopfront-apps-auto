*** Settings ***
Default Tags      regression
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Register & Login - QASA-498
    [Tags]    QASA-498
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

Apps > Promotions (Android) Daily Deals - QASA-476 - QASA-306
    [Tags]    QASA-476    QASA-306
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
    Verify Element On Screen    ${btnCheckout}    ${MIN_TIMEOUT}
    Click Item Promotion Text
    Verify Text On Screen    4 x R    10s
    Verify Text On Screen    Daily Deals    1s
    Verify Text On Screen    Only 4 per customer    1s
    Verify Text On Screen    Item Total    1s
    [Teardown]    Tear Down

Apps > Promotions (Android) App Only Deals - QASA-256 - QASA-306
    [Tags]    QASA-256    QASA-306
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
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

Apps > Promotions (Android) Other Promo tabs - QASA-255 - QASA-306
    [Tags]    QASA-255    QASA-306
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
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
    Verify Element On Screen    ${btnCheckout}    ${MIN_TIMEOUT}
    Verify Text On Screen    ${query_result_CartFilterProduct}    2s
    Click Item Promotion Text
    Verify Text On Screen    5 x R    10s
    Verify Text On Screen    Item Total    1s
    [Teardown]    Tear Down

Apps > Promotions (Android) Set Bundle - QASA-260 - QASA-306
    [Tags]    QASA-260    QASA-306
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    roku japanese
    Click Product From Title    Roku - Japanese Craft Gin - 750ml
    Click Add To Cart
    Click Go To Cart
    Verify Text On Screen    Missed promotion    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    VIEW BUNDLE    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    View Bundle    1s
    Close Application
    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    roku japanese
    Click Product From Title    Roku - Japanese Craft Gin - 750ml
    Click Add Bundle To Cart
    Click Go To Cart
    Wait for Checkout
    Check Text On Screen Not    Missed promotion
    Check Text On Screen Not    VIEW BUNDLE
    Check Text On Screen Not    View Bundle
    [Teardown]    Tear Down

Apps > Promotions (Android) Multi-Buys - QASA-254 - QASA-306
    [Tags]    QASA-254    QASA-306
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Philips Batter
    Click Product From Title    Philips Alkaline LR03P6BP AAA Battery
    Click Add To Cart
    Click Go To Cart
    Verify Text On Screen    Missed promotion    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    ADD    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    TO QUALIFY    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Add    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    to qualify    1s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Philips Batter
    Click Product From Title    Philips Alkaline LR03P6BP AAA Battery
    Click Shop The Deal
    Click Product From Title    Philips Alkaline LR6P6BP AA Battery
    Click Add To Cart
    Click Go To Cart
    Check Text On Screen Not    Missed promotion
    Check Text On Screen Not    ADD 1 ITEM TO QUALIFY
    Check Text On Screen Not    Add 1 item to qualify
    [Teardown]    Tear Down

Apps > Promotions (Android) Unboxed & Other Offers - QASA-253 - QASA-306
    [Tags]    QASA-253    QASA-306
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Unboxed Dea
    Click Product From Title    HP 123 Black Ink Cartridge
    Click Other Offers Add To Cart
    Click Go To Cart
    Click Checkout
    [Teardown]    Tear Down

Apps > Verify Home Screen - QASA-478
    [Tags]    QASA-478
    [Setup]    Start Application
    Click Home
    Verify Text On Screen    Daily Deals    ${MIN_TIMEOUT}
    Click View All Daily Deals
    Click Daily Deals Product from API
    [Teardown]    Tear Down

Apps > Verify Home Screen - QASA-175
    [Tags]    QASA-175
    [Setup]    Start Application
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
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
    Swipe Up    ${windowScroll}
    Click Clear All Recently Viewed
    Confirm Clear All Recently Viewed
    Check Text On Screen Not    Recently Viewed
    Click Menu
    Click Menu Shop By Department
    Verify Text On Screen    Daily Deals    ${MIN_TIMEOUT}
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    App Only Deals    1s
#    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    App Only    1s
    Click Icon Daily Deals
    Click Daily Deals Product from API
    Verify Element On Screen    ${btnAddToCart}    ${MIN_TIMEOUT}
    Click Back Android
    Verify Element On Screen Android    ${btnProductSearchFilter}    ${MIN_TIMEOUT}
    Click Back Android
    Click Back iOS    Deals
    Verify Element On Screen iOS    ${btnProductSearchFilter}    ${MIN_TIMEOUT}
    Click Back iOS    Back
#    Click Icon App Only Deals
#    Click App Only Deals Product from API
#    Verify Element On Screen    ${btnAddToCart}    ${MIN_TIMEOUT}
#    Click Back Android
#    Swipe Down    ${windowScroll}
#    Verify Element On Screen Android    ${btnProductSearchFilter}    ${MIN_TIMEOUT}
#    Click Back Android
#    Click Back iOS    Deals
#    Verify Element On Screen iOS    ${btnProductSearchFilter}    ${MIN_TIMEOUT}
#    Click Back iOS    Back
    Click Icon Daily Deals
    Select Third Deals From API
    Click Third Tab Product from API
    [Teardown]    Tear Down

Apps > Verify Home Screen - QASA-174
    [Tags]    QASA-174
    [Setup]    Start Application
    Click Home
    Click Home Cart
    Verify Text On Screen    Cart    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Verify Home Screen - QASA-173
    [Tags]    QASA-173
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
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
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    This list is empty    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Search - QASA-475
    [Tags]    QASA-475
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

Apps > PLP - QASA-473
    [Tags]    QASA-473
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu Daily Deals
    Click Daily Deals Product from API
    Verify Add To Wishlist
    Click Add To Cart
    Verify Element On Screen    ${btnGoToCart}    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    toy
    Click Product from API
    Click Add To Cart
    Verify Element On Screen    ${btnGoToCart}    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Verify Element On Screen    ${btnGoToCart}    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    johnnie wal
    Click Product from API
    Click Add To Cart
    Verify Element On Screen    ${btnGoToCart}    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    glass
    Click First Product from API
    Click Seller Name
    Click Product Seller Deals
    [Teardown]    Tear Down

Apps > PLP > Sort - QASA-171
    [Tags]    QASA-171
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

Apps > PLP > Mulit-Filter - QASA-265
    [Tags]    QASA-265
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

#Apps > PLP > Mulit-Filter 02 - QASA-265
#    [Tags]    QASA-265
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

#Apps > PLP > Mulit-Filter 03 - QASA-265
#    [Tags]    QASA-265
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

#Apps > PLP > Mulit-Filter 04 - QASA-265 / QASA-158
#    [Tags]    QASA-265    QASA-158
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

#Apps > PLP > Mulit-Filter 05 - QASA-265
#    [Tags]    QASA-265
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

#Apps > PLP > Mulit-Filter 06 - QASA-265 / QASA-158
#   [Tags]    QASA-265    QASA-158
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

Apps > PLP > Overflow Menus - QASA-264
    [Tags]    QASA-264
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    ${MIN_TIMEOUT}
    Click Back Android
    Click Back Android
    Click Back iOS    pencil case
    Click Back iOS    Back
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    ${MIN_TIMEOUT}
    Click More Options Menu Android
    Click Options Menu Home
    Click Back iOS    pencil case
    Click Back iOS    Back
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    ${MIN_TIMEOUT}
    Click More Options Menu Android
    Click Options Menu Categories
    Click Back iOS    pencil case
    Click Back iOS    Back
    Verify Text On Screen    Daily Deals    ${MIN_TIMEOUT}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    ${MIN_TIMEOUT}
    Click More Options Menu Android
    Click Options Menu Deals
    Click Back iOS    pencil case
    Click Back iOS    Back
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    ${MIN_TIMEOUT}
    Click More Options Menu Android
    Click Options Menu Lists
    Click Back iOS    pencil case
    Click Back iOS    Back
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Wish List    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    My Lists    ${MIN_TIMEOUT}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    ${MIN_TIMEOUT}
    Click More Options Menu Android
    Click Options Menu Account
    Click Back iOS    pencil case
    Click Back iOS    Back
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Personal Details    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > PDP - QASA-519
    [Tags]    QASA-519
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
    Click Product Text    ${query_result_CartProduct}
    Click Add To Wishlist Only
    Verify Text On Screen    Item added to Wish List    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Drone
    Get Sponsored Product Detail
    Verify Element On Screen    ${btnProductSearchFilter}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Sponsored    2s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Sponsored    2s
#    Verify Text On Screen    % OFF    2s
    Verify Text On Screen    ${query_result_adProductStatus}    2s
    Verify Text On Screen    ${query_result_adProductPrice}    2s
    Verify Text On Screen    ${query_result_adProductBrand}    2s
    Click Product From Title    ${query_result_adProductTitle}
    Verify Text On Screen Scroll    Related Products    1s    ${windowScroll}    ${btnAddToCart}
    Verify Text On Screen    Sponsored    2s
    [Teardown]    Tear Down

Apps > PDP - QASA-170
    [Tags]    QASA-170
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
    Verify Element On Screen    ${btnCheckout}    ${MIN_TIMEOUT}
    Click Product Text    ${query_result_CartProduct}
    Click Product Variant From API
    Click Add To Wishlist Only
    Verify Text On Screen    Item added to Wish List    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > PDP - QASA-169
    [Tags]    QASA-169
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    shirt
    Click Variant Product from API
    Verify PDP Screen Element Not Exists    ${btnAddToCart}
    Verify PDP Screen Element Not Exists    ${btnAddWishlist}
    [Teardown]    Tear Down

Apps > PDP - QASA-168
    [Tags]    QASA-168
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
    Verify Text On Screen    Thank you for your review    ${MIN_TIMEOUT}
    Click Review Submit OK
    Swipe Down    ${windowScroll}
    Swipe Down    ${windowScroll}
    Swipe Down    ${windowScroll}
    Swipe Down    ${windowScroll}
    Click PDP Write Review
    Click Review Rating
    Enter Review Message    Auto Test
    Click Review Submit
    Verify Text On Screen    You've already submitted a review for this product    ${MIN_TIMEOUT}
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
    Verify Text On Screen    Your report has been submitted    15s
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

Apps > PDP - QASA-167
    [Tags]    QASA-167
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    tshirt for m
    Click Variant Product from API
    Verify PDP Screen Element Not Exists    ${btnAddToCart}
    Click Product Variant From API
    Click Add To Wishlist Only
    Verify Text On Screen    Item added to Wish List    ${MIN_TIMEOUT}
    Click Add To Cart
    [Teardown]    Tear Down

Apps > Merchandised Landing Pages (CMS Widgets) - Carousel Widget - QASA-474
    [Tags]    QASA-474
    [Setup]    Start Application
    Click Menu
    Click Menu Shop By Department
    Click Menu Department    Beauty
    Click Product Widget Carousel
    Verify Product Widget Navigation
    [Teardown]    Tear Down

Merchandised Landing Pages (CMS Widgets) - Banner Pair Widget - QASA-166
    [Tags]    QASA-166
    [Setup]    Start Application
    Click Menu
    Click Menu Shop By Department
    Click Menu Department    Beauty
    Click Product Widget Banner
    Verify Product Widget Navigation
    [Teardown]    Tear Down

Apps > Merchandised Landing Pages (CMS Widgets) - QASA-165
    [Tags]    QASA-165
    [Setup]    Start Application
    Click Home
    Click Search Home
    Verify Text On Screen    Trending    ${MIN_TIMEOUT}
    Click Search Trending
    [Teardown]    Tear Down

Merchandised Landing Pages (CMS Widgets) -> Product List Widget - QASA-164
    [Tags]    QASA-164
    [Setup]    Start Application
    Click Menu
    Click Menu Shop By Department
    Click Menu Department    Beauty
    Click Product Widget Product
    Verify Product Widget Navigation
    [Teardown]    Tear Down

Merchandised Landing Pages (CMS Widgets) - Image List Widget - QASA-163
    [Tags]    QASA-163
    [Setup]    Start Application
    Click Menu
    Click Menu Shop By Department
    Click Menu Department    Beauty
    Click Product Widget Image
    Verify Product Widget Navigation
    [Teardown]    Tear Down

Merchandised Landing Pages (CMS Widgets) - Contextual Navigation Widget - QASA-162
    [Tags]    QASA-162
    [Setup]    Start Application
    Click Menu
    Click Menu Shop By Department
    Click Menu Department    Beauty
#    Click Product Widget Image
    Click Product Widget Context
    Verify Product Widget Navigation
    [Teardown]    Tear Down

Apps > Wishlist (Android) - QASA-466
    [Tags]    android    QASA-466
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Wishlist Nav Bar
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Wish List    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Trending on Takealot    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    DEFAULT    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Wish List    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Trending on Takealot    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    DEFAULT    1s
    Click Create Wishlist
    [Teardown]    Tear Down

Apps > Wishlist (Android) > Delete List - QASA-161
    [Tags]    QASA-161
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
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
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Rename List    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Delete List    1s
    Click Delete Wishlist
    [Teardown]    Tear Down

Apps > Wishlist (Android) > Bottom Navigation - QASA-160
    [Tags]    QASA-160
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
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
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Share List    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Share    ${MIN_TIMEOUT}
    Verify Text On Screen    Edit    1s
    [Teardown]    Tear Down

Apps > Wishlist (iOS) - QASA-472
    [Tags]    QASA-472
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu Daily Deals
    Click Daily Deals Product from API
    Click Add To Cart
    Click Go To Cart
    Change Cart Quantity Android    2
    Click Checkout Delete First Item
    Click Checkout Cart Undo
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    No items    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Your Shopping Cart is Empty    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

#Wishlist icon on PLP screen is not unique
#Apps > Cart (iOS) - QASA-159
#    [Tags]    QASA-159
#    [Setup]    Start Application
#    Clear Environment
#    Click Menu
#    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
#    Click Home
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
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Item added to Wish List    ${MIN_TIMEOUT}
#    Close Application
#    Start Application    ${False}
#    Click Home
#    Click Wishlist Nav Bar
#    Click Wishlist Default
#    Click Wishlist Edit
#    Select Wishlist Item
#    Click Wishlist Delete Items
#    Verify Text On Screen    This list is empty!    ${MIN_TIMEOUT}
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
##    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Item(s) moved to list    ${MIN_TIMEOUT}
##    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Item added to Wish List    ${MIN_TIMEOUT}
#    [Teardown]    Tear Down

Apps > Order Tracking (Delivery) - QASA-80
    [Tags]    QASA-80
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
    Verify Text On Screen    ORDER SUMMARY    ${MIN_TIMEOUT}
    Verify Text On Screen    1 Item    1s
    Verify Text On Screen    Delivery    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Order Total    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    To Pay    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    TO PAY    1s
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

Apps > My Account Verifications - QASA-477
    [Tags]    QASA-477
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Verify Text On Screen    Last 3 months    ${MIN_TIMEOUT}
    Click Back Android
    Click Back iOS    My Account
    Click Menu Exchanges And Returns
    Close Application
    Start Application    ${False}
    Click Menu
    Click Menu My Account
    Click Menu Personal Detail
    Update Personal Detail Name    AutoTester
    Verify Text On Screen    Your name has been successfully updated    ${MIN_TIMEOUT}
    Update Personal Detail Email    ?    t@ke@!ot1234
    Update Personal Detail Email    ${G_EMAIL}    t@ke@!ot1234
    Verify Text On Screen    Your email address has been successfully updated    ${MIN_TIMEOUT}
    Update Personal Detail Mobile    0789896556
    Verify Text On Screen    Your mobile number has been successfully updated    ${MIN_TIMEOUT}
    Update Personal Detail Password    t@ke@!ot1234    Abcd2200
    Update Personal Detail Password    Abcd2200    t@ke@!ot1234
    Verify Text On Screen    Your password has been successfully updated    ${MIN_TIMEOUT}
    Update Personal Detail Business    Automation    12345
    Verify Text On Screen    Your business details have been successfully updated    ${MIN_TIMEOUT}
    Click Back Android
    Click Back iOS    My Account
    Click Menu Address Book
    Click Add Delivery Address
    Click Residential
    Add Delivery Address My Acc    Tester Residential    0723456778    13 Caro Road
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    DELETE    ${MIN_TIMEOUT}
    Click Back Delivery Android
    Click Back iOS    My Account
    Click Menu Address Book
    Click Edit Address
    Edit Delivery Address Street My Acc    13 Caro Roa
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    DELETE    ${MIN_TIMEOUT}
    Click Back Delivery Android
    Click Back iOS    My Account
    Click Menu Address Book
    Click Delete Address
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Address successfully deleted    ${MIN_TIMEOUT}
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
    Verify Text On Screen    13 Caro Road, Robertsham, Johannesburg South, Gauteng, 2091    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > My Account Verifications - QASA-89
    [Tags]    QASA-89
    [Setup]    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Load Gift Voucher
    Apply Dummy Gift Voucher Code
    Close Application
    Start Application
    Click Menu
    Click Menu My Account
    Verify Text On Screen    Available Credit: R    ${MIN_TIMEOUT}
    Click Menu Credits Refunds
    Verify Text On Screen    Credit will be automatically applied to your next purchase    ${MIN_TIMEOUT}
    Verify Text On Screen    Refund History    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    REDEEM GIFT VOUCHER    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Redeem Gift Voucher    1s
    Click Menu Credit History
    Verify Text On Screen    Available Credit    ${MIN_TIMEOUT}
    Click Back Android
    Click Back iOS    Credit & Refunds
    Click Menu Refund History
    Verify Text On Screen    You have no refund history    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Click Menu
    Click Menu My Account Android
    Click Menu Settings
    Verify Text On Screen    Notifications    ${MIN_TIMEOUT}
    Verify Text On Screen    Login and Security    5s
    Click Back Android
    Click Back iOS    Back
    Click Menu iOS
    Click Menu Takealot Group
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Takealot.group    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Mr. D    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Mr D    ${MIN_TIMEOUT}
    Verify Text On Screen    Superbalist    5s
    Click Back Android
    Click Menu Help
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Open file with    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Chrome    5s
    [Teardown]    Tear Down

Apps > Order Tracking (Collect) 02 - QASA-547
    [Tags]    QASA-547
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
    Display WC Province Pickup Points
    Click Pickup Point
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
    Verify Text On Screen    ORDER SUMMARY    ${MIN_TIMEOUT}
    Verify Text On Screen    1 Item    1s
    Verify Text On Screen    Delivery    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Order Total    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    To Pay    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    TO PAY    1s
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

Apps > Order Tracking 05 - QASA-79
    [Tags]    QASA-79
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
    Click Add Payment Voucher
    Enter Payment Voucher Code
    Click Apply Payment Voucher
    Click Back Payment Voucher
    Click Pay With Credit Card
    Close Application
    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Click Order Awaiting Payment
    Verify Text On Screen    ORDER SUMMARY    ${MIN_TIMEOUT}
    Verify Text On Screen    1 Item    1s
    Verify Text On Screen    Delivery    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Order Total    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    To Pay    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    TO PAY    1s
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

Apps > Cart (Android) > QASA-524 - QASA-81
    [Tags]    QASA-524    QASA-81
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
    Click Checkout Delete First Item
    Click Checkout Cart Undo
    Click Checkout Android
    Verify Toolbar iOS
    [Teardown]    Tear Down

Apps > Cart (Android) 02 - QASA-84
    [Tags]    QASA-84
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
    Click Checkout Move To Wishlist First Item
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Your Shopping Cart is Empty    5s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Trending on Takealot    5s
    Verify Element On Screen Android    ${btnCartContinueShopping}    1s
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
    Click Go To Cart
    Change Cart Quantity Android    2
    Click Checkout
    [Teardown]    Tear Down

Apps > Cart (Android) 04 - QASA-83 / QASA-82
    [Tags]    QASA-83    QASA-82
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
    Verify Element On Screen    ${btnWishListIcon}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    The gift voucher will be delivered via email to the recipient    ${MIN_TIMEOUT}
    Swipe Up    ${windowScroll}
    Swipe Up    ${windowScroll}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    The prepaid code will be delivered to you via email    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    This product is not eligible for Cash on Delivery (COD)    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Cart    1s
    Click Checkout
    Click Delivery
    Click Address
    Click Any Delivery
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Delivery via email to    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Cart Update & Cart Notification - TV - QASA-248
    [Tags]    QASA-248
    [Setup]    Start Application    ${False}
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
    Click Domestic TV Licence
    [Teardown]    Tear Down

My Account > Takealot Group > Superbalist & Mr.D Links - QASA-44
    [Tags]    QASA-44
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

Cart Update & Cart Notification - Liquor - QASA-249
    [Tags]    QASA-249
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
    Click Select Age
    Click Verify Age
    [Teardown]    Tear Down

Cart Update & Cart Notification - Heavy Good - QASA-247
    [Tags]    QASA-247
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
    Click Any Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Add To Cart
    Click Pay With Credit Card
    Click Cart Update Continue Checkout
#    Verify Text On Screen Scroll    ${varSurchargeDelivery}    10s    ${windowScroll}    
    #Verify Text On Screen    ${varSurchargeDelivery}
    #Wait Until Page Contains Element    ${varSurchargeDelivery}
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
    Click Any Delivery
    Click Donate No Thanks
    Add To Cart
    Click Pay With Credit Card
    Click Cart Update Back To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Surcharge Delivery
    [Teardown]    Tear Down

CLONE - PDP - Brand Links - QASA-29
    [Tags]    QASA-29
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    ${MIN_TIMEOUT}
    Verify Element On Screen    ${btnAddWishlist}    2s
    Verify Text On Screen    ${query_result_CartProduct}    2s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Get Sponsored Product Detail
    Verify Element On Screen    ${btnProductSearchFilter}    ${MIN_TIMEOUT}
    Verify Text On Screen    Sponsored    2s
    Verify Text On Screen    % OFF    2s
    Verify Text On Screen    ${query_result_adProductStatus}    2s
    Click Product From Title    ${query_result_adProductTitle}
    Verify Element On Screen    ${btnAddToCart}    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

PDP - Brand Links - QASA-28
    [Tags]    QASA-28
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    glass
    Click First Product from API
    Click Seller Name
    Click Back Android
    Click Back iOS    ${query_result_FirstProduct}
    Verify Element On Screen    ${btnAddToCart}    10s
    [Teardown]    Tear Down

Cart Update & Cart Notification - Heavy Good - Collect - QASA-874
    [Tags]    QASA-874
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
    Click Western Cape Province
    Click Pickup Point
    Click Any Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Add To Cart
    Click Pay With Credit Card
    Click Cart Update Continue Checkout
    Click Collect Not Available
    Click Delivery
    Click Address
    Click Surcharge Delivery
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
    Click Filter Province
    Click Western Cape Province
    Click Pickup Point
    Click Any Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Add To Cart
    Click Pay With Credit Card
    Click Cart Update Back To Cart
    Click Checkout
    Click Collect Not Available
    Click Delivery
    Click Address
    Click Surcharge Delivery
    [Teardown]    Tear Down