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
    Verify Text On Screen    Please enter your email address    ${MIN_TIMEOUT}
    Verify Text On Screen    Please enter your password    ${MIN_TIMEOUT}
    Login Takealot    ${new_email_address}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu Logout
    [Teardown]    Tear Down

Apps > Promotions (Android) Daily Deals - QASA-476 - QASA-306
    [Tags]    QASA-476    QASA-306
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Menu
    Click Menu Daily Deals
    Click Promotion Item By Index    itemIndex=1
    Click Add To Cart
    Click Go To Cart
    Change Cart Quantity Scroll    4
    Verify Element On Screen    ${btnCheckout}    ${MIN_TIMEOUT}
    Click Item Promotion Text
    Verify Text On Screen    4 x R    ${MAX_TIMEOUT}
    Verify Text On Screen    Daily Deals    ${MAX_TIMEOUT}
    Verify Text On Screen    Only 4 per customer    ${MAX_TIMEOUT}
    Verify Text On Screen    Item Total    ${MAX_TIMEOUT}
    [Teardown]    Tear Down

Apps > Promotions (Android) App Only Deals - QASA-256 - QASA-306
    [Tags]    QASA-256    QASA-306
    [Setup]    Start Application
    Clear Environment
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Menu
    Click Menu Daily Deals
    Click App Only Deals
    Click Promotion Item By Index    itemIndex=4
    Click Add To Cart
    Click Go To Cart
    Change Cart Quantity Scroll    4
    Click Item Promotion Text
    Verify Text On Screen    4 x R    ${MAX_TIMEOUT}
    Verify Text On Screen    App Only Deals    ${MIN_TIMEOUT}
    Verify Text On Screen    Only 4 per customer    ${MIN_TIMEOUT}
    Verify Text On Screen    Item Total    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Promotions (Android) Other Promo tabs - QASA-255 - QASA-306
    [Tags]    QASA-255    QASA-306
    [Setup]    Start Application
    Clear Environment
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Menu
    Click Menu Daily Deals
    Select Third Deals From API
    Get Product Deals Third Tab Slug
    ${txtProduct}=    Get Daily Deals Product to Add To Cart
    Scroll To Element    ${txtProduct}
    Click Product Filter
    Select Third Deals Filter Option From API
    Click Apply Filter
    Click Filter Product from API
    Click Add To Cart
    Click Go To Cart
    Change Cart Quantity Android    5
    Verify Element On Screen    ${btnCheckout}    ${MIN_TIMEOUT}
    Verify Text On Screen    ${query_result_CartFilterProduct}    ${MIN_TIMEOUT}
    Click Item Promotion Text
    Verify Text On Screen    5 x R    ${MIN_TIMEOUT}
    Verify Text On Screen    Item Total    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Promotions (Android) Set Bundle - QASA-260 - QASA-306
    [Tags]    QASA-260    QASA-306
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Samsung - 14 Place Setting Dishwasher
    Click Product From Title    Samsung - 14 Place Setting Dishwasher
    Click Add To Cart
    Click Go To Cart
    Verify Text On Screen    Missed promotion    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    VIEW BUNDLE    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    View Bundle    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Samsung - 14 Place Setting Dishwasher
    Click Product From Title    Samsung - 14 Place Setting Dishwasher
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
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    versus soc
    Click Product From Title    Versus Table Mountain Performance Running Hidden Socks
    Click Variant Option By Index    1
    Click Add To Cart
    Click Go To Cart
    Verify Text On Screen    Missed promotion    ${MAX_TIMEOUT}
    Verify Text On Screen    ADD    ${MIN_TIMEOUT}
    Verify Text On Screen    TO QUALIFY    ${MIN_TIMEOUT}
    Verify Text On Screen    Add    ${MIN_TIMEOUT}
    Verify Text On Screen    to qualify    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    versus soc
    Click Product From Title    Versus Table Mountain Performance Running Hidden Socks
    Click Variant Option By Index    1
    Click Shop The Deal
    Click Product From Title    Versus Table Mountain Performance Running Hidden Socks
    Click Variant Option By Index    1
    Click Add To Cart
    Click Go To Cart
    Change Cart Quantity Android    3
    Check Text On Screen Not    Missed promotion
    Check Text On Screen Not    ADD 1 ITEM TO QUALIFY
    Check Text On Screen Not    Add 1 item to qualify
    [Teardown]    Tear Down

Apps > Promotions (Android) Unboxed & Other Offers - QASA-253 - QASA-306
    [Tags]    QASA-253    QASA-306
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    Unboxed Dea
    Click Product from API
    Click Other Offers Add To Cart
    Click Go To Cart
    Click Checkout
    [Teardown]    Tear Down

Apps > Verify Home Screen - QASA-478
    [Tags]    QASA-478
    [Setup]    Start Application
    Click Home
    Verify Text On Screen    Daily Deals    ${MIN_TIMEOUT}
    Click Home Icon Daily Deals
    Click Daily Deals Product from API
    [Teardown]    Tear Down

Verify Home Screen (Logged-In User) > Recently Viewed - QASA-175
    [Tags]    QASA-175
    [Setup]    Start Application
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Close Application
    Start Application    ${False}
    Click Home
    Scroll To Text    Recommended For You
    Scroll To Text    Recently Viewed
    Click Clear All Recently Viewed
    Click Cancel Clear All Recently Viewed
    Swipe Up    ${windowScroll}
    Click Clear All Recently Viewed
    Confirm Clear All Recently Viewed
    Check Text On Screen Not    Recently Viewed
    [Teardown]    Tear Down

Verify Home Screen > Shop by Dept widget - QASA-861
    [Tags]    QASA-861
    [Setup]    Start Application
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Scroll To Text    Shop by Department
    Click Home Icon Daily Deals
    Verify Element On Screen    ${btnProductSearchFilter}    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Swipe Left    ${cntHomeDeptIcons}
    Click Home Icon    Summer
    Verify Text On Screen    Summer    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Swipe Left    ${cntHomeDeptIcons}
    Click Home Icon    Load-shedding
    Verify Text On Screen    Load Shedding    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Swipe Left    ${cntHomeDeptIcons}
    Click Home Icon    Fashion Outlet
    Verify Text On Screen    Fashion Outlet    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Click Home Icon    Unboxed Deals
    Verify Text On Screen    Unboxed Deals    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Click Home Icon    Exclusive To Takealot
    Verify Text On Screen    Exclusive To Takealot    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Click Home Icon    Shop Local
    Verify Text On Screen    Shop Local    ${MAX_TIMEOUT}
    Click Cancel Screen
    [Teardown]    Tear Down

Verify Home Screen > Shop by Dept widget - QASA-882
    [Tags]    QASA-882
    [Setup]    Start Application
    Click Home
    Scroll To Text    Shop by Department
    Swipe Left    ${cntHomeDeptIcons}
    Swipe Left    ${cntHomeDeptIcons}
    Swipe Left    ${cntHomeDeptIcons}
    Click Home Icon    Brand Stores
    Verify Text On Screen    Brands Store    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Swipe Left    ${cntHomeDeptIcons}
    Click Home Icon    Auto
    Verify Text On Screen    Automotive    ${MAX_TIMEOUt}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Click Home Icon    Baby & Toddler
    Verify Text On Screen    Baby & Toddler    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Click Home Icon    Beauty
    Verify Text On Screen    Beauty    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Swipe Left    ${cntHomeDeptIcons}
    Click Home Icon    Books
    Verify Text On Screen    Books    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Swipe Left    ${cntHomeDeptIcons}
    Click Home Icon    Camping
    Verify Text On Screen    Camping    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Click Home Icon    Cellphones
    Verify Text On Screen    Cellphones    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Click Home Icon    Clothing
    Verify Text On Screen    Clothing    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Click Home Icon    Computers
    Verify Text On Screen    Computers    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Click Home Icon    DIY & Home Improvement
    Verify Text On Screen    DIY & Home Improvement    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Swipe Left    ${cntHomeDeptIcons}
    Click Home Icon    Gaming
    Verify Text On Screen    Gaming    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Click Home Icon    Garden, Pool & Patio
    Verify Text On Screen    Garden, Pool & Patio    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Swipe Left    ${cntHomeDeptIcons}
    Click Home Icon    Groceries
    Verify Text On Screen    Household    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Swipe Left    ${cntHomeDeptIcons}
    Click Home Icon    Health & Hygiene
    Verify Text On Screen    Health    ${MAX_TIMEOUT}
    [Teardown]    Tear Down

Verify Home Screen > Shop by Dept widget - QASA-883
    [Tags]    QASA-883
    [Setup]    Start Application
    Click Home
    Scroll To Text    Shop by Department
    Swipe Left    ${cntHomeDeptIcons}
    Swipe Left    ${cntHomeDeptIcons}
    Swipe Left    ${cntHomeDeptIcons}
    Swipe Left    ${cntHomeDeptIcons}
    Swipe Left    ${cntHomeDeptIcons}
    Swipe Left    ${cntHomeDeptIcons}
    Swipe Left    ${cntHomeDeptIcons}
    Swipe Left    ${cntHomeDeptIcons}
    Click Home Icon    Home & Appliances
    Verify Text On Screen    Home & Appliances    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Click Home Icon    Household Cleaning
    Verify Text On Screen    Household Cleaning    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Swipe Left    ${cntHomeDeptIcons}
    Click Home Icon    Kitchen & Appliances
    Verify Text On Screen    Kitchen & Appliances    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Click Home Icon    Liquor
    Verify Text On Screen    Liquor    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Click Home Icon    Luggage & Travel
    Verify Text On Screen    Luggage & Travel    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Swipe Left    ${cntHomeDeptIcons}
    Click Home Icon    Movies
    Verify Text On Screen    Movies    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Swipe Left    ${cntHomeDeptIcons}
    Click Home Icon    Music
    Verify Text On Screen    Music    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Click Home Icon    Musical Instruments
    Verify Text On Screen    Musical Instruments    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Click Home Icon    Networking
    Verify Text On Screen    Networking    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Swipe Left    ${cntHomeDeptIcons}
    Click Home Icon    Office
    Verify Text On Screen    Office    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Click Home Icon    Pets
    Verify Text On Screen    Pets    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Click Home Icon    Photography
    Verify Text On Screen    Photographic    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Click Home Icon    Sport & Training
    Verify Text On Screen    Sport    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Swipe Left    ${cntHomeDeptIcons}
    Click Home Icon    Stationery
    Verify Text On Screen    Stationery    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Swipe Left    ${cntHomeDeptIcons}
    Click Home Icon    Toiletries
    Verify Text On Screen    Personal Care    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Click Home Icon    Toys & Games
    Verify Text On Screen    Toys    ${MAX_TIMEOUT}
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Swipe Left    ${cntHomeDeptIcons}
    Click Home Icon    TV, Audio & Video
    Verify Text On Screen    TV, Audio & Video
    Click Cancel Screen
    Scroll To Text    Shop by Department
    Swipe Left    ${cntHomeDeptIcons}
    Click Home Icon    Wearable Tech
    Verify Text On Screen    Wearable Tech    ${MAX_TIMEOUT}
    [Teardown]    Tear Down

Verify Home Screen > Shop by Dept widget - QASA-862
    [Tags]    QASA-862
    [Setup]    Start Application
    Click Menu
    Click Menu Shop By Department
    Verify Text On Screen    Daily Deals    ${MAX_TIMEOUT}
    Scroll To Text    Daily Deals
    Scroll To Text    Summer
    Scroll To Text    Load-shedding
    Scroll To Text    Fashion Outlet
    Scroll To Text    Unboxed Deals
    Scroll To Text    Exclusive To Takealot
    Scroll To Text    Shop Local
    Scroll To Text    Brand Stores
    Scroll To Text    Auto
    Scroll To Text    Baby & Toddler
    Scroll To Text    Beauty
    Scroll To Text    Books
    Scroll To Text    Camping
    Scroll To Text    Cellphones
    Scroll To Text    Clothing
    Scroll To Text    Computers
    Scroll To Text    DIY & Home Improvement
    Scroll To Text    Gaming
    Scroll To Text    Garden, Pool & Patio
    Scroll To Text    Groceries
    Scroll To Text    Health & Hygiene
    Scroll To Text    Home & Appliances
    Scroll To Text    Household Cleaning
    Scroll To Text    Kitchen
    Scroll To Text    Liquor
    Scroll To Text    Luggage & Travel
    Scroll To Text    Movies
    Scroll To Text    Music
    Scroll To Text    Musical Instruments
    Scroll To Text    Networking
    Scroll To Text    Office
    Scroll To Text    Pets
    Scroll To Text    Photography 
    Scroll To Text    Sport & Training
    Scroll To Text    Stationery
    Scroll To Text    Toiletries
    Scroll To Text    Toys & Games
    Scroll To Text    TV, Audio & Video
    Scroll To Text    Wearable Tech
    Close Application
    Start Application
    Clear Environment
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Menu
    Click Menu Daily Deals
    Click Daily Deals Product from API
    Click Add To Cart
    Click Go To Cart
    Close Application
    Start Application
    Click Home
    Scroll To Text    Recently Viewed    loopTimes=20
    Click Home Icon Wish List
    Verify Text On Screen    Item added to Wish List
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
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
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
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    This list is empty!    ${MIN_TIMEOUT}
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
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
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
    Search Product    puzzle
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
    Search Product    flying fish lemon
    Click Product from API
    Click Sold By Name
    Verify Text On Screen    ACA Liquors    timeout=10s
    Click Product Filter
    Verify Text On Screen    ACA Liquors
    Click Back Screen
    Click Back Screen
    Click Brand Name
    Verify Text On Screen    Flying Fish    timeout=10s
    Click Product Filter
    Verify Text On Screen    Flying Fish
    Click Back Screen
    Click Back Screen
    Scroll To Text    You Might Also Like
    Click Product Info Bubble By Name    Liquor
    Verify Text On Screen    Liquor
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
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil case
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Verify Element On Screen    ${btnCheckout}    ${MIN_TIMEOUT}
    Click Product Text    ${query_result_CartProduct}
    Click Add To Wishlist Only
    Verify Text On Screen    Item added to Wish List    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    face mask pac
    Get Sponsored Product Detail
    Verify Element On Screen    ${btnProductSearchFilter}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Sponsored    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Sponsored    ${MIN_TIMEOUT}
    #Verify Text On Screen    % OFF    2s
    Verify Text On Screen    ${query_result_adProductStatus}    ${MIN_TIMEOUT}
    Verify Text On Screen    ${query_result_adProductPrice}    ${MIN_TIMEOUT}
    Verify Text On Screen    ${query_result_adProductBrand}    ${MIN_TIMEOUT}
    Click Product From Title    ${query_result_adProductTitle}
    Scroll To Text    Related Products
    Verify Text On Screen    Sponsored    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > PDP - QASA-170
    [Tags]    QASA-170
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    Telkom
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
    Click Review Helpful By Index    index=1
    Verify Text On Screen    Thank you for your feedback    ${MAX_TIMEOUT}
    Click Review Filter
    Click Review Filter Rating
    Click Review Filter Rating Five
    Click Review Filter Apply
    Verify Element On Screen    ${btnReviewFilter}    ${MIN_TIMEOUT}
    Click Review Icon More
    Click Review Report
    Verify Text On Screen    Your report has been submitted    ${MIN_TIMEOUT}
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
    Verify Element On Screen    ${btnLogin}    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > PDP - QASA-167
    [Tags]    QASA-167
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    tshirt for m
    Click Variant Product from API    itemIndex=1
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
    Click Search Trending Option By Index    index=1
    [Teardown]    Tear Down

Merchandised Landing Pages (CMS Widgets) -> Product List Widget - QASA-164
    [Tags]    QASA-164
    [Setup]    Start Application
    Click Menu
    Click Menu Shop By Department
    Click Menu Department    Beauty
    Click Product Widget By Index    index=1
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
    Click Product Widget Context
    Verify Product Widget Navigation
    [Teardown]    Tear Down

Apps > Wishlist (Android) - QASA-466
    [Tags]    android    QASA-466
    [Setup]    Start Application
    Clear Environment
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Wishlist Nav Bar
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Wish List    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Trending on Takealot    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    DEFAULT    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Wish List    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Trending on Takealot    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    DEFAULT    ${MIN_TIMEOUT}
    Click Create Wishlist
    [Teardown]    Tear Down

Apps > Wishlist (Android) > Delete List - QASA-161
    [Tags]    QASA-161
    [Setup]    Start Application
    Clear Environment
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
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Delete List    ${MIN_TIMEOUT}
    Click Delete Wishlist
    [Teardown]    Tear Down

Apps > Wishlist (Android) > Bottom Navigation - QASA-160
    [Tags]    QASA-160
    [Setup]    Start Application
    Clear Environment
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    sunlight
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
    Verify Text On Screen    Edit    ${MIN_TIMEOUT}
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
    Verify Element On Screen    ${btnCheckout}    ${MIN_TIMEOUT}
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

Apps > Order Tracking > Delivery Order > QASA-80
    [Tags]    QASA-80
    [Setup]    Start Application
    Clear Environment
    ${completedOrderProductId}=    Search And Return Product Id API    sunlight
    Create New Order API   ${completedOrderProductId}    1    Credit Card    COURIER    true

    Click Menu Logout If Logged In
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Run Keyword If    '${PLATFORM_NAME}' == 'ios'    Click Menu
    Click Menu My Account
    Click Menu Orders
    Click Order By Index    1
    Verify Text On Screen    ORDER SUMMARY    ${MIN_TIMEOUT}
    Verify Text On Screen    1 Item
    Verify Text On Screen    Delivery
    Verify Text On Screen    PAYMENT METHOD
    Verify Text On Screen    Credit Card
    Verify Text On Screen    DELIVERY METHOD
    Verify Text On Screen    Standard
    Scroll To Text    SHIPPING ADDRESS
    Verify Text On Screen    Nkhabi
    Run Keyword If    '${PLATFORM_NAME}' == 'android'    Swipe Up    ${windowScroll}
    Verify Text On Screen    5 Templar Street
    Verify Text On Screen    Camelot
    Verify Text On Screen    Cape Town
    Verify Text On Screen    7580
    Run Keyword If    '${PLATFORM_NAME}' == 'android'    Click Back Screen
    Run Keyword If    '${PLATFORM_NAME}' == 'android'    Click Back Screen
    Run Keyword If    '${PLATFORM_NAME}' == 'ios'    Click Back iOS    Back
    Run Keyword If    '${PLATFORM_NAME}' == 'ios'    Click Back iOS    My Account
    ${awaitingOrderProductId}=    Search And Return Product Id API    sunlight
    Create New Order API    ${awaitingOrderProductId}    1    PayFast    COURIER    false
    Click Menu Orders
    Click Awaiting Order By Index    1
    Click Pay Now Button
    Click Change Payment Method Only
    Click Card Payment Method
    Click Pay With Credit Card
    ${isAddCreditCardScreenRendered}=    Run Keyword And Return Status    Verify Card Payment Text    Card Description
    Run Keyword If    ${isAddCreditCardScreenRendered} == ${True}    Pay via Credit Card Paygate    cardSave=${True}
    Run Keyword If    ${isAddCreditCardScreenRendered} == ${False}    Enter CVV Number    123
    Run Keyword If    ${isAddCreditCardScreenRendered} == ${False}    Click Pay Button
    Run Keyword If    '${PLATFORM_NAME}' == 'ios'    Close Ratings Popup
    Verify Order Confirmation
    [Teardown]    Tear Down

Apps > My Account Verifications - QASA-477
    [Tags]    QASA-477
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
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
    Add Delivery Address    Tester Residential    0723456778    13 Caro Road
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    DELETE    ${MIN_TIMEOUT}
    Click Back Delivery Android
    Click Back iOS    My Account
    Click Menu Address Book
    Click Edit Button By Index    2
    Edit Delivery Address Street My Acc    13 Caro Roa
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    DELETE    ${MIN_TIMEOUT}
    Click Back Delivery Android
    Click Back iOS    My Account
    Click Menu Address Book
    Click Delete Address By Index    1
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
    Verify Text On Screen    Refund History    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    REDEEM GIFT VOUCHER    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Redeem Gift Voucher    ${MIN_TIMEOUT}
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
    Verify Text On Screen    Login and Security    ${MIN_TIMEOUT}
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
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    What can we help you with?    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Order Tracking (Collect) - QASA-547
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
    Verify Text On Screen    1 Item    ${MIN_TIMEOUT}
    Verify Text On Screen    Delivery    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Order Total    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    To Pay    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    TO PAY    ${MIN_TIMEOUT}
    Verify Text On Screen    PAYMENT METHOD    ${MIN_TIMEOUT}
    Verify Text On Screen    Credit Card    ${MIN_TIMEOUT}
    Swipe Up    ${windowScroll}
    Verify Text On Screen    DELIVERY METHOD    ${MIN_TIMEOUT}
    Verify Text On Screen    Collect    ${MIN_TIMEOUT}
    Verify Text On Screen    TAKEALOT PICKUP POINT    ${MIN_TIMEOUT}
    Swipe Up    ${windowScroll}
    Verify Text On Screen    Takealot Cape Town Warehouse Pickup Point    ${MIN_TIMEOUT}
    Verify Text On Screen    Block B, Montague Park    ${MIN_TIMEOUT}
    Verify Text On Screen    Business Estate    ${MIN_TIMEOUT}
    Verify Text On Screen    Montague Gardens    ${MIN_TIMEOUT}
    Verify Text On Screen    Cape Town    ${MIN_TIMEOUT}
    Verify Text On Screen    7441    ${MIN_TIMEOUT}
    Swipe Down    ${windowScroll}
    Click Order Pay Now
    Click Change Payment Method Only
    Click Payfast Payment Method
    Click Pay With Payfast
    Verify Payfast Payment Text
    Click Complete Payment With Payfast
    Click Track Order Detail
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
    Click Payment Confirm Order
    Click Track Order Detail
    Close Application
    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Click Order Awaiting Payment
    Verify Text On Screen    ORDER SUMMARY    ${MIN_TIMEOUT}
    Verify Text On Screen    1 Item    ${MIN_TIMEOUT}
    Verify Text On Screen    Delivery    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Order Total    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    To Pay    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    TO PAY    ${MIN_TIMEOUT}
    Swipe Up    ${windowScroll}
    Verify Text On Screen    PAYMENT METHOD    ${MIN_TIMEOUT}
    Verify Text On Screen    Credit Card    ${MIN_TIMEOUT}
    Verify Text On Screen    DELIVERY METHOD    ${MIN_TIMEOUT}
    Verify Text On Screen    Standard    ${MIN_TIMEOUT}
    Verify Text On Screen    SHIPPING ADDRESS    ${MIN_TIMEOUT}
    Swipe Up    ${windowScroll}
    Verify Text On Screen    Test    ${MIN_TIMEOUT}
    Verify Text On Screen    12 Ridge Way    ${MIN_TIMEOUT}
    Verify Text On Screen    Green Point    ${MIN_TIMEOUT}
    Verify Text On Screen    Cape Town    ${MIN_TIMEOUT}
    Verify Text On Screen    8005    ${MIN_TIMEOUT}
    Swipe Down    ${windowScroll}
    Click Order Pay Now
    Click Change Payment Method Only
    Click Payfast Payment Method
    Click Pay With Payfast
    Verify Payfast Payment Text
    [Teardown]    Tear Down

Apps > Cart (Android) > QASA-524 - QASA-81
    [Tags]    QASA-524    QASA-81
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
    Click Cart Continue Shopping
    Click Home Cart
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Your Shopping Cart is Empty    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Trending on Takealot    ${MIN_TIMEOUT}
    Verify Element On Screen    ${btnCartContinueShopping}    ${MIN_TIMEOUT}
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
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    Telkom
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
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    The prepaid code will be delivered to you via email    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    This product is not eligible for Cash on Delivery (COD)    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Cart    ${MIN_TIMEOUT}
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
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
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
    Add To Cart
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Any Delivery
    Click Donate No Thanks
    ${liquorProductId}=    Search And Return Product Id API    liquor
    Add To Cart    productId=${liquorProductId}
    Click Pay With Credit Card
    Verify Text On Screen    You've added the following new item(s) to your cart
    Click Continue To Checkout
    Verify Text On Screen    Age Verification
    Verify Text On Screen    You have added liquor to your cart. Please verify that you are 18 years of age or older.
    [Teardown]    Tear Down

Cart Update & Cart Notification - Heavy Good - QASA-247
    [Tags]    QASA-247
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
    Click Any Delivery
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

PDP - Brand Links - QASA-28
    [Tags]    QASA-28
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Samsung
    Click First Product from API
    Click Seller Name
    Click Back Android    2s
    Click Back iOS    ${query_result_FirstProduct}
    Verify Element On Screen    ${btnAddToCart}    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Cart Update & Cart Notification - Heavy Good - Collect - QASA-874
    [Tags]    QASA-874
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
    Click Collect
    Click Filter Province
    Select Province Dynamically    Western Cape
    Click Pickup Point
    Click Any Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Add To Cart    productId=101371987
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
    Select Province Dynamically    Western Cape
    Click Pickup Point
    Click Any Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Add To Cart    productId=101371987
    Click Pay With Credit Card
    Click Cart Update Back To Cart
    Click Checkout
    Click Collect Not Available
    Click Delivery
    Click Address
    Click Surcharge Delivery
    [Teardown]    Tear Down

iOS > Privacy Attention Prompt - QASA-43
    [Tags]    QASA-43
    [Setup]    Start Application    ${False}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Would you like to receive push notifications for Daily Deals and Promotions    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Would you like to receive app notifications for Daily Deals    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Returns > Non-Variant item - QASA-865
    [Tags]    QASA-865
    [Setup]    Start Application
    Clear Environment
    ${completedOrderProductId}=    Search And Return Product Id API    sunlight
    Create New Order API   ${completedOrderProductId}    1    Credit Card    COURIER    true
    Update Order Delivery DB    ${query_order_id}
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu My Account
    Click Menu Exchanges And Returns
    Click Returns Call To Action Button
    Click Text    ${query_order_id}
    Click Text    ${prod_Title}
    Click Select Return Reason
    Select Return Reason
    Click Select Return Method
    Select Return Method
    Enter Return Description
    Click Return Continue
    Click Log Return
    Click Return Collect
    Select Return Collect
    Select Return Submit
    Verify Text On Screen    Track Return    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Merchandised Landing Pages (CMS Widgets) - Featured Collection Widget - QASA-165
    [Tags]    QASA-165
    [Setup]    Start Application
    Click Home
    Click Menu
    Click Menu Shop By Department
    Click Menu Department    	Luggage & Travel
    Click Featured Collection Widget    Tote Bags
    Verify Product Widget Navigation
    Verify Text On Screen    Totes
    [Teardown]    Tear Down
