*** Settings ***
Default Tags      search
Resource          ../common/config/defaultConfig.robot
Library    OperatingSystem

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
    Verify Text On Screen Android    FREE DELIVERY    30s
    Verify Text On Screen iOS    FREE DELIVERY    30s
    Close Application
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
    Verify Text On Screen Android    What does this mean?    30s
    Verify Text On Screen Android    You can pay for this item with cash when your driver delivers your order    1s
    Verify Text On Screen Android    How does it work?    1s
    Verify Text On Screen Android    Select Cash On Delivery (COD) as your payment option when you checkout. Have the exact amount of cash ready for our friendly delivery driver when he arrives    1s
    Verify Text On Screen Android    Is COD available on every order?    1s
    Verify Text On Screen Android    No. We don’t offer COD for    1s
    Verify Text On Screen Android    Digital products (e.g. eBooks, gift vouchers or airtime)    1s
    Verify Text On Screen Android    Customised products (e.g. a sports shirt printed with a personalised name)    1s
    Verify Text On Screen Android    Orders totalling R5,000 or more    1s
    Verify Text On Screen Android    Orders being collected from Takealot pickup points    1s
    Verify Text On Screen Android    Delivery addresses falling outside of our Takealot Delivery Team area    1s
    Verify Text On Screen Android    If your order is eligible for COD, it will be displayed as a payment option at checkout    1s
    Verify Text On Screen iOS    What does this mean?    30s
    Verify Text On Screen iOS    You can pay for this item with cash when your driver delivers your order    1s
    Verify Text On Screen iOS    How does it work?    1s
    Verify Text On Screen iOS    Select Cash On Delivery (COD) as your payment option when you checkout. Have the exact amount of cash ready for our friendly delivery driver when he arrives    1s
    Verify Text On Screen iOS    Is COD available on every order?    1s
    Verify Text On Screen iOS    No. We don’t offer COD for    1s
    Verify Text On Screen iOS    Digital products (e.g. eBooks, gift vouchers or airtime)    1s
    Verify Text On Screen iOS    Customised products (e.g. a sports shirt printed with a personalised name)    1s
    Verify Text On Screen iOS    Orders totalling R5,000 or more    1s
    Verify Text On Screen iOS    Orders being collected from Takealot pickup points    1s
    Verify Text On Screen iOS    Delivery addresses falling outside of our Takealot Delivery Team area    1s
    Verify Text On Screen iOS    If your order is eligible for COD, it will be displayed as a payment option at checkout    1s
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
    Verify Text On Screen Android    FREE DELIVERY    30s
    Verify Text On Screen iOS    FREE DELIVERY    30s
    [Teardown]    Tear Down

Apps > PDP > Other Offers - QA-1974
    [Tags]    data    QA-1974
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    Unboxed Dea
    Click Product From Title    Xiaomi Mi Lite Smartwatch
    Click PDP JHB
    Verify Text On Screen Android    This item is in stock in our Johannesburg warehouse and can be shipped from there    30s
    Verify Text On Screen Android    JHB    1s
    Verify Text On Screen iOS    This item is in stock in our Johannesburg warehouse and can be shipped from there    30s
    Click PDP Warehouse OK
    Click PDP CPT
    Verify Text On Screen Android    This item is in stock in our Cape Town warehouse and can be shipped from there. You can also collect it yourself from our warehouse during the week or over weekends    30s
    Verify Text On Screen Android    CPT    1s
    Verify Text On Screen iOS    This item is in stock in our Cape Town warehouse and can be shipped from there. You can also collect it yourself from our warehouse during the week or over weekends    30s
    [Teardown]    Tear Down

Apps > PDP > Buy Box > List Price - QA-2025
    [Tags]    QA-2025
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    sale
    Click Product from API
    Click PDP List Price
    Verify Text On Screen Android    This is our List Price. Find out what this means in our Terms & Conditions    30s
    Verify Text On Screen Android    Our List Price    1s
    Verify Text On Screen iOS    This is our List Price. Find out what this means in our Terms & Conditions    30s
    Verify Text On Screen iOS    Our List Price    1s
    Click PDP List Price Cancel
    Click Search Icon
    Search Product    jean
    Click Variant Product from API
    Click Product Variant From API
    Click PDP List Price
    Verify Text On Screen Android    This is our List Price. Find out what this means in our Terms & Conditions    30s
    Verify Text On Screen Android    Our List Price    1s
    Verify Text On Screen iOS    This is our List Price. Find out what this means in our Terms & Conditions    30s
    Verify Text On Screen iOS    Our List Price    1s
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
    Verify Text On Screen Android    Unboxed Deals    1s
    Verify Text On Screen Android    WHAT IS THIS?    1s
#    Verify Text On Screen Scroll iOS    Fulfilled by Takealot    30s    ${windowScroll}    ${btnAddToCart}
    Verify Text On Screen Scroll iOS    Unboxed Deals    30s    ${windowScroll}    ${btnAddToCart}
    Verify Text On Screen iOS    Unboxed Deal    1s
    Verify Text On Screen iOS    What is this?    1s
    Click Other Offers Add To Cart No Scroll Android
    Click Other Offers Add To Cart iOS
    Verify Text On Screen Android    Item Added To Cart    30s
    Verify Text On Screen Android    ${query_result_CartProduct}    1s
    Verify Text On Screen iOS    Item added to Cart    30s
    Verify Text On Screen iOS    ${query_result_CartProduct}    1s
    Verify Element On Screen    ${btnGoToCart}    30s
    Click Back Android
    Click Go To Cart iOS
    Click Home iOS
    Click Other Offers Add To Cart No Scroll Android
    Click Other Offers Add To Cart No Scroll iOS
    Verify Text On Screen Android    You asked for 2 but we only have 1 available    30s
#    Verify Text On Screen iOS    You asked for 2 but we only have 1 available    30s
    [Teardown]    Tear Down

Apps > PDP > Bundle Deals > Set Bundle (Same product) - QA-1976
    [Tags]    data    QA-1976
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Ring - Video Doorbel
    Click Product From Title    Ring - Video Doorbell 3 Faceplate - Night Sky
    Verify Text On Screen Scroll Android    SAVE R    30s    ${windowScroll}    ${btnAddToCart}
    Verify Text On Screen Scroll iOS    SAVE R    30s    ${windowScroll}    ${btnAddToCart}
    Swipe Up    ${windowScroll}
    Verify Text On Screen Android    Bundle Price    1s
    Verify Text On Screen iOS    Bundle Price    1s
    Click Add Bundle To Cart No Scroll Android
    Click Add Bundle To Cart iOS
    Verify Text On Screen Android    Items Added To Cart    30s
    Verify Text On Screen iOS    items added to Cart    30s
    Verify Element On Screen    ${btnGoToCart}    1s
    [Teardown]    Tear Down

Apps > PDP > Bundle Deals > “Show All Deals” Screen - QA-1982
    [Tags]    data    QA-1982
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Maybelline Fit Me Matte Poreles
    Click Product From Title    Maybelline Fit Me Matte Poreless 356 Warm Coconut
    Verify Text On Screen Scroll Android    Bundle Deals expire when stock runs out    30s    ${windowScroll}    ${btnAddToCart}
    Verify Text On Screen Scroll iOS    Bundle Deals expire when stock runs out    30s    ${windowScroll}    ${btnAddToCart}
    Verify Text On Screen Android    Mix and match any    1s
    Verify Text On Screen Android    eligible products for    1s
    Verify Text On Screen iOS    Mix and match any    1s
    Verify Text On Screen iOS    eligible products for    1s
    Verify Element On Screen Android    ${lblPDPShopTheDeal}    1s
    Verify Element On Screen Scroll iOS    ${lblPDPShopTheDeal}    1s    ${windowScroll}    ${btnAddToCart}
    Click PDP Shop The Deal TCs
    [Teardown]    Tear Down

Apps > PDP > Bundle Deals > Set Bundle (Different products) - QA-9259
    [Tags]    data    QA-9259
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Ring - Video Doorbel
    Click Product From Title    Ring - Video Doorbell 3 Faceplate - Night Sky
    Verify Text On Screen Scroll Android    SAVE R    30s    ${windowScroll}    ${btnAddToCart}
    Verify Text On Screen Scroll iOS    SAVE R    30s    ${windowScroll}    ${btnAddToCart}
    Swipe Up    ${windowScroll}
    Verify Text On Screen Android    Bundle Price    1s
    Verify Text On Screen iOS    Bundle Price    1s
    Click Add Bundle To Cart No Scroll Android
    Click Add Bundle To Cart iOS
    Verify Text On Screen Android    Items Added To Cart    30s
    Verify Text On Screen iOS    items added to Cart    30s
    Verify Element On Screen    ${btnGoToCart}    1s
    [Teardown]    Tear Down

Apps > PDP > Unboxed Deals > Primary Unboxed - QA-1983
    [Tags]    data    QA-1983
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Keychron K8 Walnu
    Click Product From Title    Keychron K8 Walnut Wood Keyboard Palm Rest
    Verify Text On Screen Scroll Android    No extended supplier warranty    30s    ${windowScroll}    ${btnAddToCart}
    Verify Text On Screen Android    Returned & shop soiled products    1s
    Verify Text On Screen Android    Quality checked by Takealot    1s
    Verify Text On Screen Android    Backed by our 6 month Takealot warranty    1s
    Verify Text On Screen Android    UNBOXED DEAL    1s
    Verify Text On Screen Android    Unboxed stock available    1s
    Verify Text On Screen Scroll iOS    No extended supplier warranty    30s    ${windowScroll}    ${btnAddToCart}
    Verify Text On Screen iOS    Returned & shop soiled products    1s
    Verify Text On Screen iOS    Quality checked by Takealot    1s
    Verify Text On Screen iOS    Backed by our 6 month Takealot warranty    1s
    Verify Text On Screen iOS    UNBOXED DEAL    1s
    Verify Text On Screen iOS    Unboxed stock available    1s
    Click Add To Cart
    Verify Element On Screen    ${btnGoToCart}    30s
    Verify Text On Screen Android    Item Added To Cart    1s
    Verify Text On Screen iOS    Item added to Cart    1s
    Click Back Android
    Click Go To Cart iOS
    Click Home iOS
    Click Add To Cart
#    Verify Text On Screen Android    You asked for 2 but we only have 1 available    30s
#    Verify Text On Screen iOS    You asked for 2 but we only have 1 available    30s
    [Teardown]    Tear Down

Apps > PDP > Unboxed Deals > Unboxed Offers - QA-1984
    [Tags]    data    QA-1984
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Unboxed Dea
    Click Product from API
    Verify Text On Screen Scroll Android    Unboxed Deals    30s    ${windowScroll}    ${btnAddToCart}
    Verify Text On Screen Scroll iOS    Unboxed Deals    30s    ${windowScroll}    ${btnAddToCart}
    Click PDP What Is This No Scroll Android
    Click PDP What Is This iOS
    Verify Text On Screen Android    Returned & shop soiled products    5s
    Verify Text On Screen Android    Quality checked by Takealot    1s
    Verify Text On Screen Android    Backed by our 6 month Takealot warranty    1s
    Verify Text On Screen Android    No extended supplier warranty    1s
    Verify Text On Screen Android    What is this?    1s
    Verify Text On Screen iOS    Returned & shop soiled products    30s
    Verify Text On Screen iOS    Quality checked by Takealot    1s
    Verify Text On Screen iOS    Backed by our 6 month Takealot warranty    1s
    Verify Text On Screen iOS    No extended supplier warranty    1s
    Verify Text On Screen iOS    What is this?    1s
    Click PDP Warehouse OK
    Click Other Offers Add To Cart No Scroll Android
    Click Other Offers Add To Cart No Scroll iOS
    Verify Element On Screen    ${btnGoToCart}    30s
    Verify Text On Screen Android    Item Added To Cart    1s
    Verify Text On Screen iOS    Item added to Cart    1s
    Click Back Android
    Click Go To Cart iOS
    Click Home iOS
    Click Other Offers Add To Cart No Scroll Android
    Click Other Offers Add To Cart No Scroll iOS
    Verify Text On Screen Android    You asked for 2 but we only have 1 available    30s
    Verify Text On Screen iOS    You asked for 2 but we only have 1 available    30s
    [Teardown]    Tear Down

Apps > PDP > Unboxed Deals > Primary Unboxed > Variants - QA-1985
    [Tags]    data    QA-1985
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Dog Days Cherries Sweatshir
    Click Product From Title    Dog Days Crowns Sweatshirts Blue
    Click Product Variant From Name    S
    Verify Text On Screen Scroll Android    Unboxed Deals    30s    ${windowScroll}    ${btnAddToCart}
    Verify Text On Screen Scroll iOS    Unboxed Deals    30s    ${windowScroll}    ${btnAddToCart}
    Click PDP What Is This No Scroll Android
    Click PDP What Is This iOS
    Verify Text On Screen Android    Returned & shop soiled products    5s
    Verify Text On Screen Android    Quality checked by Takealot    1s
    Verify Text On Screen Android    Backed by our 6 month Takealot warranty    1s
    Verify Text On Screen Android    No extended supplier warranty    1s
    Verify Text On Screen Android    What is this?    1s
    Verify Text On Screen iOS    Returned & shop soiled products    30s
    Verify Text On Screen iOS    Quality checked by Takealot    1s
    Verify Text On Screen iOS    Backed by our 6 month Takealot warranty    1s
    Verify Text On Screen iOS    No extended supplier warranty    1s
    Verify Text On Screen iOS    What is this?    1s
    Click PDP Warehouse OK
    Click Other Offers Add To Cart No Scroll Android
    Click Other Offers Add To Cart No Scroll iOS
    Verify Element On Screen    ${btnGoToCart}    30s
    Verify Text On Screen Android    Item Added To Cart    1s
    Verify Text On Screen iOS    Item added to Cart    1s
    Click Back Android
    Click Go To Cart iOS
    Click Home iOS
    Click Other Offers Add To Cart No Scroll Android
    Click Other Offers Add To Cart No Scroll iOS
    Verify Text On Screen Android    You asked for 2 but we only have 1 available    30s
    Verify Text On Screen iOS    You asked for 2 but we only have 1 available    30s
    [Teardown]    Tear Down

Apps > PDP > Variants > Colour > No show all link - QA-9594
    [Tags]    data    QA-9594
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Retro Filter Coffee Machine
    Click Product From Title    50's Retro Style - Filter Coffee Machine
    Verify PDP Screen Element Not Exists    ${btnVariantShowMore}
    [Teardown]    Tear Down

Apps > PDP >Bundle Deals > Multi-buy Bundle - QA-1978
    [Tags]    data    QA-1978
    [Setup]    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    Maybelline Fit Me Matte Poreles
    Click Product From Title    Maybelline Fit Me Matte Poreless 356 Warm Coconut
    Verify Text On Screen Scroll Android    Bundle Deals expire when stock runs out    30s    ${windowScroll}    ${btnAddToCart}
    Verify Text On Screen Scroll iOS    Bundle Deals expire when stock runs out    30s    ${windowScroll}    ${btnAddToCart}
    Verify Text On Screen Android    Mix and match any    1s
    Verify Text On Screen Android    eligible products for    1s
    Verify Text On Screen iOS    Mix and match any    1s
    Verify Text On Screen iOS    eligible products for    1s
    Click Shop The Deal
    Click Back Android
    Click Back iOS    Maybelline Fit Me Matte Poreless 356 Warm Coconut
    Click Shop The Deal
    Click Product From Title    Teddy Finger Paint - 4 x 100ml
    [Teardown]    Tear Down

Apps > PDP > Other Offers > More than one offer - QA-5166
    [Tags]    data    QA-5166
    [Setup]    Start Application    ${False}
    Clear Environment
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
    Verify Text On Screen Android    Item Added To Cart    30s
    Verify Text On Screen iOS    Item added to Cart    30s
    Verify Element On Screen    ${btnGoToCart}    5s
    [Teardown]    Tear Down

Apps > PDP > Variants > Colour - QA-1977
    [Tags]    data    QA-1977    QA-9771
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Luxurious suede microfibre fleece
    Click Variant Product from API
    Verify Text On Screen Android    Select a colour    30s
    Verify Text On Screen iOS    Select a colour    30s
    Swipe Up    ${windowScroll}
    Click Show All Colours
    Verify Product Variant Colour With ShowAll From API
    Swipe Down    ${windowScroll}
    Click Product Variant Colour with ShowAll From API
    Click Add To Cart
    Verify Text On Screen Android    Item Added To Cart    30s
    Verify Text On Screen iOS    Item added to Cart    30s
    [Teardown]    Tear Down

Apps > PDP > Variants > Size - QA-9592
    [Tags]    data    QA-9592
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Home
    Click Search Home
    Search Product    jean
    Click Variant Product from API
    Verify Text On Screen Android    Select a size    30s
    Verify Text On Screen iOS    Select a size    30s
    Swipe Up    ${windowScroll}
    Verify Product Variant Size From API
    Click Product Variant From API
    Click Add To Cart
    Verify Text On Screen Android    Item Added To Cart    30s
    Verify Text On Screen iOS    Item added to Cart    30s
    [Teardown]    Tear Down

Apps > PDP > Variants > Colour & Size - QA-9595
    [Tags]    data    QA-9595
    [Setup]    Start Application    ${False}
    Clear Environment
    Click Home
    Click Search Home
    Search Product    shirts for me
    Click Variant Product from API
    Verify Text On Screen Android    Select a colour    30s
    Verify Text On Screen iOS    Select a colour    30s
    Swipe Up    ${windowScroll}
    Verify Text On Screen Android    Select a size    30s
    Verify Text On Screen iOS    Select a size    30s
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
    Verify Text On Screen Android    Hassle-Free Exchanges & Returns for 30 Days    5s
    Verify Text On Screen Android    Returns    1s
    Verify Text On Screen Android    If you are not completely satisfied, simply return the items to us in their original condition and packaging within 30 days of receipt and we will issue a credit which can be used to place a new order    1s
    Verify Text On Screen Android    Exchanges (Fashion, sportswear and shoes only)    1s
    Verify Text On Screen Android    The item must be unworn and unused (other than trials) with the original tags still attached. Packaging should be returned in an undamaged condition with the item    1s
    Verify Text On Screen Android    When does this policy not apply    1s
    Verify Text On Screen Android    If the item is    1s
    Verify Text On Screen Android    older than 30 days    1s
    Verify Text On Screen Android    opened, unsealed, used or missing any accessories    1s
    Verify Text On Screen Android    a digital product such as an eBook, electronic voucher, gaming code or other digital downloads    1s
    Verify Text On Screen Android    an audio or video recording or computer software that has been unsealed    1s
    Verify Text On Screen Android    a newspaper, periodical or magazine    1s
    Verify Text On Screen Android    a foodstuff, beverage, or other product intended for everyday consumption    1s
    Verify Text On Screen Android    a nursing or maternity product that has been unsealed, including (but not limited to) breast pumps, bottles, formula, maternity underwear, nappies and wipes    1s
    Verify Text On Screen Android    a beauty product or fragrance which has been used    1s
    Verify Text On Screen Android    a product which has been personalised or made to your specifications    1s
    Verify Text On Screen Android    Find out more about    1s
    Verify Text On Screen iOS    Hassle-Free Exchanges & Returns for 30 Days    5s
    Verify Text On Screen iOS    Returns    1s
    Verify Text On Screen iOS    If you are not completely satisfied, simply return the items to us in their original condition and packaging within 30 days of receipt and we will issue a credit which can be used to place a new order    1s
    Verify Text On Screen iOS    Exchanges (Fashion, sportswear and shoes only)    1s
    Verify Text On Screen iOS    The item must be unworn and unused (other than trials) with the original tags still attached. Packaging should be returned in an undamaged condition with the item    1s
    Verify Text On Screen iOS    When does this policy not apply    1s
    Verify Text On Screen iOS    If the item is    1s
    Verify Text On Screen iOS    older than 30 days    1s
    Verify Text On Screen iOS    opened, unsealed, used or missing any accessories    1s
    Verify Text On Screen iOS    a digital product such as an eBook, electronic voucher, gaming code or other digital downloads    1s
    Verify Text On Screen iOS    an audio or video recording or computer software that has been unsealed    1s
    Verify Text On Screen iOS    a newspaper, periodical or magazine    1s
    Verify Text On Screen iOS    a foodstuff, beverage, or other product intended for everyday consumption    1s
    Verify Text On Screen iOS    a nursing or maternity product that has been unsealed, including (but not limited to) breast pumps, bottles, formula, maternity underwear, nappies and wipes    1s
    Verify Text On Screen iOS    a beauty product or fragrance which has been used    1s
    Verify Text On Screen iOS    a product which has been personalised or made to your specifications    1s
    Verify Text On Screen iOS    Find out more about    1s
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
    Verify Text On Screen Android    Non-Returnable    30s
    Verify Text On Screen iOS    Non-Returnable    30s
    Click Search Icon
    Search Product    Vouche
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    30s
    Swipe Up    ${windowScroll}
    Verify Text On Screen Android    Non-Returnable    30s
    Verify Text On Screen iOS    Non-Returnable    30s
    Click Search Icon
    Search Product    johny wal
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    30s
    Swipe Up    ${windowScroll}
    Click Non Refundable
    Verify Text On Screen Android    No warranty at all, except for delivery damages (if applicable). Digital products will be supported, but no refunds possible    5s
    Verify Text On Screen iOS    No warranty at all, except for delivery damages (if applicable). Digital products will be supported, but no refunds possible    5s
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
    Verify Text On Screen Android    ${query_result_FirstProductBrand}    30s
    Verify Text On Screen iOS    ${query_result_FirstProductBrand}    30s
    [Teardown]    Tear Down

Apps > PDP > Main Product Details > Product Title and Sub-title - QA-2040
    [Tags]    QA-2040
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Get Product Subtitle from PLID
    Verify Text On Screen Android    ${query_result_CartProductSubTitle}    30s
    Verify Text On Screen iOS    ${query_result_CartProductSubTitle}    30s
    Click Search Icon
    Search Product    book
    Verify Text On Screen iOS    By    30s
    Verify Text On Screen Android    by    30s
    Verify Text On Screen Scroll    et al    5s    ${windowScroll}    ${btnProductSearchFilter}
    Click Product from API
    Get Product Subtitle from PLID
    Verify Text On Screen Android    ${query_result_CartProductSubTitle}    30s
    Verify Text On Screen iOS    ${query_result_CartProductSubTitle}    30s
    Get Product Author from PLID
    Verify Text On Screen Android    ${query_result_CartProductAuthor}    30s
    Verify Text On Screen iOS    ${query_result_CartProductAuthor}    30s
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
    Verify Text On Screen iOS    Brand    1s
    Verify Text On Screen iOS    Warranty    1s
    Verify Text On Screen iOS    What's in the box    1s
    Verify Text On Screen iOS    Barcode    1s
    Verify Text On Screen Android    Brand    1s
    Verify Text On Screen Android    Warranty    1s
    Verify Text On Screen Android    What's in the box    1s
    Verify Text On Screen Android    Barcode    1s
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
    Verify Text On Screen iOS    When do I get it?    1s
    Verify Text On Screen iOS    Our picking, packing and delivery is linked to what you order, where you want it delivered and how you choose to pay, so delivery times can vary. Estimates are provided below to help you shop, but always check your order’s Estimated Delivery Date during checkout for the most accurate delivery information    1s
    Verify Text On Screen iOS    Standard Delivery    1s
    Verify Text On Screen iOS    Cape Town, Johannesburg, Pretoria    1s
    Verify Text On Screen iOS    Regional Area    1s
    Verify Text On Screen iOS    Remote Area    1s
    Verify Text On Screen iOS    2-5 working days    1s
    Verify Text On Screen iOS    2-6 working days    1s
    Verify Text On Screen iOS    3-7 working days    1s
    Verify Text On Screen iOS    Premium Delivery Options    1s
    Verify Text On Screen iOS    Same Day Delivery    1s
    Verify Text On Screen iOS    Express Delivery    1s
    Verify Text On Screen iOS    Saturday Delivery    1s
    Verify Text On Screen iOS    Sunday Delivery    1s
    Verify Text On Screen iOS    Same Day between 3pm - 7pm    1s
    Verify Text On Screen iOS    Next Working Day between 7am - 7pm    1s
    Verify Text On Screen iOS    Saturday between 11am - 7pm    1s
    Verify Text On Screen iOS    Sunday between 11am - 7pm    1s
    Verify Text On Screen iOS    Pay before 11am weekdays    1s
    Verify Text On Screen iOS    Pay before 11:59pm previous day    1s
    Verify Text On Screen iOS    Pay before 11:59pm Friday    1s
    Verify Text On Screen iOS    Pay before 11:00am Saturday    1s
    Verify Text On Screen iOS    Collections    1s
    Verify Text On Screen iOS    Cape Town warehouse    1s
    Verify Text On Screen iOS    Pickup Point: Cape Town, Johannesburg, Pretoria    1s
    Verify Text On Screen iOS    Pickup Point: Regional Area    1s
    Verify Text On Screen iOS    Pickup Point: Remote Area    1s
    Verify Text On Screen iOS    1-4 working days    1s
    Verify Text On Screen iOS    2-5 working days    1s
    Verify Text On Screen iOS    2-6 working days    1s
    Verify Text On Screen iOS    3-7 working days    1s
    Verify Text On Screen iOS    Collection times vary, please wait for your Ready to Collect email before visiting the pickup point    1s
    Verify Text On Screen Android    When do I get it?    1s
    Verify Text On Screen Android    Our picking, packing and delivery is linked to what you order, where you want it delivered and how you choose to pay, so delivery times can vary. Estimates are provided below to help you shop, but always check your order’s Estimated Delivery Date during checkout for the most accurate delivery information    1s
    Verify Text On Screen Android    Standard Delivery    1s
    Verify Text On Screen Android    Cape Town, Johannesburg, Pretoria    1s
    Verify Text On Screen Android    Regional Area    1s
    Verify Text On Screen Android    Remote Area    1s
    Verify Text On Screen Android    2-5 working days    1s
    Verify Text On Screen Android    2-6 working days    1s
    Verify Text On Screen Android    3-7 working days    1s
    Verify Text On Screen Android    Premium Delivery Options    1s
    Verify Text On Screen Android    Same Day Delivery    1s
    Verify Text On Screen Android    Express Delivery    1s
    Verify Text On Screen Android    Saturday Delivery    1s
    Verify Text On Screen Android    Sunday Delivery    1s
    Verify Text On Screen Android    Same Day between 3pm - 7pm    1s
    Verify Text On Screen Android    Next Working Day between 7am - 7pm    1s
    Verify Text On Screen Android    Saturday between 11am - 7pm    1s
    Verify Text On Screen Android    Sunday between 11am - 7pm    1s
    Verify Text On Screen Android    Pay before 11am weekdays    1s
    Verify Text On Screen Android    Pay before 11:59pm previous day    1s
    Verify Text On Screen Android    Pay before 11:59pm Friday    1s
    Verify Text On Screen Android    Pay before 11:00am Saturday    1s
    Verify Text On Screen Android    Collections    1s
    Verify Text On Screen Android    Cape Town warehouse    1s
    Verify Text On Screen Android    Pickup Point: Cape Town, Johannesburg, Pretoria    1s
    Verify Text On Screen Android    Pickup Point: Regional Area    1s
    Verify Text On Screen Android    Pickup Point: Remote Area    1s
    Verify Text On Screen Android    1-4 working days    1s
    Verify Text On Screen Android    2-5 working days    1s
    Verify Text On Screen Android    2-6 working days    1s
    Verify Text On Screen Android    3-7 working days    1s
    Verify Text On Screen Android    Collection times vary, please wait for your Ready to Collect email before visiting the pickup point    1s
    Click Back Android
    Click Back iOS    icon cross
    Click Search Icon
    Search Product    Pencil
    Click Leadtime Product from API
    Verify Element On Screen    ${btnAddToCart}    30s
    Swipe Up    ${windowScroll}
    Click PDP When Do I Get
    Verify Text On Screen iOS    When do I get it?    1s
    Verify Text On Screen iOS    Our picking, packing and delivery is linked to what you order, where you want it delivered and how you choose to pay, so delivery times can vary. Estimates are provided below to help you shop, but always check your order’s Estimated Delivery Date during checkout for the most accurate delivery information    1s
    Verify Text On Screen iOS    Standard Delivery    1s
    Verify Text On Screen iOS    Cape Town, Johannesburg & Pretoria Delivery Time    1s
    Verify Text On Screen iOS    Regional Area Delivery Time    1s
    Verify Text On Screen iOS    Remote Area Delivery Time    1s
    Verify Text On Screen iOS    Shipped in 3-5 working days    1s
    Verify Text On Screen iOS    Shipped in 5-7 working days    1s
    Verify Text On Screen iOS    Shipped in 7-10 working days    1s
    Verify Text On Screen iOS    Shipped in 10-15 working days    1s
    Verify Text On Screen iOS    Shipped in 15-20 working days    1s
    Verify Text On Screen iOS    1-2 weeks    1s
    Verify Text On Screen iOS    2-3 weeks    1s
    Verify Text On Screen iOS    3-4 weeks    1s
    Verify Text On Screen iOS    3-5 weeks    1s
    Verify Text On Screen iOS    2-4 weeks    1s
    Verify Text On Screen iOS    Collections    1s
    Verify Text On Screen iOS    Shipped in 3-5 working days    1s
    Verify Text On Screen iOS    Shipped in 5-7 working days    1s
    Verify Text On Screen iOS    Shipped in 7-10 working days    1s
    Verify Text On Screen iOS    Shipped in 10-15 working days    1s
    Verify Text On Screen iOS    Shipped in 15-20 working days    1s
    Verify Text On Screen iOS    Shipping time indicates how long it takes a product to reach our warehouse from our supplier    1s
    Verify Text On Screen iOS    Delivery estimates include shipping times    1s
    Verify Text On Screen Android    When do I get it?    1s
    Verify Text On Screen Android    Our picking, packing and delivery is linked to what you order, where you want it delivered and how you choose to pay, so delivery times can vary. Estimates are provided below to help you shop, but always check your order’s Estimated Delivery Date during checkout for the most accurate delivery information    1s
    Verify Text On Screen Android    Standard Delivery    1s
    Verify Text On Screen Android    Cape Town, Johannesburg & Pretoria Delivery Time    1s
    Verify Text On Screen Android    Regional Area Delivery Time    1s
    Verify Text On Screen Android    Remote Area Delivery Time    1s
    Verify Text On Screen Android    Shipped in 3-5 working days    1s
    Verify Text On Screen Android    Shipped in 5-7 working days    1s
    Verify Text On Screen Android    Shipped in 7-10 working days    1s
    Verify Text On Screen Android    Shipped in 10-15 working days    1s
    Verify Text On Screen Android    Shipped in 15-20 working days    1s
    Verify Text On Screen Android    1-2 weeks    1s
    Verify Text On Screen Android    2-3 weeks    1s
    Verify Text On Screen Android    3-4 weeks    1s
    Verify Text On Screen Android    3-5 weeks    1s
    Verify Text On Screen Android    2-4 weeks    1s
    Verify Text On Screen Android    Collections    1s
    Verify Text On Screen Android    Shipped in 3-5 working days    1s
    Verify Text On Screen Android    Shipped in 5-7 working days    1s
    Verify Text On Screen Android    Shipped in 7-10 working days    1s
    Verify Text On Screen Android    Shipped in 10-15 working days    1s
    Verify Text On Screen Android    Shipped in 15-20 working days    1s
    Verify Text On Screen Android    Shipping time indicates how long it takes a product to reach our warehouse from our supplier    1s
    Verify Text On Screen Android    Delivery estimates include shipping times    1s
    Click Back Android
    Click Back iOS    icon cross
    Click Search Icon
    Search Product    Vouche
    Click Product from API
    Verify Element On Screen    ${btnAddToCart}    30s
    Swipe Up    ${windowScroll}
    Click PDP When Do I Get
    Verify Text On Screen iOS    When do I get it?    1s
    Verify Text On Screen iOS    Gift vouchers are delivered via email to the recipient as soon as payment has been approved    1s
    Verify Text On Screen Android    When do I get it?    1s
    Verify Text On Screen Android    Gift vouchers are delivered via email to the recipient as soon as payment has been approved    1s
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
    Verify Text On Screen iOS    Price: R    1s
    Verify Text On Screen Android    Price: R    1s
    Click Search Icon
    Search Product    Shirts
    Click Variant Product from API
    Click Product Variant Colour From API
    Check Text On Screen Not    Price: R
    Click Product Variant Colour Size From API
    Verify Element On Screen    ${btnAddToCart}    30s
    Verify Text On Screen iOS    Price: R    1s
    Verify Text On Screen Android    Price: R    1s
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
    Verify Text On Screen iOS    Can I buy this on credit?    5s
    Verify Text On Screen iOS    Yes. If you pay with Mobicred, you can repay the full amount in monthly instalments, instead of all at once    1s
    Verify Text On Screen iOS    The On Credit amount shown is based on 12 monthly repayments (including interest charged at 17.5%* per year and excluding Mobicred's set-up and service fees)    1s
    Verify Text On Screen iOS    Once you have a Mobicred account, simply select Mobicred as your payment option when you checkout    1s
    Verify Text On Screen iOS    Don't have a Mobicred account yet?    1s
    Verify Text On Screen iOS    Before you add an item to your cart, you'll need to apply for a Mobicred account via the Mobicred website    1s
    Verify Text On Screen iOS    Please note    1s
    Verify Text On Screen iOS    Your Mobicred application will be processed in 1 business day once all required documents have been submitted    1s
    Verify Text On Screen iOS    Annual interest subject to change    1s
    Verify Text On Screen iOS    Apply to Mobicred now    1s
    Verify Text On Screen Android    Can I buy this on credit?    5s
    Verify Text On Screen Android    Yes. If you pay with Mobicred, you can repay the full amount in monthly instalments, instead of all at once    1s
    Verify Text On Screen Android    The On Credit amount shown is based on 12 monthly repayments (including interest charged at 17.5%* per year and excluding Mobicred's set-up and service fees)    1s
    Verify Text On Screen Android    Once you have a Mobicred account, simply select Mobicred as your payment option when you checkout    1s
    Verify Text On Screen Android    Don't have a Mobicred account yet?    1s
    Verify Text On Screen Android    Before you add an item to your cart, you'll need to apply for a Mobicred account via the Mobicred website    1s
    Verify Text On Screen Android    Please note    1s
    Verify Text On Screen Android    Your Mobicred application will be processed in 1 business day once all required documents have been submitted    1s
    Verify Text On Screen Android    Annual interest subject to change    1s
    Verify Text On Screen Android    Apply to Mobicred now    1s
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Jeans for Wo
    Click Variant Product from API
    Verify Element On Screen    ${btnPDPSelectOption}    30s
    Verify Text On Screen iOS    On Credit: R    2s
    Verify Text On Screen iOS    / month    2s
    Verify Text On Screen Android    Apply to Mobicred now    2s
    Verify Text On Screen Android    / month    2s
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
    Verify Text On Screen iOS    Item added to Cart    30s
    Verify Text On Screen iOS    ${query_result_CartProduct}    1s
    Verify Text On Screen Android    Item Added to Cart    30s
    Verify Text On Screen Android    ${query_result_CartProduct}    1s
    Get Product Subtitle from PLID
    Verify Text On Screen iOS    ${query_result_CartProductSubTitle}    1s
    Verify Text On Screen Android    ${query_result_CartProductSubTitle}    1s
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
    Verify Text On Screen iOS    This Disc requires a Blu-ray player    30s
    Verify Text On Screen Android    This Disc requires a Blu-ray player    30s
    Click Search Icon
    Search Product    walking dead season
    Click Product From Title    Walking Dead Season 4 - (Region A Import Blu-ray Disc)
    Verify Text On Screen iOS    This Blu-ray disc requires a suitable Blu-ray player that has the ability to play multi region discs    30s
    Verify Text On Screen Android    This Blu-ray disc requires a suitable Blu-ray player that has the ability to play multi region discs    30s
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
    Verify Text On Screen iOS    Pre-order items must be purchased in separate orders (1 order for each pre-order item)    30s
    Verify Text On Screen Android    Pre-order items must be purchased in separate orders (1 order for each pre-order item)    30s
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
