*** Settings ***
Default Tags      wishlist
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Wishlist > PDP Add to List > Add to List(Default List) - QA-5368
    [Tags]    QA-5368
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    30s
    Click Add To Wishlist Only
    Click Wishlist Change
    Verify Text On Screen iOS    Wish List    2s
    Verify Wishlist Checked
    [Teardown]    Tear Down

Apps > Wishlist > Add to List > PDP - QA-5371
    [Tags]    QA-5371
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    30s
    Verify Element On Screen    ${btnAddWishlist}    2s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    airtim
    Click Variant Product from API
    Verify Element On Screen    ${btnPDPSelectOption}    30s
    Verify Element On Screen Not    ${btnAddWishlist}    2s
    Click Product Variant From API
    Verify Element On Screen    ${btnAddToCart}    30s
    Verify Element On Screen    ${btnAddWishlist}    2s
    [Teardown]    Tear Down

Apps > Wishlist > Add to List > Create List - QA-5372 / QA-5374
    [Tags]    QA-5372    QA-5374
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Wishlist Nav Bar
    Click Create Wishlist Only
    Click Save Wishlist
    Verify Text On Screen    Please enter a list name    10s
    Enter Wishlist Custom Name    AbcdefghijklmnopqrstuvwxyzAbcdefghijklmnopqrstuvwxyz
    Click Save Wishlist
    Verify Text On Screen    Maximum 50 characters    10s
    Enter Wishlist Custom Name    Wish List
    Click Save Wishlist
    Verify Text On Screen    Wish List already exists    10s
    Close Application
    Start Application
    Click Home
    Click Wishlist Nav Bar
    Click Create Wishlist
    Verify Text On Screen    List Created    20s
    Navigate to Wishlist Auto
    Click More Options Menu Android
    Verify Text On Screen Android    Rename List    30s
    Verify Text On Screen Android    Delete List    1s
    Click Delete Wishlist
    [Teardown]    Tear Down

Apps > Wishlist > Cart and Search Listings - QA-5299
    [Tags]    QA-5299
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
    Click Checkout Move To Wishlist First Item
    Verify Text On Screen Android    Item(s) moved to list    30s
    Verify Text On Screen iOS    Item added to Wish List    30s
    Close Application
    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    pencil
    Click Search Product Wishlist
    Verify Text On Screen Android    Item added to Wish List    30s
    Verify Text On Screen iOS    Item added to Wish List    30s
    [Teardown]    Tear Down

Apps > Wishlist > List Limitations(25 Lists) - QA-5386
    [Tags]    QA-5386
    [Setup]    Start Application
    Clear Environment
    Create Wishlists
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Wishlist Nav Bar
    Click Create Wishlist
    Verify Text On Screen    Limit reached    20s
    Verify Text On Screen    You can not create more than 25 lists    2s
    [Teardown]    Tear Down

Apps > Wishlist > Add to List > PDP > Out of stock - QA-8933
    [Tags]    QA-8933
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    jean
    Click Variant Product from API
    Click Product Variant From API
    Verify Element On Screen    ${btnAddToCart}    30s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    jean
    Click Variant Product from API
    Click Product Disabled Variant From API
    Verify Text On Screen    Add to List    30s
    [Teardown]    Tear Down

Apps > Wishlist > Add to List > PDP > Tablet/iPad - QA-8934
    [Tags]    QA-8934
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    jean
    Click Variant Product from API
    Click Product Variant From API
    Verify Element On Screen    ${btnAddToCart}    30s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    jean
    Click Variant Product from API
    Click Product Disabled Variant From API
    Verify Text On Screen    Add to List    30s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    30s
    Verify Element On Screen    ${btnAddWishlist}    30s
    [Teardown]    Tear Down

Apps > Wishlist > PDP Add to List > Add to List(More than one list) - QA-8939
    [Tags]    QA-8939
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Wishlist Nav Bar
    Click Create Wishlist
    Click Home
    Click Search Home
    Search Product    Pen
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    30s
    Long Press    ${btnAddWishlist}
    Verify Text On Screen    Add to List    10s
    Click Option Wish List
    Click Option AutoTestWishlist
    Click Save Wishlist
    Verify Text On Screen    Item added to multiple lists    10s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    pencil
    Click Search Product Wishlist
    Verify Text On Screen    Item added to Wish List    30s
    [Teardown]    Tear Down

Apps > Wishlist > PDP Add to List > Add to List(Change Recent List) - QA-8941
    [Tags]    QA-8941
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Wishlist Nav Bar
    Click Create Wishlist
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Wishlist Only
    Verify Text On Screen    Item added to Wish List    30s
    [Teardown]    Tear Down

Apps > Wishlist > List Limitations(250 items) > PDP - QA-8949
    [Tags]    QA-8949
    [Setup]    Start Application
    Click Menu
    Log In If Not Logged In    ${G_EMAIL_Wishlists}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Wishlist Only
    Verify Text On Screen    Limit reached    20s
    Verify Text On Screen    You can not add more than 250 items to this list    2s
    [Teardown]    Tear Down

Apps > Wishlist > My Lists > Default List - QA-8951
    [Tags]    QA-8951
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Wishlist Nav Bar
    Navigate to Wishlist Auto
    Click More Options Menu Android
    Check Text On Screen Not Android    Rename List
    Check Text On Screen Not Android    Delete List
    [Teardown]    Tear Down

Apps > Wishlist > List Details > Edit > Move to list - QA-9171
    [Tags]    QA-9171
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Wishlist Nav Bar
    Click Create Wishlist
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Wishlist Only
    Verify Text On Screen    Item added to 'AutoTestWishlist'    30s
    Close Application
    Start Application
    Click Home
    Click Home WishList
    Click Wishlist Edit
    Select Wishlist Item
    Click Wishlist Move Items
    Click Option Wish List
    Click Wishlist Move Items
    Verify Text On Screen    Item moved to Wish List    30s
    [Teardown]    Tear Down

Apps > Wishlist > PDP Add to List > List Manager (Remove from multiple lists) - QA-10747
    [Tags]    QA-10747
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Wishlist Nav Bar
    Click Create Wishlist
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Wishlist Only
    Verify Text On Screen    Item added to 'AutoTestWishlist'    30s
    Click Add To Wishlist Only
    Click Option Wish List
    Click Save Wishlists
    Verify Text On Screen    Item added to Wish List    30s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Wishlist Only
    Click Option Wish List
    Click Option AutoTestWishlist
    Click Save Wishlists
    Verify Text On Screen    Item removed from multiple lists    30s
    [Teardown]    Tear Down

Apps > Wishlist > PDP Add to List > List Manager - QA-5370
    [Tags]    QA-5370
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Wishlist Only
    Verify Text On Screen    Item added to Wish List    30s
    Click Add To Wishlist Only
    Click Option Wish List
    Verify Text On Screen    Add to List    2s
    Verify Element On Screen    ${btnWishlistAdd}    2s
    Click Save Wishlists
    Verify Text On Screen    Item removed from Wish List    30s
    [Teardown]    Tear Down

Apps > Wishlist > My Lists > Pagination - QA-5369
    [Tags]    QA-5369
    [Setup]    Start Application
    Clear Environment
    Create Wishlists
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Wishlist Nav Bar
    Verify Text On Screen Scroll    Test-Wishlist-8570800-0    2s    ${windowScroll}    ${btnWishlistCreate}
    Clear Environment
    Clear Environment
    Clear Environment
    [Teardown]    Tear Down

Apps > Wishlist > My Lists > Landing Page > Create List Tutorial - QA-5375
    [Tags]    QA-5375
    [Setup]    Install Application
    Close All Applications
    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Wishlist Nav Bar
    Verify Text On Screen    Create a New List    15s
    Click Create Wishlist
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Wishlist Only
    [Teardown]    Tear Down

Apps > Wishlist > List Details > Delete List - QA-5376
    [Tags]    QA-5376
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Wishlist Nav Bar
    Click Create Wishlist
    Verify Text On Screen    List Created    20s
    Click Home
    Click Wishlist Nav Bar
    Navigate to Wishlist Auto
    Click More Options Menu Android
    Click Delete Wishlist Only
    Click Delete Wishlist Cancel
    Click Delete Wishlist
    [Teardown]    Tear Down

Apps > Wishlist > My Lists > Swipe Gestures > Onboarding - QA-5378
    [Tags]    QA-5378
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Wishlist Nav Bar
    Click Create Wishlist
    Verify Text On Screen    List Created    20s
    Click Home
    Click Wishlist Nav Bar
    Navigate to Wishlist Auto
    Click More Options Menu Android
    Click Delete Wishlist
    [Teardown]    Tear Down

Apps > Wishlist > List Details > Empty List - QA-5379
    [Tags]    QA-5379
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Home WishList
    Verify Text On Screen    This list is empty    30s
    Click Wishlist Continue Shopping
    Click Search Home
    Close Application
    Start Application
    Click Home
    Click Home WishList
    Verify Text On Screen    Trending on Takealot    30s
    Click Product Trending
    Verify Element On Screen    ${btnAddToCart}    30s
    Click Back Android
    Click Back iOS    Wish List
    Verify Text On Screen    Trending on Takealot    10s
    [Teardown]    Tear Down

Apps > Wishlist > List Details > Pagination - QA-5380
    [Tags]    QA-5380
    [Setup]    Start Application
    Click Menu
    Log In If Not Logged In    ${G_EMAIL_Wishlists}    t@ke@!ot1234
    Click Home
    Click Wishlist Nav Bar
    Navigate to Wishlist Auto
    Verify Text On Screen Scroll    Gosh Donoderm Moisture Gel    1s    ${windowScroll}    ${btnWishlistCart}
    [Teardown]    Tear Down

Apps > Wishlist > List Details > Swipe Gestures - QA-5381
    [Tags]    QA-5381
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Wishlist Only
    Close Application
    Start Application
    Click Home
    Click Wishlist Nav Bar
    Navigate to Wishlist Auto
    Verify Element On Screen    ${btnWishlistCart}    30s
    Click Wishlist Edit
    Select Wishlist Item
    Click Wishlist Move to List
    Verify Text On Screen    Move to List    10s
    Verify Text On Screen    Wish List    1s
    Verify Element On Screen    ${btnWishlistSAVE}    1s
    Verify Element On Screen    ${btnWishlistPlusIcon}    1s
    Close Application
    Start Application
    Click Home
    Click Wishlist Nav Bar
    Navigate to Wishlist Auto
    Verify Element On Screen    ${btnWishlistCart}    30s
    Click Wishlist Edit
    Select Wishlist Item
    Click Wishlist Delete Items
    Click Wishlist Delete Items Undo
    Close Application
    Start Application
    Click Home
    Click Wishlist Nav Bar
    Navigate to Wishlist Auto
    Click Wishlist Add To Cart
    [Teardown]    Tear Down

Apps > Wishlist > List Details > Edit > Delete - QA-5383
    [Tags]    QA-5383
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Wishlist Only
    Close Application
    Start Application
    Click Home
    Click Wishlist Nav Bar
    Navigate to Wishlist Auto
    Verify Element On Screen    ${btnWishlistCart}    30s
    Click Wishlist Edit
    Click Back Android
    Click Delete Wishlist Items Cancel iOS
    Click Wishlist Edit
    Select Wishlist Item
    Verify Element On Screen    ${btnWishlistMoveToList}    10s
    Verify Element On Screen    ${btnWishlistDelete}    2s
    Click Wishlist Delete Items
    Click Wishlist Delete Items Undo
    Verify Element On Screen    ${btnWishlistCart}    15s
    [Teardown]    Tear Down

Apps > Wishlist > List Details > Rename List - QA-5387
    [Tags]    QA-5387
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Wishlist Nav Bar
    Click Create Wishlist
    Click Home
    Click Wishlist Nav Bar
    Navigate to Wishlist Auto
    Click More Options Menu Android
    Click Rename Wishlist
    Edit and Save Wishlist
    Verify Text On Screen    AutoTestNow    30s
    [Teardown]    Tear Down

Apps > Wishlist (iOS) > My Lists > My Lists Landing Page - QA-5388
    [Tags]    QA-5388
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Wishlist Nav Bar
    Click Create Wishlist
    Click Home
    Click Wishlist Nav Bar
    Verify Text On Screen    AutoTestWishlist    30s
    Verify Text On Screen    Wish List    2s
    [Teardown]    Tear Down

Apps > Wishlist > List Limitations(250 items) > Move item - QA-9190
    [Tags]    QA-9190
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Wishlist Nav Bar
    Click Create Wishlist
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Wishlist Only
    Verify Text On Screen    Item added to 'AutoTestWishlist'    30s
    Close Application
    Start Application
    Click Home
    Click Home WishList
    Click Wishlist Edit
    Select Wishlist Item
    Click Wishlist Move Items
    Click Option Wish List
    Click Wishlist Move Items
    Verify Text On Screen    Limit reached    30s
    [Teardown]    Tear Down

Apps > Wishlist > List Limitations(250 items) > PLP - QA-9191
    [Tags]    QA-9191
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Wishlist Only
    Verify Text On Screen    Limit reached    30s
    [Teardown]    Tear Down

Apps > Wishlist > List Details > Product Card > out off stock - QA-9193
    [Tags]    QA-9193
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    shirt
    Click Product from API
    Verify Element On Screen Not    ${btnAddToCart}    30s
    [Teardown]    Tear Down

Apps > Wishlist > List Details > Onboarding - QA-9194
    [Tags]    QA-9194
    [Setup]    Install Application
    Close All Applications
    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Wishlist Nav Bar
    Verify Text On Screen    Create a New List    15s
    Close Application
    Start Application
    Click Home
    Click Wishlist Nav Bar
    Check Text On Screen Not    Create a New List
    Close Application
    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL_Wishlists}    t@ke@!ot1234
    Click Home
    Click Wishlist Nav Bar
    Check Text On Screen Not    Create a New List
    Close Application
    Start Application
    Click Menu
    Click Menu Login
    [Teardown]    Tear Down

Apps > Wishlist > Logged out user tests - QA-8940
    [Tags]    QA-8940
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Close Application
    Start Application
    Click Home
    Search Product    Pencil
    Click Product from API
    Click Add To Wishlist Only
    Verify Element On Screen    ${btnLogin}    30s
    Close Application
    Start Application
    Click Home
    Search Product    Pencil
    Click Search Product Wishlist
    Verify Element On Screen    ${btnLogin}    30s
    Close Application
    Start Application
    Click Home
    Click Home Wishlist Icon
    Verify Element On Screen    ${btnLogin}    30s
    [Teardown]    Tear Down

Apps > Wishlist > My Lists > Recommended For You - QA-8953
    [Tags]    QA-8953
    [Setup]    Start Application
    Clear Environment
    Create Wishlists
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Wishlist Only
    Verify Text On Screen    Item added to    30s
    Close Application
    Start Application
    Click Home
    Click Wishlist Nav Bar
    Verify Text On Screen    DEFAULT    30s
    Verify Text On Screen Scroll    Recommended for You    1s    ${windowScroll}    ${btnWishlistItems}
    Close Application
    Start Application
    Click Menu
    Click Menu Login
    Close Application
    Start Application
    Click Menu
    Login Takealot    ${G_EMAIL_Wishlists}    t@ke@!ot1234
    Click Home
    Click Home Wishlist
    Verify Text On Screen Scroll    Recommended for You    1s    ${windowScroll}    ${btnMoreOptions}
    [Teardown]    Tear Down

Apps > Wishlist > My Lists > Trending Now Widgets - QA-8954
    [Tags]    QA-8954
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Wishlist Nav Bar
    Verify Text On Screen    DEFAULT    30s
    Verify Text On Screen    Trending on Takealot    30s
    Navigate to Wishlist Auto
    Verify Text On Screen    Trending on Takealot    30s
    Verify Text On Screen    This list is empty    30s
    [Teardown]    Tear Down
