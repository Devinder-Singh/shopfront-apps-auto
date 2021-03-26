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
    Click Wishlist Delete
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
    Click Search Product Sort
    Click Sort Low To High
    Click Search Product Sort
    Click Sort Top Rated
    Click Search Product Sort
    Click Sort New Arrivals
    Click Search Product Filter
    Click Filter Category
    Click Filter Office Stationery
    Click Filter Select Button
    Click Filter Apply Button
    Click Search Product Filter
    Click Filter Availability
    Click Filter In Stock
    Click Filter Apply Button
    Click Search Product Filter
    Click Filter Brand
    Click Filter Brand Name
    Click Filter Select Button
    Click Filter Apply Button
    Click Search Product Filter
    Click Filter Colour
    Click Filter Colour Name
    Click Filter Select Button
    Click Filter Apply Button
    Click Search Product Filter
    Click Filter Material
    Click Filter Material Name
    Click Filter Select Button
    Click Filter Apply Button
    Click Search Product Filter
    Click Filter Rating
    Click Filter Rating Name
    Click Filter Apply Button

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
    Click More Options
    Click Options Menu Home
    Click Home
    Search Product    pencil
    Click First Product from API
    Click More Options
    Click Options Menu Categories
    Verify Text On Screen    Daily Deals
    Click Home
    Search Product    pencil
    Click First Product from API
    Click More Options
    Click Options Menu Deals
    Click Home
    Search Product    pencil
    Click First Product from API
    Click More Options
    Click Options Menu Lists
    Verify Text On Screen    Wish List
    Click Home
    Search Product    pencil
    Click First Product from API
    Click More Options
    Click Options Menu Account
    Verify Text On Screen    Personal Details
