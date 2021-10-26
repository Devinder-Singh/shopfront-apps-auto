*** Settings ***
Default Tags      cart
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Cart > Product Details > Variants - QASA-514
    [Tags]    QASA-514
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    shirt
    Click Variant Product from API
    Click Product Variant Colour From API
    Click Product Variant Colour Size From API
    Click Add To Cart
    Click Go To Cart
    Verify Text On Screen    ${query_result_CartProductVariantColor}    30s
    Verify Text On Screen    ${query_result_CartProductVariant}    2s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    humidifier
    Click Variant Product from API
    Click Product Variant Colour From API
    Click Add To Cart
    Click Go To Cart
    Verify Text On Screen    ${query_result_CartProductVariant}    30s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    jeans for wo
    Click Variant Product from API
    Click Product Variant Size From API
    Click Add To Cart
    Click Go To Cart
    Verify Text On Screen    ${query_result_CartProductVariant}    30s
    [Teardown]    Tear Down

Apps > Cart > Product Details > Non-Variant - QASA-512
    [Tags]    QASA-512
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
    Verify Text On Screen    ${query_result_CartProductPrice}    30s
    Verify Text On Screen    Ships in 5 - 7 work days    2s
    Verify Text On Screen    1    2s
    Click Product From Title    ${query_result_CartProduct}
    Verify Element On Screen    ${btnAddToCart}    30s
    [Teardown]    Tear Down

Apps > Cart > Product Details > Unboxed - QA-9935
    [Tags]    QA-9935
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Unboxed Dea
#    Click Product From Title    HP 123 Black Ink Cartridge
    Click Product from API
    Click Other Offers Add To Cart
    Click Go To Cart
    Verify Text On Screen    Takealot Unboxed Deal    30s
    [Teardown]    Tear Down

Apps > Cart > Product Details > Pre-Orders, Voucher & Airtime - QASA-47
    [Tags]    QASA-47
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    airtim
    Click Variant Product from API
    Click Product Variant From API
    Click Add To Cart
    Click Go To Cart
    Verify Text On Screen Android    The prepaid code will be delivered to you via email    30s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    vouche
    Click Variant Product from API
    Click Product Variant From API
    Click Add To Cart
    Click Go To Cart
    Verify Text On Screen Android    The gift voucher will be delivered via email to the recipient    30s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Dying Light 2
    Click Product From Title    Dying Light 2: Stay Human (PS5)
    Click Add To Cart
    Click Go To Cart
    Verify Text On Screen Android    Pre-order items must be purchased in separate orders (1 order for each pre-order item)    30s
    Close Application
    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Dying Light 2
    Click Product From Title    Dying Light 2: Stay Human (PS5)
    Click Add To Cart
    Click Go To Cart
    Verify Text On Screen Android    Pre-order: Ships    30s
    [Teardown]    Tear Down

Apps > Cart > Product Details > COD Eligibility - QASA-46
    [Tags]    QASA-46
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Johnny Wal
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Verify Text On Screen Android    This product is not eligible for Cash on Delivery (COD)    30s
    Close Application
    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    vouche
    Click Variant Product from API
    Click Product Variant From API
    Click Add To Cart
    Click Go To Cart
    Verify Text On Screen Android    This product is not eligible for Cash on Delivery (COD)    30s
    Close Application
    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Fridge Bos
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Verify Text On Screen Android    This product is not eligible for Cash on Delivery (COD)    30s
    [Teardown]    Tear Down

Apps > Cart > Promotions > Missed Promotions - QASA-516
    [Tags]    QASA-516
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Accessible File
    Click Product From Title    Treeline Accessible Files Pink Foolscap - Pack of 4
    Click Add To Cart
    Click Go To Cart
    Verify Text On Screen    Missed promotion    30s
    Click Missed Promotion Text
    Click Shop The Deal
    Click Product From Title    Parrot Products Eraser Whiteboard (95*50mm 12 Peel Off Layers)
    Click Add To Cart
    Click Go To Cart
    Verify Text On Screen    2 FOR R    30s
    Close Application
    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Blower Cordless
    Click Product From Title    EINHELL - Blower Cordless 18V Inc Inflation Nozzles
    Click Add To Cart
    Click Go To Cart
    Verify Text On Screen    Missed promotion    30s
    Close Application
    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Blower Cordless
    Click Product From Title    EINHELL - Blower Cordless 18V Inc Inflation Nozzles
    Click Add Bundle To Cart
    Click Go To Cart
    Wait for Checkout
    Check Text On Screen Not    Missed promotion
    [Teardown]    Tear Down

Apps > Cart > Promotions > Promotion Low Stock - QASA-515
    [Tags]    QASA-515
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu Daily Deals
    Verify Text On Screen Scroll    left    1s    ${windowScroll}    ${btnProductSearchFilter}
    Click Left Product from API
    Verify Text On Screen    LEFT AT    30s
    [Teardown]    Tear Down

Apps > Cart > Empty Cart - QASA-518
    [Tags]    QASA-518
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Home Cart
    Verify Text On Screen    Your Shopping Cart is Empty    30s
    Verify Text On Screen    Trending on Takealot    2s
    Verify Element On Screen    ${btnCartContinueShopping}    2s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout Delete First Item
    Verify Text On Screen iOS    No items    30s
    Verify Text On Screen Android    Your Shopping Cart is Empty    30s
    Verify Text On Screen    Trending on Takealot    2s
    Verify Element On Screen    ${btnCartContinueShopping}    2s
    [Teardown]    Tear Down

Apps > Cart > Stock Status - QASA-517
    [Tags]    QASA-517
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Dying Light 2
    Click Product From Title    Dying Light 2: Stay Human (PS5)
    Click Add Pre Order To Cart
    Click Go To Cart
    Verify Text On Screen    Pre-order: Ships    30s
    Close Application
    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    airtim
    Click Variant Product from API
    Click Product Variant From API
    Click Add To Cart
    Click Go To Cart
    Verify Text On Screen    Available Now    30s
    Close Application
    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    vouche
    Click Variant Product from API
    Click Product Variant From API
    Click Add To Cart
    Click Go To Cart
    Verify Text On Screen    Available Now    30s
    Close Application
    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Toothpast
    Click Variant Product from API
    Click Product Variant From API
    Click Add To Cart
    Click Go To Cart
    Verify Text On Screen    In stock    30s
    Verify Text On Screen    CPT    2s
    Verify Text On Screen    JHB    2s
    Close Application
    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Curler
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Verify Element On Screen    ${btnCheckout}    30s
    Verify Text On Screen    Ships in 5 - 7 work days    2s
    [Teardown]    Tear Down

Apps > Cart > Limitations - QASA-522
    [Tags]    master    QASA-522
    [Setup]    Start Application
    Clear Environment
    Add Items To Cart Full
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Verify Text On Screen    Your shopping cart is full. To make space either purchase the items in your cart now or move some items to your wishlist.    30s
    Close Application
    Start Application
    Click Home
    Click Home Cart
    Change Cart Quantity Android    2
    Click Checkout
    [Teardown]    Tear Down

Apps > Cart > Note Notification - QASA-520
    [Tags]    QASA-520
    [Setup]    Start Application
    Click Menu
    Log In If Not Logged In    ${G_EMAIL_Cart}    test2
    Click Home
    Click Search Home
    Search Product    vouche
    Click Product from API
    Click Add To Cart    
    Click Go To Cart
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    airtim
    Click Variant Product from API
    Click Product Variant From API
    Click Add To Cart    
    Click Go To Cart
    Verify Text On Screen Android    The gift voucher will be delivered via email to the recipient    30s
    Swipe Up    ${windowScroll}
    Swipe Up    ${windowScroll}
    Verify Text On Screen Android    The prepaid code will be delivered to you via email    1s
    Click Checkout
    Verify Text On Screen iOS    Delivery via email to    30s
    Close Application
    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    iPhone
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Free Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click COD Payment Info
    Verify Text On Screen    Cash on Delivery is not available for this order    5s
    Close Application
    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Unboxed Dea
    Click Product from API
    Verify Text On Screen    Unboxed Deals    30s
    Click Other Offers Add To Cart
    Click Go To Cart
    [Teardown]    Tear Down
