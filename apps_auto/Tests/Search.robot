*** Settings ***
Default Tags      search
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Search Listings > Image - QASA-209
    [Tags]    QASA-209
    [Setup]    Start Application    ${False}
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product Daily Deals
    [Teardown]    Tear Down

Apps > Search Listings > Badges (Daily Deal) - QASA-208
    [Tags]    QASA-208
    [Setup]    Start Application
    Verify Product Daily Deals Badge
    [Teardown]    Tear Down

Apps > Search Listings > Badges (Daily Deal) - QASA-207
    [Tags]    QASA-207
    [Setup]    Start Application
    Verify Product Percent Off Badge
    [Teardown]    Tear Down

Apps > Search Listings > Badges (Up to <% discount> off) - QASA-206
    [Tags]    QASA-206
    [Setup]    Start Application
    Verify Product Percent Off Badge
    [Teardown]    Tear Down

Apps > Search Listings > Badges (Sale / Image) - QASA-205
    [Tags]    QASA-205
    [Setup]    Start Application
    Verify Sales Badge
    [Teardown]    Tear Down

Apps > Search Listings > Badges (App Only Deal) - QASA-204
    [Tags]    QASA-204
    [Setup]    Start Application
    Verify App Only Badge
    [Teardown]    Tear Down

Apps > Search Listings > Attributes - QASA-210
    [Tags]    QASA-210
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    Hisense
    Verify Text On Screen    Hisense    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Search Listings > Attributes 02 - QASA-94
    [Tags]    QASA-94
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    Book
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    By    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    by    ${MIN_TIMEOUT}
    Scroll To Text    et al
    [Teardown]    Tear Down

Apps | Search Listings | Section below header - QASA-711
    [Tags]    QASA-711
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    Pencil
    Verify Element On Screen    ${btnProductSearchFilter}    ${MIN_TIMEOUT}
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

Apps > Search Listings > UI Checks - QASA-177
    [Tags]    QASA-177
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    Pencil
    Verify Element On Screen    ${btnProductSearchFilter}    ${MIN_TIMEOUT}
    Verify Text On Screen    items    5s
    Verify Element On Screen    ${btnProductSearchSort}    ${MIN_TIMEOUT}
    Click Product Grid View
    [Teardown]    Tear Down

Apps > Search Listings > Product Title - QASA-201
    [Tags]    QASA-201
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    [Teardown]    Tear Down

Apps > Search Listings > Reviews - QASA-199
    [Tags]    QASA-199
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
    Verify Element On Screen    ${lblRatingText}    ${MIN_TIMEOUT}
    Verify Element On Screen   ${lblRatingNumber}    ${MIN_TIMEOUT}
    Verify Product Review
    Click Back Android
    Click Back iOS    Back
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click PDP Write Review
    Click Review Rating
    Enter Review Message    Auto Test
    Click Review Submit
    Verify Text On Screen    Thank you for your review    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Search Listings > Price (List Price) - QASA-198
    [Tags]    QASA-198
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Listing Product from API
    Verify Element On Screen    ${lblTermsCond}    5s
    [Teardown]    Tear Down

Apps > Search Listings > Price Range - QASA-197
    [Tags]    QASA-197
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    jean
    Verify Price Range Product from API
    [Teardown]    Tear Down

Apps > Search Listings > Call to Action Buttons > Add To Cart - QASA-196
    [Tags]    QASA-196
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    pencil
    Check Text On Screen Not    Add To Cart
    [Teardown]    Tear Down

Apps > Search Listings > Call to Action Buttons > Add To Wishlist - QASA-195
    [Tags]    QASA-195
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    pencil
    Click Search Product Wishlist
    Verify Text On Screen    Item added to Wish List    ${MIN_TIMEOUT}
    Click Search Product Wishlist
    Verify Element On Screen    ${btnProductWLSave}    5s
    [Teardown]    Tear Down

Apps > Search Listings > Colour Swatches - QASA-194
    [Tags]    QASA-194
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    shirt
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    More colours    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    More Colours    ${MIN_TIMEOUT}
    Click Back Android
    Click Back iOS    Back
    Click Search Home
    Search Product    pencil
    Check Text On Screen Not    More Colours
    Check Text On Screen Not    More colours
    [Teardown]    Tear Down

Apps > Search Listings > Set Bundle Deals (One active) - QASA-193
    [Tags]    QASA-193
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Ring - Video Doorbel
    Verify Element On Screen    ${btnProductSearchFilter}    ${MIN_TIMEOUT}
    Verify Product Search App Only Deals Badge
    [Teardown]    Tear Down

Apps > Search Listings > Set Bundle Deals (More than one active) - QASA-192
    [Tags]    QASA-192
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    ring video doorbel
    Verify Text On Screen    Save with Bundle Deals    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Search Listings > Bundle Deals (1 active Set bundle + 1 active Multi-Buy) - QASA-191
    [Tags]    QASA-191
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    ring video doorbel
    Verify Text On Screen    Save with Bundle Deals    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Search Listings > Multi-Buy Deals (One active) - QASA-190
    [Tags]    QASA-190
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    nature box
    Verify Text On Screen    Nature Box Buy 2 For    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Search Listings > Multi-Buy Deals (More than 1 active) - QASA-189
    [Tags]    QASA-189
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    ring video doorbel
    Verify Text On Screen    Save with Bundle Deals    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Search Listings > Stock > Supplier Out of Stock - QASA-186
    [Tags]    QASA-186
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    ring video doorbel
    Verify Text On Screen    Supplier out of stock    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Search Listings > Stock > Available Now - QASA-185
    [Tags]    QASA-185
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    eboo
    Scroll To Text    Available Now
    [Teardown]    Tear Down

Apps > Search Listings > Stock > Pre-Order - QASA-184
    [Tags]    QASA-184
    [Setup]    Start Application
    Click Menu
    Verify Menu Items
    Click Menu Shop By Department
    Click Menu Gaming
    Click Product Widget Top Pre Orders
    Verify Text On Screen    Pre-order: Ships    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Search Listings > Stock > Currently Unavailable - QASA-183
    [Tags]    QASA-183
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    eboo
    Scroll To Text    Currently Unavailable
    [Teardown]    Tear Down

Apps > Search Listings > Filters - QASA-182
    [Tags]    QASA-182
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Search Product Filter
    Click Filter Category
    Click Filter Office Stationery
    Click Filter Select Button
    Click Filter Apply Button
    Verify Text On Screen    In stock    ${MIN_TIMEOUT}
    Click Search Product Filter
    Click Filter Availability
    Click Filter In Stock
    Click Filter Select Button iOS
    Click Filter Apply Button
    Verify Text On Screen    In stock    ${MIN_TIMEOUT}
    Click Search Product Filter
    Click Filter Brand
    Click Filter Brand Name
    Click Filter Select Button
    Click Filter Apply Button
    Verify Text On Screen    In stock    ${MIN_TIMEOUT}
    Click Search Product Filter
    Click Filter Clear All
    Verify Text On Screen    In stock    ${MIN_TIMEOUT}
    Click Search Product Filter
    Click Back iOS    icon close
    Click Back Android
    Verify Text On Screen    In stock    ${MIN_TIMEOUT}
    Click Product from API
    [Teardown]    Tear Down

Apps > Search Listings > No Search Results - QASA-181
    [Tags]    QASA-181
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search and Press Enter    ghhjgjkhkuyiuy
    Verify Text On Screen    We could not find results for    ${MIN_TIMEOUT}
    Verify Text On Screen    Please check your spelling or try a more generic search term    1s
    [Teardown]    Tear Down

Apps > Search Listings > Sorting - QASA-180
    [Tags]    QASA-180
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Search Product Sort
    Verify Text On Screen    Relevance    ${MIN_TIMEOUT}
    Verify Text On Screen    Price: High to Low    1s
    Verify Text On Screen    Price: Low to High    1s
    Verify Text On Screen    Top Rated    1s
    Verify Text On Screen    Newest Arrivals    1s
    Click Back iOS    icon close
    Click Back Android
    Verify Text On Screen    In stock    ${MIN_TIMEOUT}
    Click Search Product Sort
    Click Sort High To Low
    Verify Sorted Products    Price+Descending
    Swipe Down    ${windowScroll}
    Click Search Product Sort
    Click Sort Top Rated
    Verify Sorted Products    Rating+Descending
    [Teardown]    Tear Down

Apps > Search Listings > Related Search - QASA-179
    [Tags]    QASA-179
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    pencil
    Scroll To Text    Related Searches
    Click Product from API Scroll
    Verify Element On Screen    ${btnAddToCart}    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Search Listings > Pagination - QASA-178
    [Tags]    QASA-178
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API Scroll
    Verify Element On Screen    ${btnAddToCart}    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Search Listings > Stock > In Stock - QASA-188
    [Tags]    QASA-188
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    pencil
    Scroll To Text    In stock
    Scroll To Text    JHB
    Scroll To Text    CPT
    [Teardown]    Tear Down

Apps > Search Listings > Stock > Lead Time - QASA-187
    [Tags]    QASA-187
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    pencil
    Scroll To Text    Ships in 5 - 7 work days
    [Teardown]    Tear Down

Apps > Search: Autocomplete > Search icon - Logged Out - QASA-643
    [Tags]    QASA-643
    [Setup]    Start Application    ${False}
    Click Menu Logout If Logged In
    Click Home
    Click Search Home
    Verify Text On Screen    Trending    5s
    [Teardown]    Tear Down

Apps > Search: Autocomplete > Search icon - Logged In - QASA-26
    [Tags]    QASA-26
    [Setup]    Start Application    ${False}
    Click Menu Logout If Logged In
    Click Home
    Click Menu
    Click Menu Login
    Login Takealot Only    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Verify Text On Screen    Trending    5s
    [Teardown]    Tear Down
