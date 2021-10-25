*** Settings ***
Default Tags      search
Resource          ../common/config/defaultConfig.robot
Library    OperatingSystem

*** Test Cases ***
Apps > PDP > Main Product Details > Description - QA-2037
    [Tags]    QA-2037
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
    [Tags]    QA-9293
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    jean
    Click Variant Product from API
    Click Product Disabled Variant From API
    Verify Element On Screen Not    ${btnAddToCart}    30s
    Click Product Variant From API
    Click Add To Cart
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    shoes f
    Click Variant Product from API
    Click Product Disabled Variant Colour From API
    Verify Element On Screen Not    ${btnAddToCart}    30s
    Click Product Variant Colour From API
    Click Add To Cart
    Close Application
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
    [Tags]    QA-2031
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
    Close Application
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
    Close Application
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
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Check Text On Screen Not    FREE DELIVERY
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    drone
    Click Product from API
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    FREE DELIVERY    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    FREE DELIVERY    30s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    fridg
    Click Product from API
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    + R 200 Delivery Surcharge    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    + R 200 Delivery Surcharge    30s
    [Teardown]    Tear Down

Apps > PDP > Buy Box > eBucks - QA-2028
    [Tags]    QA-2028
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    airtim
    Click First Product from API
    Verify Text On Screen    eB20 - eB    30s
    Click Airtime
    Verify Text On Screen    eB50    30s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Verify eBucks On Screen
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    fridg
    Click Product from API
    Verify eBucks On Screen
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    johnny
    Click Product from API
    Verify eBucks On Screen
    [Teardown]    Tear Down

Apps > PDP > You Might Also Like - QA-2012
    [Tags]    QA-2012
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Verify Text On Screen Scroll    You Might Also Like    30s    ${windowScroll}    ${btnAddToCart}
    Verify Product YAML from API
    [Teardown]    Tear Down

Apps > PDP > Policy list > Eligible for Cash on Delivery - QA-2013
    [Tags]    QA-2013
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click Eligible for Cash on Delivery
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    What does this mean?    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    You can pay for this item with cash when your driver delivers your order    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    How does it work?    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Select Cash On Delivery (COD) as your payment option when you checkout. Have the exact amount of cash ready for our friendly delivery driver when he arrives    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Is COD available on every order?    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    No. We don’t offer COD for    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Digital products (e.g. eBooks, gift vouchers or airtime)    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Customised products (e.g. a sports shirt printed with a personalised name)    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Orders totalling R5,000 or more    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Orders being collected from Takealot pickup points    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Delivery addresses falling outside of our Takealot Delivery Team area    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    If your order is eligible for COD, it will be displayed as a payment option at checkout    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    What does this mean?    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    You can pay for this item with cash when your driver delivers your order    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    How does it work?    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Select Cash On Delivery (COD) as your payment option when you checkout. Have the exact amount of cash ready for our friendly delivery driver when he arrives    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Is COD available on every order?    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    No. We don’t offer COD for    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Digital products (e.g. eBooks, gift vouchers or airtime)    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Customised products (e.g. a sports shirt printed with a personalised name)    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Orders totalling R5,000 or more    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Orders being collected from Takealot pickup points    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Delivery addresses falling outside of our Takealot Delivery Team area    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    If your order is eligible for COD, it will be displayed as a payment option at checkout    1s
    [Teardown]    Tear Down

Apps > PDP > Policy list > Free Delivery Available - QA-2014
    [Tags]    QA-2014
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    fridg
    Click Product from API
    Check Text On Screen Not    FREE DELIVERY
    Click Search Icon
    Search Product    Vouche
    Click Product from API
    Check Text On Screen Not    FREE DELIVERY
    Click Search Icon
    Search Product    drone
    Click Product from API
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    FREE DELIVERY    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    FREE DELIVERY    30s
    [Teardown]    Tear Down

Apps > PDP > Other Offers - QA-1974
    [Tags]    QA-1974
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    Unboxed Dea
    Click Product From Title    Xiaomi Mi Lite Smartwatch
    Click PDP JHB
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    This item is in stock in our Johannesburg warehouse and can be shipped from there    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    JHB    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    This item is in stock in our Johannesburg warehouse and can be shipped from there    30s
    Click PDP Warehouse OK
    Click PDP CPT
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    This item is in stock in our Cape Town warehouse and can be shipped from there. You can also collect it yourself from our warehouse during the week or over weekends    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    CPT    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    This item is in stock in our Cape Town warehouse and can be shipped from there. You can also collect it yourself from our warehouse during the week or over weekends    30s
    Click Add To Cart
    Verify Element On Screen    ${btnGoToCart}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Item Added To Cart    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Item added to Cart    30s
    Verify Text On Screen    Item added to Cart    30s
    [Teardown]    Tear Down

Apps > PDP > Buy Box > List Price - QA-2025
    [Tags]    QA-2025
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    sale
    Click Product from API
    Click PDP List Price
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    This is our List Price. Find out what this means in our Terms & Conditions    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Our List Price    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    This is our List Price. Find out what this means in our Terms & Conditions    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Our List Price    1s
    Click PDP List Price Cancel
    Click Search Icon
    Search Product    jean
    Click Variant Product from API
    Click Product Variant From API
    Click PDP List Price
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    This is our List Price. Find out what this means in our Terms & Conditions    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Our List Price    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    This is our List Price. Find out what this means in our Terms & Conditions    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Our List Price    1s
    [Teardown]    Tear Down

Apps > PDP > Unboxed Deals & New > Primary Unboxed > Variant - QA-9252
    [Tags]    QA-9252
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    unboxed dea
    Click Product from API
    Verify Text On Screen Scroll Android    Fulfilled by Takealot    30s    ${windowScroll}    ${btnAddToCart}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Unboxed Deals    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    WHAT IS THIS?    1s
#    Verify Text On Screen Scroll iOS    Fulfilled by Takealot    30s    ${windowScroll}    ${btnAddToCart}
    Verify Text On Screen Scroll iOS    Unboxed Deals    30s    ${windowScroll}    ${btnAddToCart}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Unboxed Deal    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    What is this?    1s
    Click Other Offers Add To Cart No Scroll Android
    Click Other Offers Add To Cart iOS
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Item Added To Cart    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    ${query_result_CartProduct}    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Item added to Cart    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    ${query_result_CartProduct}    1s
    Verify Element On Screen    ${btnGoToCart}    30s
    Click Back Android
    Click Go To Cart iOS
    Click Home iOS
    Click Other Offers Add To Cart No Scroll Android
    Click Other Offers Add To Cart No Scroll iOS
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    You asked for 2 but we only have 1 available    30s
#    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    You asked for 2 but we only have 1 available    30s
    [Teardown]    Tear Down

Apps > PDP > Bundle Deals > Set Bundle (Same product) - QA-1976
    [Tags]    QA-1976
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Ring - Video Doorbel
    Click Product From Title    Ring - Video Doorbell 3 Faceplate - Night Sky
    Verify Text On Screen Scroll Android    SAVE R    30s    ${windowScroll}    ${btnAddToCart}
    Verify Text On Screen Scroll iOS    SAVE R    30s    ${windowScroll}    ${btnAddToCart}
    Swipe Up    ${windowScroll}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Bundle Price    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Bundle Price    1s
    Click Add Bundle To Cart No Scroll Android
    Click Add Bundle To Cart iOS
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Items Added To Cart    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    items added to Cart    30s
    Verify Element On Screen    ${btnGoToCart}    1s
    [Teardown]    Tear Down

Apps > PDP > Bundle Deals > “Show All Deals” Screen - QA-1982
    [Tags]    QA-1982
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Maybelline Fit Me Matte Poreles
    Click Product From Title    Maybelline Fit Me Matte Poreless 356 Warm Coconut
    Verify Text On Screen Scroll Android    Bundle Deals expire when stock runs out    30s    ${windowScroll}    ${btnAddToCart}
    Verify Text On Screen Scroll iOS    Bundle Deals expire when stock runs out    30s    ${windowScroll}    ${btnAddToCart}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Mix and match any    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    eligible products for    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Mix and match any    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    eligible products for    1s
    Verify Element On Screen Android    ${lblPDPShopTheDeal}    1s
    Verify Element On Screen Scroll iOS    ${lblPDPShopTheDeal}    1s    ${windowScroll}    ${btnAddToCart}
    Click PDP Shop The Deal TCs
    [Teardown]    Tear Down

Apps > PDP > Bundle Deals > Set Bundle (Different products) - QA-9259
    [Tags]    QA-9259
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Ring - Video Doorbel
    Click Product From Title    Ring - Video Doorbell 3 Faceplate - Night Sky
    Verify Text On Screen Scroll Android    SAVE R    30s    ${windowScroll}    ${btnAddToCart}
    Verify Text On Screen Scroll iOS    SAVE R    30s    ${windowScroll}    ${btnAddToCart}
    Swipe Up    ${windowScroll}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Bundle Price    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Bundle Price    1s
    Click Add Bundle To Cart No Scroll Android
    Click Add Bundle To Cart iOS
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Items Added To Cart    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    items added to Cart    30s
    Verify Element On Screen    ${btnGoToCart}    1s
    [Teardown]    Tear Down

Apps > PDP > Unboxed Deals > Primary Unboxed - QA-1983
    [Tags]    QA-1983
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Keychron K8 Walnu
    Click Product From Title    Keychron K8 Walnut Wood Keyboard Palm Rest
    Verify Text On Screen Scroll Android    No extended supplier warranty    30s    ${windowScroll}    ${btnAddToCart}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Returned & shop soiled products    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Quality checked by Takealot    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Backed by our 6 month Takealot warranty    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    UNBOXED DEAL    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Unboxed stock available    1s
    Verify Text On Screen Scroll iOS    No extended supplier warranty    30s    ${windowScroll}    ${btnAddToCart}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Returned & shop soiled products    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Quality checked by Takealot    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Backed by our 6 month Takealot warranty    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    UNBOXED DEAL    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Unboxed stock available    1s
    Click Add To Cart
    Verify Element On Screen    ${btnGoToCart}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Item Added To Cart    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Item added to Cart    1s
    Click Back Android
    Click Go To Cart iOS
    Click Home iOS
    Click Add To Cart
#    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    You asked for 2 but we only have 1 available    30s
#    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    You asked for 2 but we only have 1 available    30s
    [Teardown]    Tear Down

Apps > PDP > Unboxed Deals > Unboxed Offers - QA-1984
    [Tags]    QA-1984
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Unboxed Dea
    Click Product from API
    Verify Text On Screen Scroll Android    Unboxed Deals    30s    ${windowScroll}    ${btnAddToCart}
    Verify Text On Screen Scroll iOS    Unboxed Deals    30s    ${windowScroll}    ${btnAddToCart}
    Click PDP What Is This No Scroll Android
    Click PDP What Is This iOS
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Returned & shop soiled products    5s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Quality checked by Takealot    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Backed by our 6 month Takealot warranty    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    No extended supplier warranty    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    What is this?    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Returned & shop soiled products    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Quality checked by Takealot    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Backed by our 6 month Takealot warranty    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    No extended supplier warranty    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    What is this?    1s
    Click PDP Warehouse OK
    Click Other Offers Add To Cart No Scroll Android
    Click Other Offers Add To Cart No Scroll iOS
    Verify Element On Screen    ${btnGoToCart}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Item Added To Cart    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Item added to Cart    1s
    Click Back Android
    Click Go To Cart iOS
    Click Home iOS
    Click Other Offers Add To Cart No Scroll Android
    Click Other Offers Add To Cart No Scroll iOS
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    You asked for 2 but we only have 1 available    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    You asked for 2 but we only have 1 available    30s
    [Teardown]    Tear Down

Apps > PDP > Unboxed Deals > Primary Unboxed > Variants - QA-1985
    [Tags]    QA-1985
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Dog Days Cherries Sweatshir
    Click Product From Title    Dog Days Crowns Sweatshirts Blue
    Click Product Variant From Name    S
    Verify Text On Screen Scroll Android    Unboxed Deals    30s    ${windowScroll}    ${btnAddToCart}
    Verify Text On Screen Scroll iOS    Unboxed Deals    30s    ${windowScroll}    ${btnAddToCart}
    Click PDP What Is This No Scroll Android
    Click PDP What Is This iOS
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Returned & shop soiled products    5s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Quality checked by Takealot    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Backed by our 6 month Takealot warranty    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    No extended supplier warranty    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    What is this?    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Returned & shop soiled products    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Quality checked by Takealot    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Backed by our 6 month Takealot warranty    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    No extended supplier warranty    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    What is this?    1s
    Click PDP Warehouse OK
    Click Other Offers Add To Cart No Scroll Android
    Click Other Offers Add To Cart No Scroll iOS
    Verify Element On Screen    ${btnGoToCart}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Item Added To Cart    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Item added to Cart    1s
    Click Back Android
    Click Go To Cart iOS
    Click Home iOS
    Click Other Offers Add To Cart No Scroll Android
    Click Other Offers Add To Cart No Scroll iOS
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    You asked for 2 but we only have 1 available    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    You asked for 2 but we only have 1 available    30s
    [Teardown]    Tear Down

Apps > PDP > Variants > Colour > No show all link - QA-9594
    [Tags]    QA-9594
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Retro Filter Coffee Machine
    Click Product From Title    50's Retro Style - Filter Coffee Machine
    Verify PDP Screen Element Not Exists    ${btnVariantShowMore}
    [Teardown]    Tear Down

Apps > PDP >Bundle Deals > Multi-buy Bundle - QA-1978
    [Tags]    QA-1978
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    Maybelline Fit Me Matte Poreles
    Click Product From Title    Maybelline Fit Me Matte Poreless 356 Warm Coconut
    Verify Text On Screen Scroll Android    Bundle Deals expire when stock runs out    30s    ${windowScroll}    ${btnAddToCart}
    Verify Text On Screen Scroll iOS    Bundle Deals expire when stock runs out    30s    ${windowScroll}    ${btnAddToCart}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Mix and match any    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    eligible products for    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Mix and match any    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    eligible products for    1s
    Click Shop The Deal
    Click Back Android
    Click Back iOS    Maybelline Fit Me Matte Poreless 356 Warm Coconut
    Click Shop The Deal
    Click Product From Title    Teddy Finger Paint - 4 x 100ml
    [Teardown]    Tear Down

Apps > PDP > Other Offers > More than one offer - QA-5166
    [Tags]    QA-5166
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Samsung Galaxy A02
    Click Product From Title    Samsung Galaxy A02 32GB Dual Sim - Blue
    Click PDP Show All Offers
    Verify Product Other Offers from API    Samsung Galaxy A02 32GB Dual Sim - Blue
    Click Back Android
    Click Back iOS    icon cross
    Click PDP Show All Offers No Scroll
    Click Other Offer Sellers Add To Cart
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Item Added To Cart    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Item added to Cart    30s
    Verify Element On Screen    ${btnGoToCart}    5s
    [Teardown]    Tear Down

Apps > PDP > Variants > Colour - QA-1977
    [Tags]    QA-1977    QA-9771
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Luxurious suede microfibre fleece
    Click Variant Product from API
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Select a colour    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Select a colour    30s
    Swipe Up    ${windowScroll}
    Click Show All Colours
    Verify Product Variant Colour With ShowAll From API
    Swipe Down    ${windowScroll}
    Click Product Variant Colour with ShowAll From API
    Click Add To Cart
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Item Added To Cart    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Item added to Cart    30s
    [Teardown]    Tear Down

Apps > PDP > Variants > Size - QA-9592
    [Tags]    QA-9592
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    jean
    Click Variant Product from API
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Select a size    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Select a size    30s
    Swipe Up    ${windowScroll}
    Verify Product Variant Size From API
    Click Product Variant From API
    Click Add To Cart
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Item Added To Cart    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Item added to Cart    30s
    [Teardown]    Tear Down

Apps > PDP > Variants > Colour & Size - QA-9595
    [Tags]    QA-9595
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    shirts for me
    Click Variant Product from API
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Select a colour    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Select a colour    30s
    Swipe Up    ${windowScroll}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Select a size    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Select a size    30s
    Click Product Variant Colour From API
    Verify Element On Screen Not    ${btnAddToCart}    2s
    Verify Element On Screen Not    ${btnAddWishlist}    2s
    Click Product Variant Colour Size From API
    Click Add To Cart
    [Teardown]    Tear Down

Apps > PDP > Policy list > Hassle-free Exchanges and Returns for 30 Days - QA-2015
    [Tags]    QA-2015
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Speaker
    Click Product from API
    Click Exchange And Returns
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Hassle-Free Exchanges & Returns for 30 Days    5s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Returns    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    If you are not completely satisfied, simply return the items to us in their original condition and packaging within 30 days of receipt and we will issue a credit which can be used to place a new order    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Exchanges (Fashion, sportswear and shoes only)    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    The item must be unworn and unused (other than trials) with the original tags still attached. Packaging should be returned in an undamaged condition with the item    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    When does this policy not apply    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    If the item is    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    older than 30 days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    opened, unsealed, used or missing any accessories    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    a digital product such as an eBook, electronic voucher, gaming code or other digital downloads    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    an audio or video recording or computer software that has been unsealed    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    a newspaper, periodical or magazine    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    a foodstuff, beverage, or other product intended for everyday consumption    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    a nursing or maternity product that has been unsealed, including (but not limited to) breast pumps, bottles, formula, maternity underwear, nappies and wipes    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    a beauty product or fragrance which has been used    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    a product which has been personalised or made to your specifications    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Find out more about    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Hassle-Free Exchanges & Returns for 30 Days    5s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Returns    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    If you are not completely satisfied, simply return the items to us in their original condition and packaging within 30 days of receipt and we will issue a credit which can be used to place a new order    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Exchanges (Fashion, sportswear and shoes only)    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    The item must be unworn and unused (other than trials) with the original tags still attached. Packaging should be returned in an undamaged condition with the item    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    When does this policy not apply    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    If the item is    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    older than 30 days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    opened, unsealed, used or missing any accessories    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    a digital product such as an eBook, electronic voucher, gaming code or other digital downloads    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    an audio or video recording or computer software that has been unsealed    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    a newspaper, periodical or magazine    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    a foodstuff, beverage, or other product intended for everyday consumption    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    a nursing or maternity product that has been unsealed, including (but not limited to) breast pumps, bottles, formula, maternity underwear, nappies and wipes    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    a beauty product or fragrance which has been used    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    a product which has been personalised or made to your specifications    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Find out more about    1s
    [Teardown]    Tear Down

Apps > PDP > Policy list > Warranty Types > Non-Returnable - QA-2019
    [Tags]    QA-2019
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Airtim
    Click Variant Product from API
    Verify Element On Screen    ${btnPDPSelectOption}    30s
    Swipe Up    ${windowScroll}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Non-Returnable    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Non-Returnable    30s
    Click Search Icon
    Search Product    Vouche
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    30s
    Swipe Up    ${windowScroll}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Non-Returnable    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Non-Returnable    30s
    Click Search Icon
    Search Product    johny wal
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    30s
    Swipe Up    ${windowScroll}
    Click Non Refundable
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    No warranty at all, except for delivery damages (if applicable). Digital products will be supported, but no refunds possible    5s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    No warranty at all, except for delivery damages (if applicable). Digital products will be supported, but no refunds possible    5s
    [Teardown]    Tear Down

Apps > PDP > Sold by - QA-2024
    [Tags]    QA-2024
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    glass
    Click First Product from API
    Click Seller Name
    Click Product Seller Deals
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    ${query_result_FirstProductBrand}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    ${query_result_FirstProductBrand}    30s
    [Teardown]    Tear Down

Apps > PDP > Main Product Details > Product Title and Sub-title - QA-2040
    [Tags]    QA-2040
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Get Product Subtitle from PLID
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    ${query_result_CartProductSubTitle}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    ${query_result_CartProductSubTitle}    30s
    Click Search Icon
    Search Product    book
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    By    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    by    30s
    Verify Text On Screen Scroll    et al    5s    ${windowScroll}    ${btnProductSearchFilter}
    Click Product from API
    Get Product Subtitle from PLID
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    ${query_result_CartProductSubTitle}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    ${query_result_CartProductSubTitle}    30s
    Get Product Author from PLID
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    ${query_result_CartProductAuthor}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    ${query_result_CartProductAuthor}    30s
    [Teardown]    Tear Down

Apps > PDP > Main Product Details > Product Info - QA-2038
    [Tags]    QA-2038
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click PDP Description Show More
    Click PDP Description Show More
    Click Back Android
    Click Back iOS    icon cross
    Swipe Up    ${windowScroll}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Brand    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Warranty    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    What's in the box    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Barcode    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Brand    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Warranty    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    What's in the box    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Barcode    1s
    Click Product Brand from API
    Verify Element On Screen    ${btnProductSearchFilter}    30s
    [Teardown]    Tear Down

Apps > PDP > When Do I get it? > When Do I Get It? Message - QA-2022
    [Tags]    QA-2022
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    30s
    Swipe Up    ${windowScroll}
    Click PDP When Do I Get
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    When do I get it?    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Our picking, packing and delivery is linked to what you order, where you want it delivered and how you choose to pay, so delivery times can vary. Estimates are provided below to help you shop, but always check your order’s Estimated Delivery Date during checkout for the most accurate delivery information    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Standard Delivery    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Cape Town, Johannesburg, Pretoria    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Regional Area    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Remote Area    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    2-5 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    2-6 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    3-7 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Premium Delivery Options    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Same Day Delivery    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Express Delivery    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Saturday Delivery    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Sunday Delivery    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Same Day between 3pm - 7pm    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Next Working Day between 7am - 7pm    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Saturday between 11am - 7pm    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Sunday between 11am - 7pm    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Pay before 11am weekdays    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Pay before 11:59pm previous day    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Pay before 11:59pm Friday    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Pay before 11:00am Saturday    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Collections    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Cape Town warehouse    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Pickup Point: Cape Town, Johannesburg, Pretoria    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Pickup Point: Regional Area    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Pickup Point: Remote Area    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    1-4 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    2-5 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    2-6 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    3-7 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Collection times vary, please wait for your Ready to Collect email before visiting the pickup point    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    When do I get it?    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Our picking, packing and delivery is linked to what you order, where you want it delivered and how you choose to pay, so delivery times can vary. Estimates are provided below to help you shop, but always check your order’s Estimated Delivery Date during checkout for the most accurate delivery information    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Standard Delivery    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Cape Town, Johannesburg, Pretoria    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Regional Area    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Remote Area    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    2-5 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    2-6 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    3-7 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Premium Delivery Options    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Same Day Delivery    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Express Delivery    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Saturday Delivery    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Sunday Delivery    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Same Day between 3pm - 7pm    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Next Working Day between 7am - 7pm    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Saturday between 11am - 7pm    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Sunday between 11am - 7pm    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Pay before 11am weekdays    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Pay before 11:59pm previous day    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Pay before 11:59pm Friday    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Pay before 11:00am Saturday    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Collections    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Cape Town warehouse    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Pickup Point: Cape Town, Johannesburg, Pretoria    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Pickup Point: Regional Area    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Pickup Point: Remote Area    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    1-4 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    2-5 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    2-6 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    3-7 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Collection times vary, please wait for your Ready to Collect email before visiting the pickup point    1s
    Click Back Android
    Click Back iOS    icon cross
    Click Search Icon
    Search Product    Pencil
    Click Leadtime Product from API
    Verify Element On Screen    ${btnAddToCart}    30s
    Swipe Up    ${windowScroll}
    Click PDP When Do I Get
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    When do I get it?    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Our picking, packing and delivery is linked to what you order, where you want it delivered and how you choose to pay, so delivery times can vary. Estimates are provided below to help you shop, but always check your order’s Estimated Delivery Date during checkout for the most accurate delivery information    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Standard Delivery    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Cape Town, Johannesburg & Pretoria Delivery Time    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Regional Area Delivery Time    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Remote Area Delivery Time    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Shipped in 3-5 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Shipped in 5-7 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Shipped in 7-10 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Shipped in 10-15 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Shipped in 15-20 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    1-2 weeks    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    2-3 weeks    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    3-4 weeks    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    3-5 weeks    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    2-4 weeks    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Collections    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Shipped in 3-5 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Shipped in 5-7 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Shipped in 7-10 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Shipped in 10-15 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Shipped in 15-20 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Shipping time indicates how long it takes a product to reach our warehouse from our supplier    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Delivery estimates include shipping times    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    When do I get it?    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Our picking, packing and delivery is linked to what you order, where you want it delivered and how you choose to pay, so delivery times can vary. Estimates are provided below to help you shop, but always check your order’s Estimated Delivery Date during checkout for the most accurate delivery information    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Standard Delivery    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Cape Town, Johannesburg & Pretoria Delivery Time    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Regional Area Delivery Time    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Remote Area Delivery Time    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Shipped in 3-5 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Shipped in 5-7 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Shipped in 7-10 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Shipped in 10-15 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Shipped in 15-20 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    1-2 weeks    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    2-3 weeks    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    3-4 weeks    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    3-5 weeks    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    2-4 weeks    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Collections    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Shipped in 3-5 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Shipped in 5-7 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Shipped in 7-10 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Shipped in 10-15 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Shipped in 15-20 working days    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Shipping time indicates how long it takes a product to reach our warehouse from our supplier    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Delivery estimates include shipping times    1s
    Click Back Android
    Click Back iOS    icon cross
    Click Search Icon
    Search Product    Vouche
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    30s
    Swipe Up    ${windowScroll}
    Click PDP When Do I Get
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    When do I get it?    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Gift vouchers are delivered via email to the recipient as soon as payment has been approved    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    When do I get it?    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Gift vouchers are delivered via email to the recipient as soon as payment has been approved    1s
    [Teardown]    Tear Down

Apps > PDP > Buy Box > Price Range - QA-2026
    [Tags]    QA-2026
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    jeans for w
    Click Variant Product from API
    Click Product Variant From API
    Verify Element On Screen    ${btnAddToCart}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Price: R    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Price: R    1s
    Click Search Icon
    Search Product    Shirts
    Click Variant Product from API
    Click Product Variant Colour From API
    Check Text On Screen Not    Price: R
    Click Product Variant Colour Size From API
    Verify Element On Screen    ${btnAddToCart}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Price: R    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Price: R    1s
    [Teardown]    Tear Down

Apps > PDP > Buy Box > MobiCred - QA-2029
    [Tags]    QA-2029
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Fridg
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    30s
    Click PDP Credit Info
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Can I buy this on credit?    5s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Yes. If you pay with Mobicred, you can repay the full amount in monthly instalments, instead of all at once    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    The On Credit amount shown is based on 12 monthly repayments (including interest charged at 17.5%* per year and excluding Mobicred's set-up and service fees)    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Once you have a Mobicred account, simply select Mobicred as your payment option when you checkout    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Don't have a Mobicred account yet?    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Before you add an item to your cart, you'll need to apply for a Mobicred account via the Mobicred website    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Please note    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Your Mobicred application will be processed in 1 business day once all required documents have been submitted    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Annual interest subject to change    1s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Apply to Mobicred now    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Can I buy this on credit?    5s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Yes. If you pay with Mobicred, you can repay the full amount in monthly instalments, instead of all at once    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    The On Credit amount shown is based on 12 monthly repayments (including interest charged at 17.5%* per year and excluding Mobicred's set-up and service fees)    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Once you have a Mobicred account, simply select Mobicred as your payment option when you checkout    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Don't have a Mobicred account yet?    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Before you add an item to your cart, you'll need to apply for a Mobicred account via the Mobicred website    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Please note    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Your Mobicred application will be processed in 1 business day once all required documents have been submitted    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Annual interest subject to change    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Apply to Mobicred now    1s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Jeans for Wo
    Click Variant Product from API
    Verify Element On Screen    ${btnPDPSelectOption}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    On Credit: R    2s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    / month    2s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Apply to Mobicred now    2s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    / month    2s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    airtim
    Click Variant Product from API
    Verify Element On Screen    ${btnPDPSelectOption}    30s
    Check Text On Screen Not    On Credit
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    iphone 12
    Click Product from API
    Verify Element On Screen    ${btnPDPSelectOption}    30s
    Check Text On Screen Not    On Credit
    [Teardown]    Tear Down

Apps > PDP > Buy Box > Add to Cart - QA-2032
    [Tags]    QA-2032
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Item added to Cart    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    ${query_result_CartProduct}    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Item Added to Cart    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    ${query_result_CartProduct}    1s
    Get Product Subtitle from PLID
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    ${query_result_CartProductSubTitle}    1s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    ${query_result_CartProductSubTitle}    1s
    Verify Element On Screen    ${btnGoToCart}    30s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Dying Light 2
    Click Product From Title    Dying Light 2: Stay Human (PS5)
    Verify Element On Screen    ${btnPDPPreOrder}    30s
    Click Search Icon
    Search Product    eBook
    Click Product from API
    Check Text On Screen Not    Customers Also Bought
    [Teardown]    Tear Down

Apps > PDP > Buy Box > Add to Wishlist - QA-2035
    [Tags]    QA-2035
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    blu-ray disc
    Click Product From Title    Perfect Storm - (Import Blu-ray Disc)
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    This Disc requires a Blu-ray player    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    This Disc requires a Blu-ray player    30s
    Click Search Icon
    Search Product    walking dead season
    Click Product From Title    Walking Dead Season 4 - (Region A Import Blu-ray Disc)
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    This Blu-ray disc requires a suitable Blu-ray player that has the ability to play multi region discs    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    This Blu-ray disc requires a suitable Blu-ray player that has the ability to play multi region discs    30s
    [Teardown]    Tear Down

Apps > PDP > Notification Banner > Pre - Order , Login , Write A Review - QA-2036
    [Tags]    QA-2036
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Dying Light 2
    Click Product From Title    Dying Light 2: Stay Human (PS5)
    Click Add Pre Order To Cart
    Verify Element On Screen    ${btnGoToCart}    30s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Pre-order items must be purchased in separate orders (1 order for each pre-order item)    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Pre-order items must be purchased in separate orders (1 order for each pre-order item)    30s
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
    Search Product    pencil
    Click Product from API
    Click PDP Write Review
    Click Review Rating
    Enter Review Message    Auto Test
    Click Review Submit
    Verify Text On Screen    Thank you for your review    30s
    [Teardown]    Tear Down

Apps > PDP> In Stock > Stock & Stock Status Possibilities ( ALL) - QA-1986
    [Tags]    QA-1986
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    Pencil
    Click In Stock Product from API
    Click In Stock JHB
    Verify Text On Screen    This item is in stock in our Johannesburg warehouse and can be shipped from there    5s
    Click In Stock Close
    Click In Stock CPT
    Verify Text On Screen    This item is in stock in our Cape Town warehouse and can be shipped from there. You can also collect it yourself from our warehouse during the week or over weekends    5s
    Click In Stock Close
    Click Search Icon
    Search Product    Johnny Wal
    Click In Stock Product from API
    Click In Stock JHB
    Verify Text On Screen    This item is in stock in our Johannesburg warehouse and can be shipped from there    5s
    Click In Stock Close
    Click In Stock CPT
    Verify Text On Screen    This item is in stock in our Cape Town warehouse and can be shipped from there. You can also collect it yourself from our warehouse during the week or over weekends    5s
    Click In Stock Close
    Click Search Icon
    Search Product    Pencil
    Click Leadtime Product from API
    Verify Text On Screen    Ships in    30s
    Verify Text On Screen    work days    2s
    Click Search Icon
    Search Product    airtim
    Click Variant Product from API
    Click Product Variant From API
    Verify Text On Screen    Available Now    30s
    Click Search Icon
    Search Product    Dying Light 2
    Click Product From Title    Dying Light 2: Stay Human (PS5)
    Verify Text On Screen    Pre-order: Ships    30s
    [Teardown]    Tear Down

Apps > PDP > Customers Also Bought - QA-2008
    [Tags]    QA-2008
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Verify Text On Screen Scroll    Customers Also Bought    30s    ${windowScroll}    ${btnAddToCart}
    Get Product CABT Detail    0
    Verify Text On Screen    ${query_result_CABTProductTitle}    5s
    Verify Text On Screen    ${query_result_CABTProductPrice}    5s
    Get Product CABT Detail    1
    Verify Text On Screen    ${query_result_CABTProductTitle}    5s
    Verify Text On Screen    ${query_result_CABTProductPrice}    5s
    [Teardown]    Tear Down

Apps > PDP > Policy list > Hassle-free Exchanges and Returns for 30 Days (Not eligible) - QA-9731
    [Tags]    QA-9731
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    airtim
    Click Variant Product from API
    Verify Element On Screen    ${lnkPDPSelectOption}    30s
    Check Text On Screen Not    Hassle-Free Exchanges & Returns for 30 Days
    Click Search Icon
    Search Product    johnny wal
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    30s
    Check Text On Screen Not    Hassle-Free Exchanges & Returns for 30 Days
    [Teardown]    Tear Down

Apps > PDP > Policy list > Not For Sale to Persons Under the Age of 18 (Not eligible) - QA-9754
    [Tags]    QA-9754
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    airtim
    Click Variant Product from API
    Verify Element On Screen    ${lnkPDPSelectOption}    30s
    Check Text On Screen Not    Not For Sale to Persons Under the Age of 18
    Click Search Icon
    Search Product    pencil
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    30s
    Check Text On Screen Not    Not For Sale to Persons Under the Age of 18
    [Teardown]    Tear Down

Apps > PDP > Notification Banner > Limited Stock - QA-9758
    [Tags]    QA-9758
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click In Stock Product from API
    Click Add To Cart
    Click Go To Cart
    Change Cart Quantity Android    10
    Change Cart Quantity Android    14
    Change Cart Quantity Android    18
    Change Cart Quantity Android    22
    Change Cart Quantity Android    26
    Verify Text On Screen    You've attempted to order more stock than currently available at our warehouse (current stock    10s
    Verify Text On Screen    The products will need to be ordered from our supplier. If you'd rather not wait for the extra stock to arrive from the supplier, please update the quantity accordingly    1s
    [Teardown]    Tear Down

Apps > PDP > Policy list > Not Eligible for Cash on Delivery - QA-9298
    [Tags]    QA-9298
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    airtim
    Click Variant Product from API
    Verify Element On Screen    ${lnkPDPSelectOption}    30s
    Check Text On Screen Not    Eligible for Cash on Delivery
    Click Search Icon
    Search Product    iPhone 12 pro ma
    Click Product from API
    Verify Element On Screen    ${lnkPDPSelectOption}    30s
    Check Text On Screen Not    Eligible for Cash on Delivery
    [Teardown]    Tear Down

Apps > PDP > Variants > Sold out - QA-9593
    [Tags]    QA-9593
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    shirts for me
    Click Variant Product from API
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Select a colour    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Select a colour    30s
    Swipe Up    ${windowScroll}
    Click Product Variant Colour Size From API
    Click Product Variant Disabled Colour From API
    Verify Element On Screen Not    ${btnAddToCart}    2s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    jeans for wo
    Click Variant Product from API
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Select a size    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Select a size    30s
    Swipe Up    ${windowScroll}
    Click Product Variant Disabled Size From API
    Verify Element On Screen Not    ${btnAddToCart}    2s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    shirts for me
    Click Variant Product from API
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Select a colour    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Select a colour    30s
    Click Product Variant Colour From API
    Verify Element On Screen    ${btnAddToCart}    30s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    jeans for wo
    Click Variant Product from API
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Select a colour    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Select a colour    30s
    Click Product Variant Size From API
    Verify Element On Screen    ${btnAddToCart}    30s
    [Teardown]    Tear Down

Apps > PDP > Buy Box > Add to Wishlist - QA-2033
    [Tags]    QA-2033
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Wishlist
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
    Click Add To Wishlist Only
    Verify Text On Screen    Item added to AutoTestWishlist    10s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    30s
    Long Press    ${btnAddWishlist}
    Verify Text On Screen    Add to List    10s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Pen
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    30s
    Long Press    ${btnAddWishlist}
    Verify Text On Screen    Add to List    10s
    Click Option Wish List
    Click Option AutoTestWishlist
    Click Save Wishlist
    Verify Text On Screen    Item added to multiple lists    10s
    Close Application
    Start Application
    Click Home
    Click Wishlist Nav Bar
    Click Create Wishlist Only
    Click Save Wishlist
    Verify Text On Screen    Please enter a list name    10s
    Enter Wishlist Custom Name    AbcdefghijklmnopqrstuvwxyzAbcdefghijklmnopqrstuvwxyz
    Click Save Wishlist
    Verify Text On Screen    Maximum 50 characters    10s
    Enter Wishlist Custom Name    AutoTestWishlist
    Click Save Wishlist
    Verify Text On Screen    AutoTestWishlist already exists    10s
    Close Application
    Start Application
    Clear Environment
    Create Wishlists
    Click Home
    Click Wishlist Nav Bar
    Click Create Wishlist
    Verify Text On Screen    Limit reached    20s
    Verify Text On Screen    You can not create more than 25 lists    2s
    [Teardown]    Tear Down
