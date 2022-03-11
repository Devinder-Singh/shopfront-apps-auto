*** Settings ***
Default Tags      regression
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
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
    Verify Text On Screen    Daily Deals
    Verify Text On Screen    Only 4 per customer
    Verify Text On Screen    Item Total
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
    Verify Element On Screen    ${btnCheckout}    ${MIN_TIMEOUT}
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
#    ${txtProduct}=    Get Daily Deals Product to Add To Cart
#    Scroll To Element    ${txtProduct}
    Click Product Filter
    Select Third Deals Filter Option From API
    Click Apply Filter
    Click Filter Product from API
    Click Add To Cart
    Click Go To Cart
    Change Cart Quantity    5
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
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    Montego
    Click Product From Title    Montego - Monty & Me Adult Dog Food
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
    Search Product    Montego
    Click Product From Title    Montego - Monty & Me Adult Dog Food
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
    Search Product    Montgomery
    Click Product From Title    Montgomery's Gourmet Pork & Apple Dog Treat 1kg
#    Click Variant Option By Index    1
    Click Add To Cart
    Click Go To Cart
    Verify Text On Screen    Missed promotion    ${MAX_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    ADD
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    TO QUALIFY
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Add
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    to qualify
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Montgomery
    Click Product From Title    Montgomery's Gourmet Pork & Apple Dog Treat 1kg
#    Click Variant Option By Index    1
    Click Shop The Deal
    Click Product From Title    Montgomery's Gourmet Grilled Steak Dog Treat 1kg
#    Click Variant Option By Index    1
    Click Add To Cart
    Click Go To Cart
    Change Cart Quantity    3
    Check Text On Screen Not    Missed promotion
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Check Text On Screen Not    ADD 1 ITEM TO QUALIFY
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Check Text On Screen Not    Add 1 item to qualify
    [Teardown]    Tear Down

Apps > Promotions (Android) Unboxed & Other Offers - QASA-253 - QASA-306
    [Tags]    QASA-253    QASA-306
    [Setup]    Start Application
    Clear Environment
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
    Verify Text On Screen    Blue Dot Sale    ${MIN_TIMEOUT}
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
    Scroll To Text    Recommended for you
    Scroll To Text    Recently Viewed
    Click Clear All Recently Viewed
    Click Cancel Clear All Recently Viewed
    Swipe Up    ${windowScroll}
    Click Clear All Recently Viewed
    Confirm Clear All Recently Viewed
    Verify Text Not On Screen    Recently Viewed    timeout=10s
    [Teardown]    Tear Down

Verify Home Screen > Shop by Dept widget - QASA-882 - QASA-883 - QASA-861
    [Tags]    QASA-882    QASA-883    QASA-861
    [Setup]    Start Application
    Click Home
    @{departmentCatList}=    Get Department Categories CMS Widget List API
    @{departmentCatSlugList}=    Get Department Categories CMS Widget Slug List API
    ${departCatListSize}=    Get Length    ${departmentCatList}
    
    FOR    ${index}    IN RANGE    0    ${departCatListSize}
        Scroll To Text    Shop by Department
        Scroll To Text    ${departmentCatList}[${index}]    scrollElement=${cntHomeDeptIcons}    scrollSwipeDirection=Left
        Click Home Icon    ${departmentCatList}[${index}]
        
        ${deptWidgetTitle}=    Get Department Category CMS Widget Title By Slug API    ${departmentCatSlugList}[${index}]
        Verify Text On Screen    ${deptWidgetTitle}
        Click Cancel Screen
    END
    [Teardown]    Tear Down

Verify Home Screen > Shop by Dept widget - QASA-862
    [Tags]    QASA-862
    [Setup]    Start Application
    Click Menu
    Click Menu Shop By Department
    Verify Text On Screen    Blue Dot Sale    ${MAX_TIMEOUT}
    @{departmentCatList}=    Get Department Categories List API
    FOR    ${departmentCat}    IN    @{departmentCatList}
        Scroll To Text    ${departmentCat}
    END
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
    Scroll To Text    Recently Viewed    loopTimes=30
    Click Home Icon Wish List
    Verify Text On Screen    Item added to Wish List
    [Teardown]    Tear Down

Apps > Verify Home Screen - QASA-173
    [Tags]    QASA-173
    [Setup]    Start Application
    Clear Environment
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

#test needs to be re-worked in future.
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
    Search Product    flying fis
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    ${MIN_TIMEOUT}
    Click Sold By Name
    Verify Text On Screen    Flying Fish    timeout=10s
    Click Product Filter
    Verify Text On Screen    Flying Fish
    Click Back Screen
#    Click Back Screen
    Click Brand Name
    Verify Text On Screen    FLYING FISH    timeout=10s
#    Click Product Filter
#    Verify Text On Screen    Flying Fish
#    Click Back Screen
#    Click Back Screen
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
    Clear Environment
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
    Run Keyword If    '${PLATFORM_NAME}' == 'android'    Click More Options Menu
    Click Options Menu Home
    Click Back iOS    pencil case
    Click Back iOS    Back
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}' == 'android'    Click More Options Menu
    Click Options Menu Categories
    Click Back iOS    pencil case
    Click Back iOS    Back
    Verify Text On Screen    Daily Deals    ${MIN_TIMEOUT}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}' == 'android'    Click More Options Menu
    Click Options Menu Deals
    Click Back iOS    pencil case
    Click Back iOS    Back
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}' == 'android'    Click More Options Menu
    Click Options Menu Lists
    Click Back iOS    pencil case
    Click Back iOS    Back
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Wish List    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Element On Screen    ${btnWishListIcon}    ${MIN_TIMEOUT}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}' == 'android'    Click More Options Menu
    Click Options Menu Account
    Click Back iOS    pencil case
    Click Back iOS    Back
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Personal Details    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > PDP - QASA-519
    [Tags]    QASA-519
    [Setup]    Start Application
    Clear Environment
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    ${PLID}=    Search Product And Return PLID API    pencil case
    ${productTitle}=    Get Product Title By PLID API    ${PLID}
    Search Product    pencil case
    Click Product From Search Result    ${productTitle}
    Click Add To Cart
    Click Go To Cart
    Verify Element On Screen    ${btnCheckout}    ${MIN_TIMEOUT}
    Click Product Text    ${productTitle}
    Click Add To Wishlist Only
    Verify Text On Screen    Item added to Wish List    ${MAX_TIMEOUT}
    Close Application
    Start Application
    Click Home
    Click Search Home
    Start Application
    Search Product    face mask pac
    Get Sponsored Product Detail
    Verify Element On Screen    ${btnProductSearchFilter}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Sponsored    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Sponsored    ${MIN_TIMEOUT}
    #Verify Text On Screen    % OFF    2s
    Verify Text On Screen    ${query_result_adProductStatus}    ${MIN_TIMEOUT}
    Verify Text On Screen    ${query_result_adProductPrice}    ${MIN_TIMEOUT}
    Click Product From Title    ${query_result_adProductTitle}
    Scroll To Text    Related Products
    Verify Text On Screen    Sponsored    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > PDP - QASA-169
    [Tags]    QASA-169
    [Setup]    Start Application
    Click Home
    Click Search Home
    ${PLID}=    Search Product And Return PLID API    jean for wom    searchResultIndex=0    enableHasMoreColoursFlag=${True}
    ${productTitle}=    Get Product Title By PLID API    ${PLID}
    Search Product    jean for wom
    Click Product From Search Result    ${productTitle}
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
    ${completedOrderProductId}=    Search And Return Product Id API    sunlight
    Create New Order API   ${completedOrderProductId}    1    Credit Card    COURIER    true
    Update Order Delivery DB    ${query_order_id}
    Click Home
    Click Search Home
    ${PLID}=    Search Product And Return PLID API    sunlight    searchResultIndex=0    enableHasMoreColoursFlag=${True}
    ${productTitle}=    Get Product Title By PLID API    ${PLID}
#    @{colourVariants}=    Get Product Variants By PLID API    ${PLID}    Colour
#    @{SizeVariants}=    Get Product Variants By PLID API    ${PLID}    Size
    Click Product From Search Result    ${productTitle}
#    Click Variant By Colour Dynamically    ${colourVariants}[0]
#    Click Variant By Size Dynamically    ${SizeVariants}[0]
    Click PDP Write Review
    Click Write Product Review
    Click Understand Write Review
    Click Review Rating
    Enter Review Message    Auto Test Auto Test Auto Test
    Click Review Submit
    Verify Text On Screen    Awaiting Approval    ${MIN_TIMEOUT}
#    Click PDP Write Review
#    Click Review Rating
#    Enter Review Message    Auto Test
#    Click Review Submit
#    Verify Text On Screen    You've already submitted a review for this product    ${MIN_TIMEOUT}
    Click Back Android
    Click Back iOS    ${productTitle}
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
    Search Product    sunlight
    Click Product from API
#    Click Product From Search Result    ${productTitle}
    Click PDP Write Review
    Verify Element On Screen    ${btnLogin}    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > PDP - QASA-167
    [Tags]    QASA-167
    [Setup]    Start Application
    Clear Environment
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    ${PLID}=    Search Product And Return PLID API    mens shirts    enableHasMoreColoursFlag=${True}
    ${productTitle}=    Get Product Title By PLID API    ${PLID}
    @{sizeVariants}=    Get Product Variants By PLID API    ${PLID}    Size
    @{colourVariants}=    Get Product Variants By PLID API    ${PLID}    Colour
    Search Product    mens shirts
    Click Product    ${productTitle}
    Verify PDP Screen Element Not Exists    ${btnAddToCart}
    Click Variant By Colour Dynamically    ${colourVariants}[0]
    Click Variant By Size Dynamically    ${sizeVariants}[0]
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

Apps > Wishlist (Android) > Delete List - QASA-161
    [Tags]    QASA-161
    [Setup]    Start Application
    Clear Environment
    Click Menu Logout If Logged In
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    ${PLID}=    Search Product And Return PLID API    Pencil    enableHasMoreColoursFlag=${True}
    ${productTitle}=    Get Product Title By PLID API    ${PLID}
    @{colourVariants}=    Get Product Variants By PLID API    ${PLID}    Colour
    Search Product    Pencil
    Click Product From Search Result    ${productTitle}
    Click Variant By Colour Dynamically    ${colourVariants}[0]
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
    Start Application    ${False}
    Click Home
    Click Wishlist Nav Bar
    Click Create Wishlist
    Navigate to Wishlist Auto
    Click More Options Menu
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Rename List    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Delete List
    Click Delete Wishlist
    [Teardown]    Tear Down

Apps > Wishlist (Android) > Bottom Navigation - QASA-160
    [Tags]    QASA-160
    [Setup]    Start Application
    Clear Environment
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    ${PLID}=    Search Product And Return PLID API    sunlight dish washing liquid
    ${productTitle}=    Get Product Title By PLID API    ${PLID}
    Search Product    sunlight dish washing liquid
    Click Product From Search Result    ${productTitle}
    Click Add To Wishlist
    Close Application
    Start Application    ${False}
    Click Home
    Click Wishlist Nav Bar
    Click Wishlist Default
    Click Wishlist Add To Cart
    Click More Options Menu
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Share List    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Edit    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Element On Screen    ${btnMoreOptionsShare}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Element On Screen    ${btnMoreOptionsEdit}    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Wishlist (iOS) - QASA-472
    [Tags]    QASA-472
    [Setup]    Start Application
    Clear Environment
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Menu
    Click Menu Shop By Department
    Click Menu Daily Deals
    Click Daily Deals Product from API
    Click Add To Cart
    Click Go To Cart
    Change Cart Quantity    2
    Click Checkout Delete First Item
    Run Keyword If    '${PLATFORM_NAME}' == 'android'    Click Checkout Cart Undo
    Run Keyword If    '${PLATFORM_NAME}' == 'android'    Verify Element On Screen    ${btnCheckout}    ${MIN_TIMEOUT}
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
    Create New Order API   ${completedOrderProductId}    1    Credit Card    COURIER    false
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Click Awaiting Order By Index    1
    Verify Text On Screen    ORDER SUMMARY    ${MIN_TIMEOUT}
    Verify Text On Screen    1 Item
    Verify Text On Screen    Delivery
    Verify Text On Screen    PAYMENT METHOD
    Verify Text On Screen    Credit Card
    Verify Text On Screen    DELIVERY METHOD
    Verify Text On Screen    Standard
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
    Click Residential
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

Apps > Order Tracking (Collect) - QASA-547
    [Tags]    QASA-547
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
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    Fridg
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    ${noAddressExists}=    Run Keyword And Return Status    Verify Text On Screen    Please add a Delivery    ${MAX_TIMEOUT} 
    Run Keyword If    '${noAddressExists}' == '${True}'    Click Add Delivery Address
    Run Keyword If    '${noAddressExists}' == '${True}'    Click Residential
    Run Keyword If    '${noAddressExists}' == '${True}'    Add Delivery Address    Tester Residential    0723456778    13 Caro Road
    Click Address By Index
    Click Surcharge Delivery
    Click Donate No Thanks
    Click Add Payment Voucher
    Enter Payment Voucher Code
    Click Apply Payment Voucher
    Click Back Payment Voucher
    Click Payment Confirm Order
    Click Track Order Detail
    kwConfirmation.Click Track Order
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
    Verify Text On Screen    Tester Residential    ${MIN_TIMEOUT}
    Verify Text On Screen    13 Caro Road    ${MIN_TIMEOUT}
    Verify Text On Screen    Robertsham    ${MIN_TIMEOUT}
    Verify Text On Screen    Johannesburg South    ${MIN_TIMEOUT}
    Verify Text On Screen    2091    ${MIN_TIMEOUT}
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
    Click Menu Logout If Logged In
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    ${PLID}=    Search Product And Return PLID API    Pencil    enableHasMoreColoursFlag=${True}
    ${productTitle}=    Get Product Title By PLID API    ${PLID}
    @{colourVariants}=    Get Product Variants By PLID API    ${PLID}    Colour
    Search Product    Pencil
    Click Product From Search Result    ${productTitle}
    Click Variant By Colour Dynamically    ${colourVariants}[0]
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
    ${PLID}=    Search Product And Return PLID API    Pencil    enableHasMoreColoursFlag=${True}
    ${productTitle}=    Get Product Title By PLID API    ${PLID}
    @{colourVariants}=    Get Product Variants By PLID API    ${PLID}    Colour
    Search Product    Pencil
    Click Product From Search Result    ${productTitle}
    Click Variant By Colour Dynamically    ${colourVariants}[0]
    Click Add To Cart
    Click Go To Cart
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Change Cart Quantity    2
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Change Cart Quantity    2
    Click Checkout
    [Teardown]    Tear Down

Apps > Cart (Android) 04 - QASA-83 / QASA-82
    [Tags]    QASA-83    QASA-82
    [Setup]    Start Application
    Clear Environment
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    ${telkomProductPLID}=    Search Product And Return PLID API    Telkom
    ${telkomProductTitle}=    Get Product Title By PLID API    ${telkomProductPLID}
    Search Product    Telkom
    Click Product    ${telkomProductTitle}
    @{telkomProductVariants}=    Get Product Variants By PLID API    ${telkomProductPLID}    Value
    Click Variant By Value Dynamically    ${telkomProductVariants}[0]
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

Cart Update & Cart Notification - Liquor - QASA-249
    [Tags]    QASA-249
    [Setup]    Start Application
    Clear Environment
    Add To Cart
    Click Menu Logout If Logged In
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home Cart
    Click Checkout
    Click Delivery
    Click Address By Index
    Click Any Delivery
    Click Donate No Thanks
    ${liquorProductId}=    Search And Return Product Id API    johnnie+walker
    Add To Cart    productId=${liquorProductId}
    Click Pay With Credit Card
    Verify Text On Screen    You've added the following new item(s) to your cart    timeout=${MAX_TIMEOUT}
    Click Continue To Checkout
    Verify Text On Screen    Age Verification    timeout=${MAX_TIMEOUT}
    Verify Text On Screen    You have added liquor to your cart. Please verify that you are 18 years of age or older.
    [Teardown]    Tear Down

Cart Update & Cart Notification - Heavy Good (Delivery) - QASA-247
    [Tags]    QASA-247
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
    Click Address
    Click Any Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Add To Cart
    Click Pay With Credit Card
    Click Cart Update Continue Checkout
    Click Pay With Credit Card
    [Teardown]    Tear Down

Cart Update & Cart Notification - Heavy Good (Collect) - QASA-1023
    [Tags]    QASA-247
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

#Cart Update & Cart Notification - Heavy Good - Collect - QASA-874
#    [Tags]    QASA-874
#    [Setup]    Start Application
#    Clear Environment
#    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
#    Click Home
#    Click Search Home
#    Search Product    Pencil
#    Click Product from API
#    Click Add To Cart
#    Click Go To Cart
#    Click Checkout
#    Click Collect
#    Click Filter Province
#    Select Province Dynamically    Western Cape
#    Click Pickup Point
#    Click Any Delivery
#    Click Donate No Thanks
#    Click Change Payment Method
#    Click Card Payment Method
#    Add To Cart    productId=101371987
#    Click Pay With Credit Card
#    Click Cart Update Continue Checkout
#    Click Collect Not Available
#    Click Delivery
#    Click Address
#    Click Surcharge Delivery
#    Close Application
#    Start Application
#    Clear Environment
#    Click Home
#    Click Search Home
#    Search Product    Pencil
#    Click Product from API
#    Click Add To Cart
#    Click Go To Cart
#    Click Checkout
#    Click Collect
#    Click Filter Province
#   Select Province Dynamically    Western Cape
#    Click Pickup Point
#    Click Any Delivery
#    Click Donate No Thanks
#    Click Change Payment Method
#    Click Card Payment Method
#    Add To Cart    productId=101371987
#    Click Pay With Credit Card
#    Click Cart Update Back To Cart
#    Click Checkout
#    Click Collect Not Available
#    Click Delivery
#    Click Address
#    Click Surcharge Delivery
#    [Teardown]    Tear Down

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