*** Settings ***
Default Tags      search
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > PDP > Main Product Details > Description - QA-2037
    [Tags]    data    QA-2037
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    dog food
    Click Product From Title    Enerpets - Enerdog Economy 25kg dry dog food
    Verify Element On Screen    ${btnAddToCart}    30s
    Click PDP Description Show More
    Click Back Android
    Click Back iOS    icon cross
    Verify Element On Screen    ${btnAddToCart}    30s
    Click PDP Description Show More
    [Teardown]    Tear Down

Apps > PDP > Buy Box > Select an Option > Variants (Out of stock) - QA-9293
    [Tags]    data    QA-9293
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    jean
    Click Variant Product from API
    Click Product Disabled Variant From API
    Verify Element On Screen Not    ${btnAddToCart}    30s
    Click Product Variant From API
    Click Add To Cart
    Tear Down
    Start Application
    Click Home
    Click Search Home
    Search Product    shoes f
    Click Variant Product from API
    Click Product Disabled Variant Colour From API
    Verify Element On Screen Not    ${btnAddToCart}    30s
    Click Product Variant Colour From API
    Click Add To Cart
    Tear Down
    Start Application
    Click Home
    Click Search Home
    Search Product    shirt
    Click Variant Product from API
    Click Product Disabled Variant Colour Size From API
    Verify Element On Screen Not    ${btnAddToCart}    30s
    Click Product Variant Colour From API
    Click Product Variant Colour Size From API
    Click Add To Cart
    [Teardown]    Tear Down

Apps > PDP > Buy Box > Select an Option - QA-2031
    [Tags]    data    QA-2031
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    jean
    Click Variant Product from API
    Verify Element On Screen Not    ${btnAddToCart}    30s
    Verify Element On Screen Not    ${btnAddWishlist}    1s
    Click Product Variant From API
    Verify Element On Screen    ${btnAddWishlist}    30s
    Click Add To Cart
    Tear Down
    Start Application
    Click Home
    Click Search Home
    Search Product    shoes f
    Click Variant Product from API
    Verify Element On Screen Not    ${btnAddToCart}    30s
    Verify Element On Screen Not    ${btnAddWishlist}    1s
    Click Product Variant Colour From API
    Verify Element On Screen    ${btnAddWishlist}    30s
    Click Add To Cart
    Tear Down
    Start Application
    Click Home
    Click Search Home
    Search Product    shirt
    Click Variant Product from API
    Verify Element On Screen Not    ${btnAddToCart}    30s
    Verify Element On Screen Not    ${btnAddWishlist}    1s
    Click Product Variant Colour From API
    Click Product Variant Colour Size From API
    Verify Element On Screen    ${btnAddWishlist}    30s
    Click Add To Cart
    [Teardown]    Tear Down

Apps > PDP > Buy Box > Delivery Cost - QA-2027
    [Tags]    QA-2027
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Check Text On Screen Not    FREE DELIVERY
    Tear Down
    Start Application
    Click Home
    Click Search Home
    Search Product    drone
    Click Product from API
    Verify Text On Screen Android    FREE DELIVERY    30s
    Verify Text On Screen iOS    FREE DELIVERY    30s
    Tear Down
    Start Application
    Click Home
    Click Search Home
    Search Product    fridg
    Click Product from API
    Verify Text On Screen Android    + R 200 Delivery Surcharge    30s
    Verify Text On Screen iOS    + R 200 Delivery Surcharge    30s
    [Teardown]    Tear Down

Apps > PDP > Buy Box > eBucks - QA-2028
    [Tags]    QA-2028
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    airtim
    Click First Product from API
    Verify Text On Screen    eB20 - eB    30s
    Click Airtime
    Verify Text On Screen    eB50    30s
    Tear Down
    Start Application
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Verify eBucks On Screen
    Tear Down
    Start Application
    Click Home
    Click Search Home
    Search Product    fridg
    Click Product from API
    Verify eBucks On Screen
    Tear Down
    Start Application
    Click Home
    Click Search Home
    Search Product    johnny
    Click Product from API
    Verify eBucks On Screen
    [Teardown]    Tear Down
