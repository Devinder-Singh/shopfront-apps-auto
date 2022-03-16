*** Settings ***
Default Tags      sponsored_ads_plp
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Sponsored Ads (PLP) > Sponsored Ad product rules - QASA-338
    [Tags]    QASA-338
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Verify Element On Screen    ${btnProductSearchFilter}    ${MIN_TIMEOUT}
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

Apps > Sponsored Ads (PLP) > Product Card Components - QASA-328
    [Tags]    QASA-328
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Get Sponsored Product Detail
    Verify Element On Screen    ${btnProductSearchFilter}    ${MIN_TIMEOUT}
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
    Verify Text On Screen    Thank you for your review    ${MIN_TIMEOUT}
    Close Application
    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    Pencil
    Get Sponsored Product Detail
    Verify Text On Screen    Sponsored    ${MIN_TIMEOUT}
#    Verify Text On Screen    ${query_result_adProductRating}
    Click Product Grid View
    Verify Text On Screen    Sponsored    2s
#    Verify Text On Screen    ${query_result_adProductRating}
    Verify Text On Screen    % OFF    2s
    Verify Text On Screen    ${query_result_adProductStatus}    2s
    [Teardown]    Tear Down

Apps > Sponsored Ads (PLP) > Product Card Components (Price/Price Range) - QASA-327
    [Tags]    QASA-327
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Get Sponsored Product Detail
    Verify Element On Screen    ${btnProductSearchFilter}    ${MIN_TIMEOUT}
    Verify Text On Screen    Sponsored    2s
    Verify Text On Screen    ${query_result_adProductPrice}    2s    
#    Verify Text On Screen    ${query_result_adProductListPrice}    2s
#    Click Product From Title    ${query_result_adProductTitle}
    Click PDP List Price
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    This is our List Price. Find out what this means in our Terms & Conditions    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Our List Price    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    This is our List Price. Find out what this means in our Terms & Conditions    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Our List Price    1s
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
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    This is our List Price. Find out what this means in our Terms & Conditions    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Our List Price    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    This is our List Price. Find out what this means in our Terms & Conditions    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Our List Price    1s
    [Teardown]    Tear Down

Apps > Sponsored Ads (PLP) > Product Card Components (Add to Wishlist button) - QASA-326
    [Tags]    QASA-326
    [Setup]    Start Application
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Verify Element On Screen    ${btnProductSearchFilter}    ${MIN_TIMEOUT}
    Click Search Product Wishlist
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Item added to Wish List    ${MIN_TIMEOUT}
    Click Product Grid View
    [Teardown]    Tear Down

Apps > Sponsored Ads (PLP) > Product Card Components (Colour Swatches) - QASA-324
    [Tags]    QASA-324
    [Setup]    Start Application
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Get Sponsored Product Detail
    Verify Element On Screen    ${btnProductSearchFilter}    ${MIN_TIMEOUT}
    Click Search Product Wishlist
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Item added to Wish List    ${MIN_TIMEOUT}
    Click Product Grid View
    Get Sponsored Product Detail
    Verify Text On Screen    ${query_result_adProductTitle}    2s
    [Teardown]    Tear Down

Apps > Sponsored Ads (PLP) > Product Card Components (Stock) - QASA-322
    [Tags]    QASA-322
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Get Sponsored Product Detail
    Verify Element On Screen    ${btnProductSearchFilter}    ${MIN_TIMEOUT}
    Verify Text On Screen    ${query_result_adProductStatus}    2s
    Click Product Grid View
    Verify Text On Screen    ${query_result_adProductStatus}    2s
    [Teardown]    Tear Down

Apps > Sponsored Ads (PLP) > Product Card Components (Clickable/Tappable areas) - QASA-321
    [Tags]    QASA-321
    [Setup]    Start Application
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Get Sponsored Product Detail
    Verify Element On Screen    ${btnProductSearchFilter}    ${MIN_TIMEOUT}
    Click Product From Title    ${query_result_adProductTitle}
    Verify Element On Screen    ${btnAddToCart}    ${MIN_TIMEOUT}
    Click Back Android
    Click Back iOS    pencil case
    Verify Element On Screen    ${btnProductSearchFilter}    ${MIN_TIMEOUT}
    Click Search Product Wishlist
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Item added to Wish List    ${MIN_TIMEOUT}
    Click Product Grid View
    [Teardown]    Tear Down

Apps > Sponsored Ads (PDP) > Product Card Layout - Liquor - QASA-23
    [Tags]    QASA-23
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    johnny wal
    Verify Element On Screen    ${btnProductSearchFilter}    ${MIN_TIMEOUT}
    Verify Product Search Alcohol Ad Notice
    [Teardown]    Tear Down

Apps > Sponsored Ads (PLP) > Launching PLP from different screens - QASA-308
    [Tags]    QASA-308
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    glass
    Get Sponsored Product Detail
    Verify Element On Screen    ${btnProductSearchFilter}    ${MIN_TIMEOUT}
    Click Product From Title    ${query_result_adProductTitle}
    Verify Element On Screen    ${btnAddToCart}    ${MIN_TIMEOUT}
    Click Seller Name
    Verify Element On Screen    ${btnProductSearchFilter}    ${MIN_TIMEOUT}
    Click Product From Title    ${query_result_adProductTitle}
    [Teardown]    Tear Down

Apps > Sponsored Ads (PDP) > Product Card Layout - QASA-315
    [Tags]    QASA-315
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    disposable mas
    Get Sponsored Product Detail
    Verify Element On Screen    ${btnProductSearchFilter}    ${MIN_TIMEOUT}
    Click Product From Title    ${query_result_adProductTitle}
    Scroll To Text    Related Products
    Click Related Products Sponsored
    Verify Text On Screen    You're seeing these ads based on the product's relevance to your product query    5s
    Click Related Products Sponsored OK
    Check Text On Screen Not    You're seeing these ads based on the product's relevance to your product query
    [Teardown]    Tear Down

Apps > Sponsored Ads (PDP) > Sponsored Ad product rules - QASA-319
    [Tags]    QASA-319
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    disposable mas
    Get Sponsored Product Detail
    Verify Element On Screen    ${btnProductSearchFilter}    ${MIN_TIMEOUT}
    Verify Text On Screen    Sponsored    2s
    Verify Text On Screen    % OFF    2s
    Verify Text On Screen    ${query_result_adProductStatus}    2s
#    Verify Text On Screen    ${query_result_adProductRating}
    Verify Text On Screen    ${query_result_adProductPrice}    2s
#    Verify Text On Screen    ${query_result_adProductListPrice}    2s
    Click Product From Title    ${query_result_adProductTitle}
    Scroll To Text    Related Products
    Verify Text On Screen    Sponsored    5s
    [Teardown]    Tear Down

Apps > Sponsored Ads (PDP) > Sponsored Product Widget - Display Rules - QASA-313
    [Tags]    QASA-313
    [Setup]    Start Application
    Click Home
    ${search_item}=    Set Variable     pencil
    Get Sponsored Products in PDP    ${search_item}
    Click Search Home
    Search Product    ${search_item}
    Click Product From Search Result    ${ProductTitle}
    Scroll To Text    Related Products
    Verify Text On Screen    Sponsored  
    Click Related Products Sponsored
    Click Related Products Sponsored OK
    Click Related Product From Title    ${query_result_adProductTitle}
    [Teardown]    Tear Down