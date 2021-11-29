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
    Verify Text On Screen    ${query_result_CartProductVariantColor}    ${MIN_TIMEOUT}
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
    Verify Text On Screen    ${query_result_CartProductVariant}    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    jeans for wo
    Click Variant Product from API
    Click Product Variant Size From API
    Click Add To Cart
    Click Go To Cart
    Verify Text On Screen    ${query_result_CartProductVariant}    ${MIN_TIMEOUT}
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
    Verify Text On Screen    ${query_result_CartProductPrice}    ${MIN_TIMEOUT}
    Verify Text On Screen    Ships in 5 - 7 work days    2s
    Verify Text On Screen    1    2s
    Click Product From Title    ${query_result_CartProduct}
    Verify Element On Screen    ${btnAddToCart}    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Cart > Product Details > Unboxed - QASA-48
    [Tags]    QASA-48
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
    Verify Text On Screen    Takealot Unboxed Deal    ${MIN_TIMEOUT}
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
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    The prepaid code will be delivered to you via email    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    vouche
    Click Variant Product from API
    Click Product Variant From API
    Click Add To Cart
    Click Go To Cart
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    The gift voucher will be delivered via email to the recipient    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Dying Light 2
    Click Product From Title    Dying Light 2: Stay Human (PS5)
    Click Add To Cart
    Click Go To Cart
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Pre-order items must be purchased in separate orders (1 order for each pre-order item)    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Dying Light 2
    Click Product From Title    Dying Light 2: Stay Human (PS5)
    Click Add To Cart
    Click Go To Cart
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Pre-order: Ships    ${MIN_TIMEOUT}
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
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    This product is not eligible for Cash on Delivery (COD)    ${MIN_TIMEOUT}
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
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    This product is not eligible for Cash on Delivery (COD)    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Fridge Bos
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    This product is not eligible for Cash on Delivery (COD)    ${MIN_TIMEOUT}
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
    Verify Text On Screen    Missed promotion    ${MIN_TIMEOUT}
    Click Missed Promotion Text
    Click Shop The Deal
    Click Product From Title    Parrot Products Eraser Whiteboard (95*50mm 12 Peel Off Layers)
    Click Add To Cart
    Click Go To Cart
    Verify Text On Screen    2 FOR R    ${MIN_TIMEOUT}
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
    Verify Text On Screen    Missed promotion    ${MIN_TIMEOUT}
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
    Scroll To Text    left
    Click Left Product from API
    Verify Text On Screen    LEFT AT    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Cart > Empty Cart - QASA-518
    [Tags]    QASA-518
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Home Cart
    Verify Text On Screen    Your Shopping Cart is Empty    ${MIN_TIMEOUT}
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
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    No items    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Your Shopping Cart is Empty    ${MIN_TIMEOUT}
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
    Verify Text On Screen    Pre-order: Ships    ${MIN_TIMEOUT}
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
    Verify Text On Screen    Available Now    ${MIN_TIMEOUT}
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
    Verify Text On Screen    Available Now    ${MIN_TIMEOUT}
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
    Verify Text On Screen    In stock    ${MIN_TIMEOUT}
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
    Verify Element On Screen    ${btnCheckout}    ${MIN_TIMEOUT}
    Verify Text On Screen    Ships in 5 - 7 work days    2s
    [Teardown]    Tear Down

Apps > Cart > Limitations - QASA-522
    [Tags]    QASA-522
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
    Verify Text On Screen    Your shopping cart is full. To make space either purchase the items in your cart now or move some items to your wishlist    ${MIN_TIMEOUT}
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
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    The gift voucher will be delivered via email to the recipient    ${MIN_TIMEOUT}
    Swipe Up    ${windowScroll}
    Swipe Up    ${windowScroll}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    The prepaid code will be delivered to you via email    1s
    Click Checkout
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Delivery via email to    ${MIN_TIMEOUT}
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
    Click Any Delivery
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
    Verify Text On Screen    Unboxed Deals    ${MIN_TIMEOUT}
    Click Other Offers Add To Cart
    Click Go To Cart
    [Teardown]    Tear Down

Apps > Cart > Product Card Actions > Remove & Move to Wishlist - QASA-521
    [Tags]    QASA-521
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout Delete First Item
    Click Checkout Cart Undo
    Verify Text On Screen    ${query_result_CartProduct}    15s
    Close Application
    Start Application
    Clear Environment
    Click Home
    Click Wishlist Nav Bar
    Click Create Wishlist
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout Move To Wishlist Swipe
    Swipe Right    ${btnCartItemContainer}
#    Swipe Add to Wishlist not implemented, object can't be seen by Appium
#    Verify Text On Screen    Item(s) moved to list    ${MIN_TIMEOUT}
#    Verify Text On Screen    Item added to Wish List    ${MIN_TIMEOUT}
#    Swipe Delete Product not implemented, object can't be seen by Appium
    [Teardown]    Tear Down

Apps> Cart > Cart Page Features - QASA-541
    [Tags]    QASA-541
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Verify Text On Screen    Spend R450 or more to get FREE DELIVERY or FREE COLLECTION    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Fridg
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Check Text On Screen Not    Spend R450 or more to get FREE DELIVERY or FREE COLLECTION
    Verify Text On Screen    Placing an item in your shopping cart does not reserve that item or price. We only reserve stock for your order once payment is received    ${MIN_TIMEOUT}
    Verify Text On Screen    Customers Also Bought    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click CAB Add To Cart
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Item added to cart    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Product Card Actions > Cart Limit & Other areas - QASA-1
    [Tags]    QASA-1
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
    Verify Text On Screen    Your shopping cart is full. To make space either purchase the items in your cart now or move some items to your wishlist    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Wishlist
    Close Application
    Start Application
    Click Home
    Click Wishlist Nav Bar
    Click Wishlist Default
    Click Wishlist Add To Cart    ${False}
    Verify Text On Screen    Your shopping cart is full. To make space either purchase the items in your cart now or move some items to your wishlist    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Click Home
    Click Home Cart
    Verify Element On Screen    ${btnCheckout}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click CAB Add To Cart Scroll
    Verify Text On Screen    Your shopping cart is full. To make space either purchase the items in your cart now or move some items to your wishlist    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Product Card Actions > Stock Check - QASA-2
    [Tags]    QASA-2
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click In Stock Product from API
#    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Change Cart Quantity Android    10
    Verify Text On Screen    You've attempted to order more stock than currently available at our warehouse    ${MIN_TIMEOUT}
    Verify Text On Screen    The products will need to be ordered from our supplier. If you'd rather not wait for the extra stock to arrive from the supplier, please update the quantity accordingly    1s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Leadtime Product from API
    Click Add To Cart
    Click Go To Cart
    Change Cart Quantity Android    10
    Verify Text On Screen    You asked for 10 but we only have    ${MIN_TIMEOUT}
    Verify Text On Screen    available    1s
    [Teardown]    Tear Down

Apps > Cart > Product Card Actions > Update Quantity - QASA-3
    [Tags]    QASA-3
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Jihnniw Walke
    Click In Stock Product from API
    Click Add To Cart
    Click Go To Cart
    Change Cart Quantity Android    2
    Verify Text On Screen    2    ${MIN_TIMEOUT}
    Change Cart Quantity Scroll    150
    Verify Text On Screen    You have attempted to order over 200kg of liquor items. We restrict liquor to a maximum of 200kg    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Cart > Product Card Actions > Edit - QASA-5
    [Tags]    QASA-5
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Change Cart Quantity Android    2
    Click Checkout Delete First Item
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    No items    ${MIN_TIMEOUT}
    Click Checkout Cart Undo
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    ${query_result_CartProduct}    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Cart > Product Card Actions > On boarding > QASA-4
    [Tags]    QASA-4
    [Setup]    Start Application
    Clear Environment
    ${productId}=    Search Product And Return Product Id    Sunlight Regular Dishwashing Liquid
    Add To Cart    ${productId}

    ${productId}=    Search Product And Return Product Id    omo auto washing
    Add To Cart    ${productId}
        
    Click Menu Logout If Logged In
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Run Keyword If    '${PLATFORM_NAME}' == 'ios'    Click Menu
    Click Home Cart
    
    Swipe Cart Item Left    1
    Run Keyword If    '${PLATFORM_NAME}' == 'android'    Click Cart Move To Wishlist    1
    Run Keyword If    '${PLATFORM_NAME}' == 'android'    Verify Snack Bar    Item moved to list
    Run Keyword If    '${PLATFORM_NAME}' == 'ios'    Click Cart Delete    1

    Swipe Cart Item Left    1    3s
    Click Cart Delete    1
    Run Keyword If    '${PLATFORM_NAME}' == 'android'    Verify Snack Bar    Item removed from Cart.    
    Run Keyword If    '${PLATFORM_NAME}' == 'ios'    Verify Text On Screen    No items
    [Teardown]    Tear Down
