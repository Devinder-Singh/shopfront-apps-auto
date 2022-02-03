*** Settings ***
Default Tags      Landing_Pages_CMS
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > CMS Widgets > Carousel Widget - QASA-647
    [Tags]    QASA-647
    [Setup]    Start Application
    Click Menu
    Click Menu Shop By Department
    Click Menu Department    Auto
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Baby & Toddler
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Beauty
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Books
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Camping
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Cellphones
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Clothing
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Computers
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    DIY & Home Improvement
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Gaming
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Garden, Pool & Patio
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Groceries
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Health & Hygiene
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Home & Appliances
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Household Cleaning
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Kitchen & Appliances
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Liquor
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Luggage & Travel
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Movies
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Music
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Musical Instruments
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Office
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Pets
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Photography
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Sport & Training
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Stationery
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Toiletries
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Toys & Games
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    TV, Audio & Video
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Wearable Tech
    Click Product Widget Carousel
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    [Teardown]    Tear Down

Apps > CMS Widgets > Product List Widget - QASA-648
    [Tags]    QASA-648
    [Setup]    Start Application
    Click Menu
    Click Menu Shop By Department
    Click Menu Department    Auto
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Auto
    Click Back Screen
    Click Menu Department    Baby & Toddler
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Baby
    Click Back Screen
    Click Menu Department    Beauty
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Beauty
    Click Back Screen
    Click Menu Department    Books
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Books
    Click Back Screen
    Click Menu Department    Camping
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Camping
    Click Back Screen
    Click Menu Department    Cellphones
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Cellphones
    Click Back Screen
    Click Menu Department    Clothing
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Clothing
    Click Back Screen
    Click Menu Department    Computers
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Computers
    Click Back Screen
    Click Menu Department    DIY & Home Improvement
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    DIY
    Click Back Screen
    Click Menu Department    Gaming
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Gaming
    Click Back Screen
    Click Menu Department    Garden, Pool & Patio
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Garden
    Click Back Screen
    Click Menu Department    Groceries
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Groceries
    Click Back Screen
    Click Menu Department    Health & Hygiene
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Health
    Click Back Screen
    Click Menu Department    Home & Appliances
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Home
    Click Back Screen
    Click Menu Department    Household Cleaning
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Household+Cleaning
    Click Back Screen
    Click Menu Department    Kitchen & Appliances
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Kitchen
    Click Back Screen
    Click Menu Department    Liquor
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Liquor
    Click Back Screen
    Click Menu Department    Luggage & Travel
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Luggage
    Click Back Screen
    Click Menu Department    Movies
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Movies
    Click Back Screen
    Click Menu Department    Music
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Music
    Click Back Screen
    Click Menu Department    Musical Instruments
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Musical+Instruments
    Click Back Screen
    Click Menu Department    Office
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Office
    Click Back Screen
    Click Menu Department    Pets
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Pets
    Click Back Screen
    Click Menu Department    Photography
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Photography
    Click Back Screen
    Click Menu Department    Sport & Training
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Sport
    Click Back Screen
    Click Menu Department    Stationery
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Stationery
    Click Back Screen
    Click Menu Department    Toiletries
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Toiletries
    Click Back Screen
    Click Menu Department    Toys & Games
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Toys
    Click Back Screen
    Click Menu Department    TV, Audio & Video
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    TV
    Click Back Screen
    Click Menu Department    Wearable Tech
    Scroll To Element    ${btnProductViwAllFirst}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdTitle}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdPrice}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdRating}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdWishlist}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Element On Screen    ${btnWidgetProdImage}    ${MIN_TIMEOUT}
    Get CMS Widget Products Attributes    Wearable+Tech
    Click Back Screen
    [Teardown]    Tear Down

Apps > CMS Widgets > Image List Widget - QASA-652
    [Tags]    QASA-652
    [Setup]    Start Application
    Click Menu
    Click Menu Shop By Department
    Click Menu Department    Baby & Toddler
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Beauty
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Books
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Camping
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Cellphones
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Clothing
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Computers
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    DIY & Home Improvement
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Gaming
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Garden, Pool & Patio
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Health & Hygiene
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Home & Appliances
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Liquor
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Luggage & Travel
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Musical Instruments
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Office
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Pets
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Photography
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Sport & Training
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Stationery
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    TV, Audio & Video
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Wearable Tech
    Click Product Widget Image
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    [Teardown]    Tear Down

Apps > CMS Widgets > Contextual Navigation Widget > SubCategories - QASA-649
    [Tags]    QASA-649
    [Setup]    Start Application
    Click Menu
    Click Menu Shop By Department
    Click Menu Department    Auto
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Baby & Toddler
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Beauty
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Books
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Camping
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Cellphones
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Clothing
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Computers
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    DIY & Home Improvement
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Gaming
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Garden, Pool & Patio
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Groceries
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Health & Hygiene
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Home & Appliances
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Household Cleaning
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Liquor
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Luggage & Travel
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Movies
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Music
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Musical Instruments
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Office
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Pets
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Photography
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Sport & Training
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Stationery
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Toiletries
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Toys & Games
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    TV, Audio & Video
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Wearable Tech
    Click Product Widget Context
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    [Teardown]    Tear Down

Apps > CMS Widgets > Banner Pair Widget - QASA-654
    [Tags]    QASA-654
    [Setup]    Start Application
    Click Menu
    Click Menu Shop By Department
    Click Menu Department    Baby & Toddler
    Click Product Widget Banner
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Beauty
    Click Product Widget Banner
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Books
    Click Product Widget Banner
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Cellphones
    Click Product Widget Banner
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Clothing
    Click Product Widget Banner
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Gaming
    Click Product Widget Banner
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Garden, Pool & Patio
    Click Product Widget Banner
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Groceries
    Click Product Widget Banner
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Home & Appliances
    Click Product Widget Banner
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Household Cleaning
    Click Product Widget Banner
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Liquor
    Click Product Widget Banner
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Music
    Click Product Widget Banner
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Office
    Click Product Widget Banner
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Photography
    Click Product Widget Banner
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Stationery
    Click Product Widget Banner
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Toys & Games
    Click Product Widget Banner
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    [Teardown]    Tear Down

Apps > CMS Widgets > Feature Collection Widgets - QASA-653
    [Tags]    QASA-653
    [Setup]    Start Application
    Click Menu
    Click Menu Shop By Department
    Click Menu Department    Auto
    Scroll To Element    ${btnFeaturedWidgetImage}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Scroll To Element    ${btnFeaturedWidgetTitle}
    Verify Element On Screen    ${btnProductViwAllFirst}    ${MIN_TIMEOUT}
    Click Product Widget Featured Collection
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Camping
    Scroll To Element    ${btnFeaturedWidgetImage}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Scroll To Element    ${btnFeaturedWidgetTitle}
    Verify Element On Screen    ${btnProductViwAllFirst}    ${MIN_TIMEOUT}
    Click Product Widget Featured Collection
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Computers
    Scroll To Element    ${btnFeaturedWidgetImage}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Scroll To Element    ${btnFeaturedWidgetTitle}
    Verify Element On Screen    ${btnProductViwAllFirst}    ${MIN_TIMEOUT}
    Click Product Widget Featured Collection
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    DIY & Home Improvement
    Scroll To Element    ${btnFeaturedWidgetImage}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Scroll To Element    ${btnFeaturedWidgetTitle}
    Verify Element On Screen    ${btnProductViwAllFirst}    ${MIN_TIMEOUT}
    Click Product Widget Featured Collection
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Health & Hygiene
    Scroll To Element    ${btnFeaturedWidgetImage}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Scroll To Element    ${btnFeaturedWidgetTitle}
    Verify Element On Screen    ${btnProductViwAllFirst}    ${MIN_TIMEOUT}
    Click Product Widget Featured Collection
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Kitchen & Appliances
    Scroll To Element    ${btnFeaturedWidgetImage}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Scroll To Element    ${btnFeaturedWidgetTitle}
    Verify Element On Screen    ${btnProductViwAllFirst}    ${MIN_TIMEOUT}
    Click Product Widget Featured Collection
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Luggage & Travel
    Scroll To Element    ${btnFeaturedWidgetImage}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Scroll To Element    ${btnFeaturedWidgetTitle}
    Verify Element On Screen    ${btnProductViwAllFirst}    ${MIN_TIMEOUT}
    Click Product Widget Featured Collection
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Movies
    Scroll To Element    ${btnFeaturedWidgetImage}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Scroll To Element    ${btnFeaturedWidgetTitle}
    Verify Element On Screen    ${btnProductViwAllFirst}    ${MIN_TIMEOUT}
    Click Product Widget Featured Collection
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Music
    Scroll To Element    ${btnFeaturedWidgetImage}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Scroll To Element    ${btnFeaturedWidgetTitle}
    Verify Element On Screen    ${btnProductViwAllFirst}    ${MIN_TIMEOUT}
    Click Product Widget Featured Collection
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Musical Instruments
    Scroll To Element    ${btnFeaturedWidgetImage}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Scroll To Element    ${btnFeaturedWidgetTitle}
    Verify Element On Screen    ${btnProductViwAllFirst}    ${MIN_TIMEOUT}
    Click Product Widget Featured Collection
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Office
    Scroll To Element    ${btnFeaturedWidgetImage}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Scroll To Element    ${btnFeaturedWidgetTitle}
    Verify Element On Screen    ${btnProductViwAllFirst}    ${MIN_TIMEOUT}
    Click Product Widget Featured Collection
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Sport & Training
    Scroll To Element    ${btnFeaturedWidgetImage}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Scroll To Element    ${btnFeaturedWidgetTitle}
    Verify Element On Screen    ${btnProductViwAllFirst}    ${MIN_TIMEOUT}
    Click Product Widget Featured Collection
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Toiletries
    Scroll To Element    ${btnFeaturedWidgetImage}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Scroll To Element    ${btnFeaturedWidgetTitle}
    Verify Element On Screen    ${btnProductViwAllFirst}    ${MIN_TIMEOUT}
    Click Product Widget Featured Collection
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    TV, Auddo & Video
    Scroll To Element    ${btnFeaturedWidgetImage}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Scroll To Element    ${btnFeaturedWidgetTitle}
    Verify Element On Screen    ${btnProductViwAllFirst}    ${MIN_TIMEOUT}
    Click Product Widget Featured Collection
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    Click Menu Department    Wearable Tech
    Scroll To Element    ${btnFeaturedWidgetImage}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Scroll To Element    ${btnFeaturedWidgetTitle}
    Verify Element On Screen    ${btnProductViwAllFirst}    ${MIN_TIMEOUT}
    Click Product Widget Featured Collection
    Verify Product Widget Navigation
    Click Back Screen
    Click Back Screen
    [Teardown]    Tear Down
