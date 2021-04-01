*** Settings ***
Default Tags      regression
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Register & Login - QA-5329
    [Setup]    Start Application
    Click Menu
    Click Menu Register
    Register Takealot    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}
    Verify Register Text    Please enter your first name
    Verify Register Text    Please enter your surname
    Verify Register Text    Please enter your email address
    Verify Register Text    Please enter your password
    Verify Register Text    Please confirm your password
    Click Back My Account
    Click Menu Register
    Register Takealot    AutoTest    Test    AutoTest10@take2.co.za    t@ke@!ot1234
    Click Back My Account
    Click Menu
    Click Menu Logout
    Click Menu Login
    Login Takealot    ${EMPTY}    ${EMPTY}
    Verify Register Text    Please enter your email address
    Verify Register Text    Please enter your password
    Login Takealot    AutoTest10@take2.co.za    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu Logout
    [Teardown]    Tear Down

Apps > Promotions (Android) - QA-5357
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

Apps > Promotions (Android) 02 - QA-5357
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

Apps > Promotions (Android) 03 - QA-5357
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
    Click Product From Title
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

Apps > PLP 02 - QA-5360
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

Apps > PLP 03 - QA-5360
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
