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
