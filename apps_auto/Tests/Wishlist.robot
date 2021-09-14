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
