*** Settings ***
Default Tags      search
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Search Listings > Image - QA-8738
    [Tags]    QA-8738
    [Setup]    Start Application    ${False}
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product Daily Deals
    [Teardown]    Tear Down

Apps > Search Listings > Badges (Daily Deal) - QA-8739
    [Tags]    QA-8739
    [Setup]    Start Application
    Verify Product Daily Deals Badge
    [Teardown]    Tear Down

Apps > Search Listings > Badges (Daily Deal) - QA-8740
    [Tags]    QA-8740
    [Setup]    Start Application
    Verify Product Percent Off Badge
    [Teardown]    Tear Down

Apps > Search Listings > Badges (Up to <% discount> off) - QA-8741
    [Tags]    QA-8741
    [Setup]    Start Application
    Verify Product Percent Off Badge
    [Teardown]    Tear Down

Apps > Search Listings > Badges (Sale / Image) - QA-8742
    [Tags]    QA-8742
    [Setup]    Start Application
    Verify Sales Badge
    [Teardown]    Tear Down

Apps > Search Listings > Badges (App Only Deal) - QA-8745
    [Tags]    QA-8745
    [Setup]    Start Application
    Verify App Only Badge
    [Teardown]    Tear Down

Apps > Search Listings > Attributes - QA-8737
    [Tags]    QA-8737
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    Hisense
    Verify Text On Screen    Hisense    30s
    [Teardown]    Tear Down

Apps > Search Listings > Attributes 02 - QA-9552
    [Tags]    QA-9552
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    Book
    Verify Text On Screen iOS    By    30s
    Verify Text On Screen Android    by    30s
    Verify Text On Screen Scroll    et al    5s    ${windowScroll}    ${btnProductSearchFilter}
    [Teardown]    Tear Down

Apps | Search Listings | Section below header - QA-3417
    [Tags]    QA-3417
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    Pencil
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    Verify Text On Screen    items    5s
    Click Search Product Sort
    Verify Text On Screen    Relevance    10s
    Verify Text On Screen    Price: High to Low    1s
    Verify Text On Screen    Price: Low to High    1s
    Verify Text On Screen    Top Rated    1s
    Verify Text On Screen    Newest Arrivals    1s
    Click Back Android
    Click Back iOS    icon close
#    Click Product Icon Close
    Click Search Product Sort
    Click Sort High To Low
    Click Product Grid View
    [Teardown]    Tear Down

Apps > Search Listings > UI Checks - QA-8841
    [Tags]    QA-8841
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    Pencil
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    Verify Text On Screen    items    5s
    Verify Element On Screen    ${btnProductSearchSort}    30s
    Click Product Grid View
    [Teardown]    Tear Down

Apps > Search Listings > Product Title - QA-8748
    [Tags]    QA-8748
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    [Teardown]    Tear Down

Apps > Search Listings > Reviews - QA-8750
    [Tags]    QA-8750
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
    Search Product    pencil
    Verify Element On Screen Scroll Android    ${lblRatingText}    30s    ${windowScroll}    ${btnProductSearchFilter}
    Verify Element On Screen Scroll Android    ${lblRatingNumber}    30s    ${windowScroll}    ${btnProductSearchFilter}
    Verify Product Review iOS
    Click Back Android
    Click Back iOS    Back
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click PDP Write Review
    Click Review Rating
    Enter Review Message    Auto Test
    Click Review Submit
    Verify Text On Screen    Thank you for your review    30s
    [Teardown]    Tear Down

Apps > Search Listings > Price (List Price) - QA-8751
    [Tags]    QA-8751
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Listing Product from API
    Verify Element On Screen    ${lblTermsCond}    5s
    [Teardown]    Tear Down

Apps > Search Listings > Price Range - QA-8752
    [Tags]    QA-8752
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    jean
    Verify Price Range Product from API
    [Teardown]    Tear Down

Apps > Search Listings > Call to Action Buttons > Add To Cart - QA-8753
    [Tags]    QA-8753
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    pencil
    Check Text On Screen Not    Add To Cart
    [Teardown]    Tear Down

Apps > Search Listings > Call to Action Buttons > Add To Wishlist - QA-8754
    [Tags]    QA-8754
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Home
    Click Search Home
    Search Product    pencil
    Click Search Product Wishlist
    Verify Text On Screen    Item added to Wish List    30s
    Click Search Product Wishlist
    Verify Element On Screen    ${btnProductWLSave}    5s
    [Teardown]    Tear Down

Apps > Search Listings > Colour Swatches - QA-8757
    [Tags]    QA-8757
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    shirt
    Verify Text On Screen Android    More colours    30s
    Verify Text On Screen iOS    More Colours    30s
    Click Back Android
    Click Back iOS    Back
    Click Search Home
    Search Product    pencil
    Check Text On Screen Not    More Colours
    Check Text On Screen Not    More colours
    [Teardown]    Tear Down

Apps > Search Listings > Set Bundle Deals (One active) - QA-8758
    [Tags]    data    QA-8758
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Ring - Video Doorbel
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    Verify Product Search App Only Deals Badge
    [Teardown]    Tear Down

Apps > Search Listings > Set Bundle Deals (More than one active) - QA-8760
    [Tags]    data    QA-8760
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    ring video doorbel
    Verify Text On Screen    Save with Bundle Deals    30s
    [Teardown]    Tear Down

Apps > Search Listings > Bundle Deals (1 active Set bundle + 1 active Multi-Buy) - QA-8761
    [Tags]    data    QA-8761
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    ring video doorbel
    Verify Text On Screen    Save with Bundle Deals    30s
    [Teardown]    Tear Down

Apps > Search Listings > Multi-Buy Deals (One active) - QA-8763
    [Tags]    data    QA-8763
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    nature box
    Verify Text On Screen    Nature Box Buy 2 For    30s
    [Teardown]    Tear Down

Apps > Search Listings > Multi-Buy Deals (More than 1 active) - QA-8764
    [Tags]    data    QA-8764
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    ring video doorbel
    Verify Text On Screen    Save with Bundle Deals    30s
    [Teardown]    Tear Down

Apps > Search Listings > Stock > Supplier Out of Stock - QA-8769
    [Tags]    data    QA-8769
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    ring video doorbel
    Verify Text On Screen    Supplier out of stock    30s
    [Teardown]    Tear Down

Apps > Search Listings > Stock > Available Now - QA-8770
    [Tags]    data    QA-8770
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    eboo
    Verify Text On Screen Scroll    Available Now    30s    ${windowScroll}    ${btnProductSearchFilter}
    [Teardown]    Tear Down

Apps > Search Listings > Stock > Pre-Order - QA-8771
    [Tags]    QA-8771
    [Setup]    Start Application
    Click Menu
    Verify Menu Items
    Click Menu Shop By Department
    Click Menu Gaming
    Click Product Widget Top Pre Orders
    Verify Text On Screen    Pre-order: Ships    30s
    [Teardown]    Tear Down

Apps > Search Listings > Stock > Currently Unavailable - QA-8773
    [Tags]    data    QA-8773
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    eboo
    Verify Text On Screen Scroll    Currently Unavailable    30s    ${windowScroll}    ${btnProductSearchFilter}
    [Teardown]    Tear Down

Apps > Search Listings > Filters - QA-8833
    [Tags]    QA-8833
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Search Product Filter
    Click Filter Category
    Click Filter Office Stationery
    Click Filter Select Button
    Click Filter Apply Button
    Verify Text On Screen    In stock    30s
    Click Search Product Filter
    Click Filter Availability
    Click Filter In Stock
    Click Filter Select Button iOS
    Click Filter Apply Button
    Verify Text On Screen    In stock    30s
    Click Search Product Filter
    Click Filter Brand
    Click Filter Brand Name
    Click Filter Select Button
    Click Filter Apply Button
    Verify Text On Screen    In stock    30s
    Click Search Product Filter
    Click Filter Clear All
    Verify Text On Screen    In stock    30s
    Click Search Product Filter
    Click Back iOS    icon close
    Click Back Android
    Verify Text On Screen    In stock    30s
    Click Product from API
    [Teardown]    Tear Down

Apps > Search Listings > No Search Results - QA-8835
    [Tags]    QA-8835
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search and Press Enter    ghhjgjkhkuyiuy
    Verify Text On Screen    We could not find results for    30s
    Verify Text On Screen    Please check your spelling or try a more generic search term    1s
    [Teardown]    Tear Down

Apps > Search Listings > Sorting - QA-8836
    [Tags]    QA-8836
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Search Product Sort
    Verify Text On Screen    Relevance    30s
    Verify Text On Screen    Price: High to Low    1s
    Verify Text On Screen    Price: Low to High    1s
    Verify Text On Screen    Top Rated    1s
    Verify Text On Screen    Newest Arrivals    1s
    Click Back iOS    icon close
    Click Back Android
    Verify Text On Screen    In stock    30s
    Click Search Product Sort
    Click Sort High To Low
    Verify Sorted Products    Price+Descending
    Swipe Down    ${windowScroll}
    Click Search Product Sort
    Click Sort Top Rated
    Verify Sorted Products    Rating+Descending
    [Teardown]    Tear Down

Apps > Search Listings > Related Search - QA-8839
    [Tags]    QA-8839
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    pencil
    Verify Text On Screen Scroll Android    Related Searches    30s    ${windowScroll}    ${btnProductSearchFilter}
    Click Product from API Scroll
    Verify Element On Screen    ${btnAddToCart}    30s
    [Teardown]    Tear Down

Apps > Search Listings > Pagination - QA-8840
    [Tags]    QA-8840
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API Scroll
    Verify Element On Screen    ${btnAddToCart}    30s
    [Teardown]    Tear Down

Apps > Search Listings > Stock > In Stock - QA-8765
    [Tags]    QA-8765
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    pencil
    Verify Text On Screen Scroll    In stock    30s    ${windowScroll}    ${btnProductSearchFilter}
    Verify Text On Screen Scroll    JHB    1s    ${windowScroll}    ${btnProductSearchFilter}
    Verify Text On Screen Scroll    CPT    1s    ${windowScroll}    ${btnProductSearchFilter}
    [Teardown]    Tear Down

Apps > Search Listings > Stock > Lead Time - QA-8768
    [Tags]    QA-8768
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    pencil
    Verify Text On Screen Scroll    Ships in 5 - 7 work days    30s    ${windowScroll}    ${btnProductSearchFilter}
    [Teardown]    Tear Down

Apps > Search: Autocomplete > Search icon - QA-5156 - Logged Out
    [Tags]    QA-5156
    [Setup]    Start Application    ${False}
    Click Menu Logout If Logged In
    Click Home
    Click Search Home
    Verify Text On Screen    Trending    5s
    [Teardown]

Apps > Search: Autocomplete > Search icon - QA-5156 - Logged In
    [Tags]    QA-5156
    [Setup]    Start Application    ${False}
    Click Menu Logout If Logged In
    Click Home
    Click Menu
    Click Menu Login
    Login Takealot Only    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Verify Text On Screen    Trending    5s
    [Teardown]