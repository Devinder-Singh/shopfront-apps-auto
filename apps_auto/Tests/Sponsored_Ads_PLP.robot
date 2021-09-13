*** Settings ***
Default Tags      sponsored_ads_plp
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Sponsored Ads (PLP) > Sponsored Ad product rules - QA-6295
    [Tags]    QA-6295
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    Verify Text On Screen    Sponsored    2s
    Verify Text On Screen    % OFF    2s
#    Verify Text On Screen    In stock    2s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    glass
    Click First Product from API
    Click Seller Name
    Check Text On Screen Not    Sponsored
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Accessible File
    Click Product From Title    Treeline Accessible Files Pink Foolscap - Pack of 4
    Click Shop The Deal
    Check Text On Screen Not    Sponsored
    Close Application
    Start Application
    Click Menu
    Click Menu Shop By Department
    Click Menu Sport and Fitness
    Verify Text On Screen    Sponsored    2s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    pencil
    Click Search Product Filter
    Click Filter Category
    Click Filter Office Stationery
    Click Filter Select Button
    Click Filter Apply Button
    Verify Text On Screen    Sponsored    2s
    [Teardown]    Tear Down

Apps > Sponsored Ads (PLP) > Product Card Components - QA-6324
    [Tags]    QA-6324
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Get Sponsored Product Detail
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    Verify Text On Screen    Sponsored    2s
    Verify Text On Screen    % OFF    2s
    Verify Text On Screen    ${query_result_adProductStatus}    2s
#    Verify Text On Screen    ${query_result_adProductRating}
    Close Application
    Start Application
    Click Menu
    Click Menu Login
    Close Application
    Start Application    ${False}
    Click Menu
    Click Menu Register
    Register Takealot    AutoTest    Test    ?    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Get Sponsored Product Detail
    Click Product From Title    ${query_result_adProductTitle}
    Click PDP Write Review
    Click Review Rating
    Enter Review Message    Auto Test
    Click Review Submit
    Verify Text On Screen    Thank you for your review    30s
    Close Application
    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    Pencil
    Get Sponsored Product Detail
    Verify Text On Screen    Sponsored    30s
#    Verify Text On Screen    ${query_result_adProductRating}
    Click Product Grid View
    Verify Text On Screen    Sponsored    2s
#    Verify Text On Screen    ${query_result_adProductRating}
    Verify Text On Screen    % OFF    2s
    Verify Text On Screen    ${query_result_adProductStatus}    2s
    [Teardown]    Tear Down

Apps > Sponsored Ads (PLP) > Product Card Components (Price/Price Range) - QA-6335
    [Tags]    QA-6335
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Get Sponsored Product Detail
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    Verify Text On Screen    Sponsored    2s
    Verify Text On Screen    ${query_result_adProductPrice}    2s    
#    Verify Text On Screen    ${query_result_adProductListPrice}    2s
#    Click Product From Title    ${query_result_adProductTitle}
    Click PDP List Price
    Verify Text On Screen Android    This is our List Price. Find out what this means in our Terms & Conditions    30s
    Verify Text On Screen Android    Our List Price    1s
    Verify Text On Screen iOS    This is our List Price. Find out what this means in our Terms & Conditions    30s
    Verify Text On Screen iOS    Our List Price    1s
    Click PDP List Price Cancel
    Click Search Product Filter
    Click Filter Category
    Click Filter Office Stationery
    Click Filter Select Button
    Click Filter Apply Button
    Verify Text On Screen    Sponsored    2s
    Click Product Grid View
    Verify Text On Screen    Sponsored    2s
    Verify Text On Screen    ${query_result_adProductPrice}    2s    
#    Verify Text On Screen    ${query_result_adProductListPrice}    2s
    Click PDP List Price
    Verify Text On Screen Android    This is our List Price. Find out what this means in our Terms & Conditions    30s
    Verify Text On Screen Android    Our List Price    1s
    Verify Text On Screen iOS    This is our List Price. Find out what this means in our Terms & Conditions    30s
    Verify Text On Screen iOS    Our List Price    1s
    [Teardown]    Tear Down

Apps > Sponsored Ads (PLP) > Product Card Components (Add to Wishlist button) - QA-6336
    [Tags]    QA-6336
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    Click Search Product Wishlist
    Verify Text On Screen Android    Item added to Wish List    30s
    Click Product Grid View
    [Teardown]    Tear Down

Apps > Sponsored Ads (PLP) > Product Card Components (Colour Swatches) - QA-6338
    [Tags]    QA-6338
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Get Sponsored Product Detail
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    Click Search Product Wishlist
    Verify Text On Screen Android    Item added to Wish List    30s
    Click Product Grid View
    Get Sponsored Product Detail
    Verify Text On Screen    ${query_result_adProductTitle}    2s
    [Teardown]    Tear Down

Apps > Sponsored Ads (PLP) > Product Card Components (Stock) - QA-6340
    [Tags]    QA-6340
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Get Sponsored Product Detail
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    Verify Text On Screen    ${query_result_adProductStatus}    2s
    Click Product Grid View
    Verify Text On Screen    ${query_result_adProductStatus}    2s
    [Teardown]    Tear Down

Apps > Sponsored Ads (PLP) > Product Card Components (Clickable/Tappable areas) - QA-6341
    [Tags]    QA-6341
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Get Sponsored Product Detail
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    Click Product From Title    ${query_result_adProductTitle}
    Verify Element On Screen    ${btnAddToCart}    30s
    Click Back Android
    Click Back iOS    pencil case
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    Click Search Product Wishlist
    Verify Text On Screen Android    Item added to Wish List    30s
    Click Product Grid View
    [Teardown]    Tear Down

Apps > Sponsored Ads (PDP) > Product Card Layout - Liquor - QA-10550
    [Tags]    QA-10550
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    johnny wal
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    Verify Product Search Alcohol Ad Notice
    [Teardown]    Tear Down

Apps > Sponsored Ads (PLP) > Launching PLP from different screens - QA-6616
    [Tags]    QA-6616
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    glass
    Get Sponsored Product Detail
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    Click Product From Title    ${query_result_adProductTitle}
    Verify Element On Screen    ${btnAddToCart}    30s
    Click Seller Name
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    Click Product From Title    ${query_result_adProductTitle}
    [Teardown]    Tear Down

Apps > Sponsored Ads (PDP) > Product Card Layout - QA-6496
    [Tags]    QA-6496
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    disposable mas
    Get Sponsored Product Detail
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    Click Product From Title    ${query_result_adProductTitle}
    Verify Text On Screen Scroll    Related Products    1s    ${windowScroll}    ${btnAddToCart}
    Click Related Products Sponsored
    Verify Text On Screen    You're seeing these ads based on the product's relevance to your product query    5s
    Click Related Products Sponsored OK
    Check Text On Screen Not    You're seeing these ads based on the product's relevance to your product query
    [Teardown]    Tear Down

Apps > Sponsored Ads (PDP) > Sponsored Ad product rules - QA-6484
    [Tags]    QA-6484
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    disposable mas
    Get Sponsored Product Detail
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    Verify Text On Screen    Sponsored    2s
    Verify Text On Screen    % OFF    2s
    Verify Text On Screen    ${query_result_adProductStatus}    2s
#    Verify Text On Screen    ${query_result_adProductRating}
    Verify Text On Screen    ${query_result_adProductPrice}    2s
#    Verify Text On Screen    ${query_result_adProductListPrice}    2s
    Click Product From Title    ${query_result_adProductTitle}
    Verify Text On Screen Scroll    Related Products    1s    ${windowScroll}    ${btnAddToCart}
    Verify Text On Screen    Sponsored    5s
    [Teardown]    Tear Down
