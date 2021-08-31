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
    Verify Text On Screen    In stock    2s
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
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    Verify Text On Screen    Sponsored    2s
    Verify Text On Screen    % OFF    2s
    Verify Text On Screen    In stock    2s
    Check Text On Screen Not    4.0
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
    Click Product From Title    Djeco Pencil Case - Nathalie
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
    Verify Text On Screen    Sponsored    30s
    Verify Text On Screen    4.0    2s
    Click Product Grid View
    Verify Text On Screen    Sponsored    2s
    Verify Text On Screen    4.0    2s
    Verify Text On Screen    % OFF    2s
    Verify Text On Screen    In stock    2s
    [Teardown]    Tear Down

Apps > Sponsored Ads (PLP) > Product Card Components (Price/Price Range) - QA-6335
    [Tags]    QA-6335
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    Verify Text On Screen    Sponsored    2s
    Verify Text On Screen    R 155    2s
    Verify Text On Screen    R  196    2s
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
    Verify Text On Screen    R 155    2s
    Verify Text On Screen    R  196    2s
    Click PDP List Price
    Verify Text On Screen Android    This is our List Price. Find out what this means in our Terms & Conditions    30s
    Verify Text On Screen Android    Our List Price    1s
    Verify Text On Screen iOS    This is our List Price. Find out what this means in our Terms & Conditions    30s
    Verify Text On Screen iOS    Our List Price    1s
    Click PDP List Price Cancel
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
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    Click Search Product Wishlist
    Verify Text On Screen Android    Item added to Wish List    30s
    Click Product Grid View
    Check Text On Screen Not    More Colours
    [Teardown]    Tear Down

Apps > Sponsored Ads (PLP) > Product Card Components (Stock) - QA-6340
    [Tags]    QA-6340
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    Verify Text On Screen    In stock    2s
    Click Product Grid View
    Verify Text On Screen Scroll    Ships in 5 - 7 work days    2s    ${windowScroll}    ${btnProductSearchFilter}
    [Teardown]    Tear Down

Apps > Sponsored Ads (PLP) > Product Card Components (Clickable/Tappable areas) - QA-6341
    [Tags]    QA-6341
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    Click Product From Title    Djeco Pencil Case - Nathalie
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
    Click First Product from API
    Verify Element On Screen    ${btnAddToCart}    30s
    Click Seller Name
    Click Product from API
    [Teardown]    Tear Down

Apps > PDP - QA-8892
    [Tags]    QA-8892
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
    Search Product    jean
    Click Variant Product from API
    Click PDP Write Review
    Click Review Rating
    Enter Review Message    Auto Test
    Click Review Submit
    Verify Text On Screen    Thank you for your review    30s
    Click PDP Write Review
    Click Review Rating
    Enter Review Message    Auto Test
    Click Review Submit
    Verify Text On Screen    You've already submitted a review for this product    30s
    Click Back Android
    Click Back iOS    ${query_result_CartProduct}
    Click PDP Show All Reviews
    Click Review Sort
    Click Review Sort Most Helpful
    Click Review Sort
    Click Review Sort Most Recent
    Click Review Helpful
    Verify Text On Screen    Thank you for your feedback    10s
    Click Review Filter
    Click Review Filter Rating
    Click Review Filter Rating Five
    Click Review Filter Done
    Click Review Filter Apply
    Verify Element On Screen    ${btnReviewFilter}    15s
    Click Review Icon More
    Click Review Report
    Verify Element On Screen    Your report has been submitted    15s
    Close Application
    Start Application
    Click Menu
    Click Menu Login
    Close Application
    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    jean
    Click Variant Product from API
    Click PDP Write Review
    Verify Element On Screen    ${btnLogin}    15s
    [Teardown]    Tear Down
