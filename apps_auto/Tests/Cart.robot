*** Settings ***
Default Tags      cart
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Cart > Product Details > Variants - QA-5313
    [Tags]    QA-5313
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

Apps > Cart > Product Details > Non-Variant - QA-5315
    [Tags]    QA-5315
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

Apps > Cart > Product Details > Pre-Orders, Voucher & Airtime - QA-9936
    [Tags]    QA-9936
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

Apps > Cart > Product Details > COD Eligibility - QA-9937
    [Tags]    QA-9937
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
