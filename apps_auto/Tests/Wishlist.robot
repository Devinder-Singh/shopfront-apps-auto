*** Settings ***
Default Tags      wishlist
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Wishlist > PDP Add to List > Add to List(Default List) - QASA-465
    [Tags]    QASA-465
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    ${MIN_TIMEOUT}
    Click Add To Wishlist Only
    Click Wishlist Change
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Wish List    2s
    Verify Wishlist Checked
    [Teardown]    Tear Down

Apps > Wishlist > Add to List > PDP - QASA-462
    [Tags]    QASA-462
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    ${MIN_TIMEOUT}
    Verify Element On Screen    ${btnAddWishlist}    2s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    airtim
    Click Variant Product from API
    Verify Element On Screen    ${btnPDPSelectOption}    ${MIN_TIMEOUT}
    Verify Element On Screen Not    ${btnAddWishlist}    2s
    Click Product Variant From API
    Verify Element On Screen    ${btnAddToCart}    ${MIN_TIMEOUT}
    Verify Element On Screen    ${btnAddWishlist}    2s
    [Teardown]    Tear Down

Apps > Wishlist > Add to List > Create List - QASA-461 / QASA-459
    [Tags]    QASA-461    QASA-459
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
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Rename List    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Delete List    1s
    Click Delete Wishlist
    [Teardown]    Tear Down

Apps > Wishlist > Cart and Search Listings - QASA-523
    [Tags]    QASA-523
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
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Item(s) moved to list    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Item added to Wish List    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    pencil
    Click Search Product Wishlist
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Item added to Wish List    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Item added to Wish List    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Wishlist > List Limitations(25 Lists) - QASA-447
    [Tags]    QASA-447
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

Apps > Wishlist > Add to List > PDP > Out of stock - QASA-157
    [Tags]    QASA-157
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    jean
    Click Variant Product from API
    Click Product Variant From API
    Verify Element On Screen    ${btnAddToCart}    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    jean
    Click Variant Product from API
    Click Product Disabled Variant From API
    Verify Text On Screen    Add to List    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Wishlist > Add to List > PDP > Tablet/iPad - QASA-156
    [Tags]    QASA-156
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    jean
    Click Variant Product from API
    Click Product Variant From API
    Verify Element On Screen    ${btnAddToCart}    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    jean
    Click Variant Product from API
    Click Product Disabled Variant From API
    Verify Text On Screen    Add to List    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    ${MIN_TIMEOUT}
    Verify Element On Screen    ${btnAddWishlist}    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Wishlist > PDP Add to List > Add to List(More than one list) - QASA-154
    [Tags]    QASA-154
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
    Verify Element On Screen    ${btnAddToCart}    ${MIN_TIMEOUT}
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
    Verify Text On Screen    Item added to Wish List    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Wishlist > PDP Add to List > Add to List(Change Recent List) - QASA-152
    [Tags]    QASA-152
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
    Verify Text On Screen    Item added to Wish List    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Wishlist > List Limitations(250 items) > PDP - QASA-151
    [Tags]    QASA-151
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

Apps > Wishlist > My Lists > Default List - QASA-150
    [Tags]    QASA-150
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Wishlist Nav Bar
    Navigate to Wishlist Auto
    IF    '${PLATFORM_NAME}' == 'android'
        Click More Options Menu Android
        Check Text On Screen Not    Rename List
        Check Text On Screen Not    Delete List
    END
    [Teardown]    Tear Down

Apps > Wishlist > List Details > Edit > Move to list - QASA-140
    [Tags]    QASA-140
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
    Verify Text On Screen    Item added to 'AutoTestWishlist'    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Click Home
    Click Home WishList
    Click Wishlist Edit
    Select Wishlist Item
    Click Wishlist Move Items
    Click Option Wish List
    Click Wishlist Move Items
    Verify Text On Screen    Item moved to Wish List    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Wishlist > PDP Add to List > List Manager (Remove from multiple lists) - QASA-20
    [Tags]    QASA-20
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
    Verify Text On Screen    Item added to 'AutoTestWishlist'    ${MIN_TIMEOUT}
    Click Add To Wishlist Only
    Click Option Wish List
    Click Save Wishlists
    Verify Text On Screen    Item added to Wish List    ${MIN_TIMEOUT}
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
    Verify Text On Screen    Item removed from multiple lists    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Wishlist > PDP Add to List > List Manager - QASA-463
    [Tags]    QASA-463
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Wishlist Only
    Verify Text On Screen    Item added to Wish List    ${MIN_TIMEOUT}
    Click Add To Wishlist Only
    Click Option Wish List
    Verify Text On Screen    Add to List    2s
    Verify Element On Screen    ${btnWishlistAdd}    2s
    Click Save Wishlists
    Verify Text On Screen    Item removed from Wish List    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Wishlist > My Lists > Pagination - QASA-464
    [Tags]    QASA-464
    [Setup]    Start Application
    Clear Environment
    Create Wishlists
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Wishlist Nav Bar
    Scroll To Text    Test-Wishlist-8570800-0
    Clear Environment
    Clear Environment
    Clear Environment
    [Teardown]    Tear Down

Apps > Wishlist > My Lists > Landing Page > Create List Tutorial - QASA-458
    [Tags]    QASA-458
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

Apps > Wishlist > List Details > Delete List - QASA-457
    [Tags]    QASA-457
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

Apps > Wishlist > My Lists > Swipe Gestures > Onboarding - QASA-455
    [Tags]    QASA-455
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

Apps > Wishlist > List Details > Empty List - QASA-454
    [Tags]    QASA-454
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Home WishList
    Verify Text On Screen    This list is empty    ${MIN_TIMEOUT}
    Click Wishlist Continue Shopping
    Click Search Home
    Close Application
    Start Application
    Click Home
    Click Home WishList
    Verify Text On Screen    Trending on Takealot    ${MIN_TIMEOUT}
    Click Product Trending
    Verify Element On Screen    ${btnAddToCart}    ${MIN_TIMEOUT}
    Click Back Android
    Click Back iOS    Wish List
    Verify Text On Screen    Trending on Takealot    10s
    [Teardown]    Tear Down

Apps > Wishlist > List Details > Pagination - QASA-453
    [Tags]    QASA-453
    [Setup]    Start Application
    Click Menu
    Log In If Not Logged In    ${G_EMAIL_Wishlists}    t@ke@!ot1234
    Click Home
    Click Wishlist Nav Bar
    Navigate to Wishlist Auto
    Scroll To Text    Gosh Donoderm Moisture Gel
    [Teardown]    Tear Down

Apps > Wishlist > List Details > Swipe Gestures - QASA-452
    [Tags]    QASA-452
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
    Verify Element On Screen    ${btnWishlistCart}    ${MIN_TIMEOUT}
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
    Verify Element On Screen    ${btnWishlistCart}    ${MIN_TIMEOUT}
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

Apps > Wishlist > List Details > Edit > Delete - QASA-450
    [Tags]    QASA-450
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
    Verify Element On Screen    ${btnWishlistCart}    ${MIN_TIMEOUT}
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

Apps > Wishlist > List Details > Rename List - QASA-446
    [Tags]    QASA-446
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
    Verify Text On Screen    AutoTestNow    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Wishlist (iOS) > My Lists > My Lists Landing Page - QASA-445
    [Tags]    QASA-445
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Wishlist Nav Bar
    Click Create Wishlist
    Click Home
    Click Wishlist Nav Bar
    Verify Text On Screen    AutoTestWishlist    ${MIN_TIMEOUT}
    Verify Text On Screen    Wish List    2s
    [Teardown]    Tear Down

Apps > Wishlist > List Limitations(250 items) > Move item - QASA-137
    [Tags]    QASA-137
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
    Verify Text On Screen    Item added to 'AutoTestWishlist'    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Click Home
    Click Home WishList
    Click Wishlist Edit
    Select Wishlist Item
    Click Wishlist Move Items
    Click Option Wish List
    Click Wishlist Move Items
    Verify Text On Screen    Limit reached    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Wishlist > List Limitations(250 items) > PLP - QASA-136
    [Tags]    QASA-136
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Wishlist Only
    Verify Text On Screen    Limit reached    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Wishlist > List Details > Product Card > out off stock - QASA-134
    [Tags]    QASA-134
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    shirt
    Click Product from API
    Verify Element On Screen Not    ${btnAddToCart}    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Wishlist > List Details > Onboarding - QASA-133
    [Tags]    QASA-133
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

Apps > Wishlist > Logged out user tests - QASA-153
    [Tags]    QASA-153
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Close Application
    Start Application
    Click Home
    Search Product    Pencil
    Click Product from API
    Click Add To Wishlist Only
    Verify Element On Screen    ${btnLogin}    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Click Home
    Search Product    Pencil
    Click Search Product Wishlist
    Verify Element On Screen    ${btnLogin}    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Click Home
    Click Home Wishlist Icon
    Verify Element On Screen    ${btnLogin}    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Wishlist > My Lists > Recommended For You - QASA-148
    [Tags]    QASA-148
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
    Verify Text On Screen    Item added to    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Click Home
    Click Wishlist Nav Bar
    Verify Text On Screen    DEFAULT    ${MIN_TIMEOUT}
    Scroll To Text    Recommended for You
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
    Scroll To Text    Recommended for You
    [Teardown]    Tear Down

Apps > Wishlist > My Lists > Trending Now Widgets - QASA-147
    [Tags]    QASA-147
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Wishlist Nav Bar
    Verify Text On Screen    DEFAULT    ${MIN_TIMEOUT}
    Verify Text On Screen    Trending on Takealot    ${MIN_TIMEOUT}
    Navigate to Wishlist Auto
    Verify Text On Screen    Trending on Takealot    ${MIN_TIMEOUT}
    Verify Text On Screen    This list is empty    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Wishlist > My Lists > List Component - QASA-149
    [Tags]    QASA-149
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Wishlist Only
    Verify Text On Screen    Item added to Wish List    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Click Home
    Click Home WishList Only
    Verify Text On Screen    DEFAULT    ${MIN_TIMEOUT}
    Verify Text On Screen    Wish List    ${MIN_TIMEOUT}
    Verify Text On Screen    1 item    ${MIN_TIMEOUT}
    Navigate to Wishlist
    Verify Text On Screen    ${query_result_CartProduct}    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Wishlist > List Details > Product Card - QASA-460
    [Tags]    QASA-460
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Wishlist Only
    Verify Text On Screen    Item added to Wish List    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Click Home
    Click Home WishList
    Verify Text On Screen    ${query_result_CartProduct}    ${MIN_TIMEOUT}
    Verify Text On Screen    ${query_result_CartProductPrice}    2s
    Verify Text On Screen    Ships in 5 - 7 work days    2s
    Click Wishlist Add To Cart
    Verify Text On Screen    ${query_result_CartProduct}    2s
    Close Application
    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    book
    Click Product from API
    Get Product Author from PLID
    Click Add To Wishlist Only
    Verify Text On Screen    Item added to Wish List    ${MIN_TIMEOUT}
    Click Wishlist
    Verify Text On Screen    ${query_result_CartProduct}    ${MIN_TIMEOUT}
    Verify Text On Screen    ${query_result_CartProductAuthor}    2s
    [Teardown]    Tear Down

Apps > Wishlist > List Details > Delete List > Tablet - QASA-449
    [Tags]    QASA-449
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Wishlist Nav Bar
    Click Create Wishlist
    Verify Text On Screen    List Created    20s
    Navigate to Wishlist Auto
    Click More Options Menu Android
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Delete List    1s
    Click Delete Wishlist
    Verify Text On Screen    Wish List    20s
    [Teardown]    Tear Down
