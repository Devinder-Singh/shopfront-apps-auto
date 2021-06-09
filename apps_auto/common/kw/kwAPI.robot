*** Settings ***
Resource          ../config/defaultConfig.robot
Library           Collections
Library           REST
Library           String

*** Variables ***
${cart_URL}       http://tal-test-data-service.test-automation-platform.env/remove_products_in_cart
${cart_Body}      { "email": "${G_EMAIL}", "password": "t@ke@!ot1234", "customer_id": "4933518", "env": "master.env" }

${wishlist_URL}    http://tal-test-data-service.test-automation-platform.env/clear_customer_wishlists
${wishlist_Body}    { "namespace": "master", "customer_id":4933518, "email": "${G_EMAIL}", "password": "t@ke@!ot1234" }

${wishlist_Del_URL}    http://tal-test-data-service.test-automation-platform.env/delete_customer_wishlists
${wishlist_Del_Body}    { "namespace": "master", "customer_id":7974729, "email": "${G_EMAIL}", "password": "t@ke@!ot1234" }

${address_URL}    http://tal-test-data-service.test-automation-platform.env/clear_add_customer_addresses
${address_Body}    { "email": "take2Automation+201905213934@gmail.com", "password": "t@ke@!ot1234", "customer_id":4933518, "namespace": "master", "add_default_address":true, "addresses": [{"address_type": "residential", "city": "Cape Town", "contact_number": "0820000000", "suburb": "Green Point", "street": "12 Ridge Way", "postal_code": "8005", "recipient": "Test", "province": "Western Cape", "latitude":-33.9379687, "longitude":18.5006588, "verification_channel": "DESKTOP"}] }
${address_Body_Business}    { "email": "take2Automation+201905213934@gmail.com", "password": "t@ke@!ot1234", "customer_id":4933518, "namespace": "master", "add_default_address":true, "addresses": [{"address_type": "business", "city": "Cape Town", "contact_number": "0820000001", "suburb": "Green Point", "street": "12 Ridge Way", "postal_code": "8005", "recipient": "Test", "province": "Western Cape", "latitude":-33.9379687, "longitude":18.5006588, "verification_channel": "DESKTOP"}] }

${voucher_URL}    http://tal-test-data-service.test-automation-platform.env/execute_query_voucher_service
${voucher_Body}    { "host": "voucher_service", "query": "select VoucherCode, VoucherAmount, DateCreated, DateExpired, DateUsed from vouchers where VoucherAmount > 60 and DateExpired > '2021-05-18' and DateUsed is null limit 1" }

${items_URL}    https://api.takealot.com/rest/v-1-10-0/customers/4933405/cart/items
${items_Body}    {"products":[{"id":94086375, "quantity":1, "enhancedEcommerceAddToCart":{"ecommerce":{"add":{"products":[{"category":"Office & Stationery/Stationery/Student Supplies/Bags & Cases/Pencil Bags", "dimension2":94086375, "name":"SOKHO Christian Inspired Fur Gifting Pencil Bag", "dimension1":null, "price":159, "variant":null, "id":"PLID69598180", "position":0, "brand":"SOKHO", "quantity":1}]}, "currencyCode":"ZAR"}, "event":"addToCart"}}]}
${items_Body_liquor}    {"products":[{"id":52489529,"quantity":1,"enhancedEcommerceAddToCart":{"ecommerce":{"add":{"products":[{"id":"PLID40900528","name":"Johnnie Walker - Black Scotch Whisky - 750ml","brand":"Johnnie Walker","category":"Home & Kitchen/Liquor/Whiskey, Gin & Spirits/Whiskey","price":350,"quantity":1,"position":0,"variant":null,"dimension1":null,"dimension2":52489529}]},"currencyCode":"ZAR"},"event":"addToCart"}}]}
${items_Body_heavy}    {"products":[{"id":82691929,"quantity":1,"enhancedEcommerceAddToCart":{"ecommerce":{"add":{"products":[{"id":"PLID53766361","name":"Hisense - 161 Litre Net Fridge - Titanium Silver","brand":"Hisense","category":"Home & Kitchen/Large Appliances/Fridges & Freezers/Fridges","price":3499,"quantity":1,"position":0,"variant":null,"dimension1":null,"dimension2":82691929}]},"currencyCode":"ZAR"},"event":"addToCart"}}]}
${items_Body_tv}    {"products":[{"id":87365581,"quantity":1,"enhancedEcommerceAddToCart":{"ecommerce":{"add":{"products":[{"id":"PLID54855390","name":"ECCO 32\\" LED HD Ready TV LH32","brand":"ECCO","category":"TV, Audio & Video/TV's","price":2399,"quantity":1,"position":0,"variant":null,"dimension1":null,"dimension2":87365581}]},"currencyCode":"ZAR"},"event":"addToCart"}}]}

${items_URL_Delete}    https://api.takealot.com/rest/v-1-10-0/customers/4933405/cart/items
${items_Body_Delete_any}    {"products":[{"id":94086375}]}


${envMaster}    http://api.master.env
${envProd}    https://api.takealot.com


*** Keywords ***
Clear Environment
    Get Customer ID
    Clear Cart
    Delete Wishlist
    Clear Wishlist
#    Clear Address

Get Customer ID
    ${token_URL}=    Set Variable    http://tal-test-data-service.master.env/login/tokens
    ${token_BODY}=    Set Variable    { "email": "${G_EMAIL}", "password": "t@ke@!ot1234", "remember_me": true}

    Post    ${token_URL}    ${token_BODY}
    Integer    response status    200

    ${query_result}=    Output    $.customer_id
    Set Global Variable    ${query_customer_id}    ${query_result}
    Output    ${query_customer_id}
    [return]    ${query_result}

Clear Cart
    ${cart_Body}=    Set Variable    { "email": "${G_EMAIL}", "password": "t@ke@!ot1234", "customer_id": "${query_customer_id}", "env": "master.env" }
    Post    ${cart_URL}    ${cart_Body}
    Integer    response status    200

Clear Wishlist
    ${wishlist_Body}=    Set Variable    { "namespace": "master", "customer_id":${query_customer_id}, "email": "${G_EMAIL}", "password": "t@ke@!ot1234" }
    Post    ${wishlist_URL}    ${wishlist_Body}
    Integer    response status    200

Delete Wishlist
    ${wishlist_Del_Body}=    Set Variable    { "namespace": "master", "customer_id":${query_customer_id}, "email": "${G_EMAIL}", "password": "t@ke@!ot1234" }
    Post    ${wishlist_Del_URL}    ${wishlist_Del_Body}
    Integer    response status    200

Clear Address
    Post    ${address_URL}    ${address_Body}
    Integer    response status    200

Clear Address Business
    Post    ${address_URL}    ${address_Body_Business}
    Integer    response status    200

Get First Search Option
    [Arguments]    ${search}
    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-10-0/search/autocomplete?query=${search}
    Get    ${search_URL}
    Integer    response status    200
    ${query_result}=    Output    $.suggestions[0].query
    Set Global Variable    ${query_result_search}    ${query_result}
    ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='android'    xpath=//*[@text="${query_result}"]    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label == "${query_result}"`]
    [return]    ${searchResult}

Verify Product Added to Cart
    Verify Text On Screen    ${query_result_CartProduct}    30s

Get Product to Add To Cart
    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.sections.products.results[*].product_views.buybox_summary.is_add_to_cart_available
    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{results}
        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label == "${results_title}[${index}]"`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${results_title}[${index}]']
        Set Global Variable    ${query_result_CartProduct}    ${results_title}[${index}]
        Exit For Loop If    '${result}'=='True'
        ${index}=    Evaluate    ${index} + 1
    END

    [return]    ${searchResult}

Get Scroll Product to Add To Cart

    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.sections.products.results[*].product_views.buybox_summary.is_add_to_cart_available
    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{results}
        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label == "${results_title}[${index}]"`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${results_title}[${index}]']
        Set Global Variable    ${query_result_CartProduct}    ${results_title}[${index}]
        Exit For Loop If    '${result}'=='True' and ${index} > 4
        ${index}=    Evaluate    ${index} + 1
    END

    [return]    ${searchResult}

Get Product Listing Price
    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.sections.products.results[*].product_views.buybox_summary.listing_price
    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{results}
        Output    ${result}
        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label == "${results_title}[${index}]"`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${results_title}[${index}]']
        Set Global Variable    ${query_result_CartListingProduct}    ${result}
        Exit For Loop If    '${result}'!='None'
        ${index}=    Evaluate    ${index} + 1
    END

    [return]    ${searchResult}

Get Product List Review
    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
    Get    ${search_URL}
    Integer    response status    200

    @{results_review}=    Output    $.sections.products.results[*].product_views.core.reviews
    @{results_rating}=    Output    $.sections.products.results[*].product_views.core.star_rating

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{results_review}
        Set Global Variable    ${query_result_Review}    ${result}
        Set Global Variable    ${query_result_Rating}    ${results_rating}[${index}]
        Exit For Loop If    '${result}'!='None'
        ${index}=    Evaluate    ${index} + 1
    END

    [return]    ${query_result_Review}

Get Product Auto to Add To Cart
    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?sort=Relevance&department_slug=pool-garden&category_slug=maintenance-and-service-25855
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.sections.products.results[*].product_views.buybox_summary.is_add_to_cart_available
    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{results}
        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    id=${results_title}[${index}]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${results_title}[${index}]']
        Set Global Variable    ${query_result_CartProduct}    ${results_title}[${index}]
        Exit For Loop If    '${result}'=='True'
        ${index}=    Evaluate    ${index} + 1
    END

    [return]    ${searchResult}

Verify Product Search App Only Deals Badge

    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
    Output    ${search_URL}
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.sections.products.results[*].product_views.badges.entries[0].type
    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title

    ${index}=    Set Variable    0
    ${searchResult}=    Set Variable    ''
    FOR    ${result}    IN    @{results}
        ${searchResult}=    Set Variable    ${results_title}

        Run Keyword If
            ...    '${result}'=='image'
            ...    Exit For Loop

        ${searchResult}=    Set Variable    ''
        ${index}=    Evaluate    ${index} + 1
    END
    Should Be True    '${results}[${index}]'=='image'
    [Return]    ${searchResult}

Get Variant Product to Add To Cart
    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.sections.products.results[*].product_views.buybox_summary.is_shop_all_options_available
    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{results}
        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label CONTAINS "${results_title}[${index}]"`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text="${results_title}[${index}]"]
        Exit For Loop If    '${result}'=='True'
        ${index}=    Evaluate    ${index} + 1
    END
    ${results_variant}=    Output    $.sections.products.results[${index}].product_views.enhanced_ecommerce_add_to_cart.ecommerce.add.products[0].id
    Set Global Variable    ${query_result_CartProductPLID}    ${results_variant}
    Set Global Variable    ${query_result_CartProduct}    ${results_title}[${index}]

    [return]    ${searchResult}

Get Price Range Product to Add To Cart
    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.sections.products.results[*].product_views.buybox_summary.prices
    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{results}
        ${cnt}=    Get length    ${result}

        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label CONTAINS "${results_title}[${index}]"`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text="${results_title}[${index}]"]

        Run Keyword If
            ...    ${cnt}==2
            ...    Exit For Loop

        Exit For Loop If    '${result}'=='True'
        ${index}=    Evaluate    ${index} + 1
    END
    ${results_Price_Upper}=    Output    $.sections.products.results[${index}].product_views.buybox_summary.prices[1]
    ${results_Price_Lower}=    Output    $.sections.products.results[${index}].product_views.buybox_summary.prices[0]
    Set Global Variable    ${query_result_RangeCartProductPriceU}    ${results_Price_Upper}
    Set Global Variable    ${query_result_RangeCartProductPriceL}    ${results_Price_Lower}

    ${result_Price}=    Output    $.sections.products.results[${index}].product_views.enhanced_ecommerce_add_to_cart.ecommerce.add.products[0].price
    Should Be True    ${results_Price_Upper}==${result_Price}

    [return]    ${searchResult}

Get Product Variant

    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-10-0/product-details/${query_result_CartProductPLID}?platform=desktop
    Output    ${search_URL}
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.variants.selectors[0].options[*].is_enabled
    @{results_variant}=    Output    $.variants.selectors[0].options[*].link_data.fields.size

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{results}
        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label CONTAINS "${results_variant}[${index}]"`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${results_variant}[${index}]']
        Exit For Loop If    '${result}'=='True'
        ${index}=    Evaluate    ${index} + 1
    END
    Set Global Variable    ${query_result_CartProductVariant}    ${results_variant}[${index}]

    [return]    ${searchResult}

Get First Product From API
    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
    Get    ${search_URL}
    Integer    response status    200

    ${results_title}=    Output    $.sections.products.results[0].product_views.core.title
    ${results_brand}=    Output    $.sections.products.results[0].product_views.core.brand
    Set Global Variable    ${query_result_FirstProduct}    ${results_title}
    Set Global Variable    ${query_result_FirstProductBrand}    ${results_brand}

    ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    id=${results_title}    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${results_title}']

    [return]    ${searchResult}

Get Product with Leadtime

    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.sections.products.results[*].product_views.stock_availability_summary.is_leadtime
    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{results}
        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    id=${results_title}[${index}]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text="${results_title}[${index}]"]
        Exit For Loop If    '${result}'=='True'
        ${index}=    Evaluate    ${index} + 1
    END

    [return]    ${searchResult}

Get Product in JHB only

    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.sections.products.results[*].product_views.stock_availability_summary.distribution_centres
    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title

    ${index}=    Set Variable    0
    ${searchResult}=    Set Variable    ''
    FOR    ${result}    IN    @{results}
        ${cnt}=    Get length    ${result}
        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    id=${results_title}[${index}]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text="${results_title}[${index}]"]

        Run Keyword If
            ...    ${cnt}==1
            ...    Run Keyword If
                   ...    '${result}[0][text]'=='JHB'
                   ...    Exit For Loop

        ${searchResult}=    Set Variable    ''
        ${index}=    Evaluate    ${index} + 1
    END

    [return]    ${searchResult}

Get Product in CPT only

    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.sections.products.results[*].product_views.stock_availability_summary.distribution_centres
    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title

    ${index}=    Set Variable    0
    ${searchResult}=    Set Variable    ''
    FOR    ${result}    IN    @{results}
        ${cnt}=    Get length    ${result}
        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    id=${results_title}[${index}]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text="${results_title}[${index}]"]

        Run Keyword If
            ...    ${cnt}==1
            ...    Run Keyword If
                   ...    '${result}[0][text]'=='CPT'
                   ...    Exit For Loop

        ${searchResult}=    Set Variable    ''
        ${index}=    Evaluate    ${index} + 1
    END

    [return]    ${searchResult}

Get Product in JHB and CPT

    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.sections.products.results[*].product_views.stock_availability_summary.distribution_centres
    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title

    ${index}=    Set Variable    0
    ${searchResult}=    Set Variable    ''
    FOR    ${result}    IN    @{results}
        ${cnt}=    Get length    ${result}
        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    id=${results_title}[${index}]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text="${results_title}[${index}]"]

        Run Keyword If
            ...    ${cnt}==2
            ...    Exit For Loop

        ${searchResult}=    Set Variable    ''
        ${index}=    Evaluate    ${index} + 1
    END
    [Return]    ${searchResult}

Get Payment Voucher Number
    Post    ${voucher_URL}    ${voucher_Body}
    Integer    response status    200
    ${query_result}=    Output    $[0].VoucherCode
    Set Global Variable    ${query_result_voucher}    ${query_result}
    [return]    ${query_result_voucher}

Get First Sort Product
    [Arguments]    ${sort}

    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}&sort=${sort}
    Get    ${search_URL}
    Integer    response status    200

    @{verifySearchResult}=    Output    $.sections.products.results
    ${cnt}=    Get length    ${verifySearchResult}

    Return From Keyword If    ${cnt} < 1    0

    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title
    ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    id=${results_title}[0]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text="${results_title}[0]"]        

    [Return]    ${searchResult}

Get Third Sort Product
    [Arguments]    ${sort}

    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}&sort=${sort}
    Get    ${search_URL}
    Integer    response status    200

    @{verifySearchResult}=    Output    $.sections.products.results
    ${cnt}=    Get length    ${verifySearchResult}

    Return From Keyword If    ${cnt} < 2    0

    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title
    ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    id=${results_title}[1]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text="${results_title}[1]"]

    [Return]    ${searchResult}

Get First Filter Product
    [Arguments]    ${filter}

    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?filter=${filter}&qsearch=${query_result_search}
    Get    ${search_URL}
    Integer    response status    200

    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title
    ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    id=${results_title}[0]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text="${results_title}[0]"]

    [Return]    ${searchResult}

Get Third Filter Product
    [Arguments]    ${filter}

    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?filter=${filter}&qsearch=${query_result_search}
    Get    ${search_URL}
    Integer    response status    200

    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title
    ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    id=${results_title}[2]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text="${results_title}[2]"]

    [Return]    ${searchResult}

Post Login Takealot
    [Arguments]    ${email}    ${password}

#    Post    ${voucher_URL}    ${voucher_Body}
#    Integer    response status    200
#    ${query_result}=    Output    $[0].VoucherCode

#    Set Global Variable    ${query_result_bearer}    ${query_result}
#    Set Global Variable    ${query_result_csrf}    ${query_result}

Post Add Product To Cart
    [Arguments]    ${item}

    ${query_result_bearer}=    Set Variable    "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjQ5MzM0MDUsImp0aSI6IjUzN2FkYzdlYTAzYzk3MmRmNzU2YTlmOGIzYWI3MjBjIiwiZXhwIjoxNjE5MzQwODIyLCJjc3JmX3Rva2VuIjoiOWIwNWJmZTciLCJ0cmFja2luZ19pZCI6ImRiMWE2ODVhLTYwZDgtNDUwYy1hYjcxLTk5NzMzM2FjZGM2MyIsImlzcyI6ImFwaS50YWtlYWxvdC5jb20ifQ.TOqsdTeES0CAMMaHR7GSb-Blbw6hnvQ9oUkiR4jnoc8"
    ${query_result_csrf}=    Set Variable    "9b05bfe7"

    Set Headers    {"authorization": ${query_result_bearer}}
    Set Headers    {"x-csrf-token": ${query_result_csrf}}
    Set Headers    {"x-tal-platform": "www.takealot.com"}

    Run Keyword If    '${item}'=='any'    Post    ${items_URL}    ${items_Body}
    Run Keyword If    '${item}'=='tv'    Post    ${items_URL}    ${items_Body_tv}
    Run Keyword If    '${item}'=='liquor'    Post    ${items_URL}    ${items_Body_liquor}
    Run Keyword If    '${item}'=='heavy'    Post    ${items_URL}    ${items_Body_heavy}
    Integer    response status    200

Post Remove Product To Cart
    ${query_result_bearer}=    Set Variable    "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjQ5MzM0MDUsImp0aSI6IjUzN2FkYzdlYTAzYzk3MmRmNzU2YTlmOGIzYWI3MjBjIiwiZXhwIjoxNjE5MzQwODIyLCJjc3JmX3Rva2VuIjoiOWIwNWJmZTciLCJ0cmFja2luZ19pZCI6ImRiMWE2ODVhLTYwZDgtNDUwYy1hYjcxLTk5NzMzM2FjZGM2MyIsImlzcyI6ImFwaS50YWtlYWxvdC5jb20ifQ.TOqsdTeES0CAMMaHR7GSb-Blbw6hnvQ9oUkiR4jnoc8"
    ${query_result_csrf}=    Set Variable    "9b05bfe7"

    Set Headers    {"authorization": ${query_result_bearer}}
    Set Headers    {"x-csrf-token": ${query_result_csrf}}
    Set Headers    {"x-tal-platform": "www.takealot.com"}

#    Delete    ${items_URL}    ${items_Body_Delete_any}
    Delete    ${items_URL_Delete}
    Integer    response status    200

Get Product Daily Deals
    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-9-0/productlines/search?daily_deals_rows=100&filter=Available:true&filter=Promotions:62621
    Get    ${search_URL}
    Integer    response status    200

    ${results_title}=    Output    $.results.productlines[0].title
    Set Global Variable    ${query_result_DailyDealProduct}    ${results_title}

    [return]    ${results_title}

Get Product Deals Third Tab Slug
    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-9-0/promotions?is_bundle_included=True
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.response[*].group_id

    ${index}=    Set Variable    0
    ${searchResult}=    Set Variable    ''
    FOR    ${result}    IN    @{results}
        ${chkTextSuccess}=    Run Keyword And Return Status    Output    $.response[${index}].slug

        ${results_title}=    Set Variable    ''
        ${results_title}=    Set Variable If    '${result}'=='4' and ${chkTextSuccess}==True    ${result}
        ${searchResult}=    Run Keyword If    '${results_title}'=='4'    Output    $.response[${index}].promotion_id

        Run Keyword If
            ...    '${searchResult}'!='None'
            ...    Exit For Loop

        ${searchResult}=    Set Variable    ''
        ${index}=    Evaluate    ${index} + 1
    END
    Should Be True    '${results}[${index}]'=='4'
    Set Global Variable    ${query_result_DailyDealsSlug}    ${searchResult}
    [Return]    ${searchResult}

Get Product Deals Third Tab Name
    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-9-0/promotions?is_bundle_included=True
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.response[*].group_id

    ${index}=    Set Variable    0
    ${searchResult}=    Set Variable    ''
    FOR    ${result}    IN    @{results}
        ${chkTextSuccess}=    Run Keyword And Return Status    Output    $.response[${index}].slug

        ${results_title}=    Set Variable    ''
        ${results_title}=    Set Variable If    '${result}'=='4' and ${chkTextSuccess}==True    ${result}
        ${searchResult}=    Run Keyword If    '${results_title}'=='4'    Output    $.response[${index}].display_name

        Run Keyword If
            ...    '${searchResult}'!='None'
            ...    Exit For Loop

        ${searchResult}=    Set Variable    ''
        ${index}=    Evaluate    ${index} + 1
    END
    Should Be True    '${results}[${index}]'=='4'

    ${searchResultAndroid}=    Convert To Upper Case    ${searchResult}

    ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='android'    xpath=//*[@text="${searchResultAndroid}"]    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label == "${searchResult}"`]
    Set Global Variable    ${query_result_DealsName}    ${searchResult}

    [Return]    ${searchResult}

Get Product Daily Deals Slug
    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-9-0/promotions?is_bundle_included=True
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.response[*].display_name

    ${index}=    Set Variable    0
    ${searchResult}=    Set Variable    ''
    FOR    ${result}    IN    @{results}
        Output    ${result}
        ${searchResult}=    Run Keyword If    "${result}"=='Daily Deals'    Output    $.response[${index}].promotion_id

        Run Keyword If
            ...    '${searchResult}'!='None'
            ...    Exit For Loop

        ${searchResult}=    Set Variable    ''
        ${index}=    Evaluate    ${index} + 1
    END
    Should Be True    '${results}[${index}]'=='Daily Deals'
    Set Global Variable    ${query_result_DailyDealsSlug}    ${searchResult}
    [Return]    ${searchResult}

Get Product App Only Deals Slug
    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-9-0/promotions?is_bundle_included=True
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.response[*].display_name

    ${index}=    Set Variable    0
    ${searchResult}=    Set Variable    ''
    FOR    ${result}    IN    @{results}
        ${searchResult}=    Run Keyword If    '${result}'=='App Only Deals'    Output    $.response[${index}].promotion_id

        Run Keyword If
            ...    '${searchResult}'!='None'
            ...    Exit For Loop

        ${searchResult}=    Set Variable    ''
        ${index}=    Evaluate    ${index} + 1
    END
    Should Be True    '${results}[${index}]'=='App Only Deals'
    Set Global Variable    ${query_result_DailyDealsSlug}    ${searchResult}
    [Return]    ${searchResult}

Verify Product Search Daily Deals Badge

    ${searchProd} =	Get Substring	${query_result_DailyDealProduct}    0    11
    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${searchProd}
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.sections.products.results[*].product_views.badges.entries[0].type
    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title

    ${index}=    Set Variable    0
    ${searchResult}=    Set Variable    ''
    FOR    ${result}    IN    @{results}
        ${searchResult}=    Set Variable    ${results_title}

        Run Keyword If
            ...    '${result}'=='image'
            ...    Exit For Loop

        ${searchResult}=    Set Variable    ''
        ${index}=    Evaluate    ${index} + 1
    END
    Should Be True    '${results}[${index}]'=='image'
    [Return]    ${searchResult}

Verify Product Search Percent Off Badge

    ${searchProd} =	Get Substring	${query_result_DailyDealProduct}    0    11
    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${searchProd}
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.sections.products.results[*].product_views.badges.entries[1].type
    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title

    ${index}=    Set Variable    0
    ${searchResult}=    Set Variable    ''
    FOR    ${result}    IN    @{results}
        ${searchResult}=    Set Variable    ${results_title}

        Run Keyword If
            ...    '${result}'=='saving'
            ...    Exit For Loop

        ${searchResult}=    Set Variable    ''
        ${index}=    Evaluate    ${index} + 1
    END
    Should Be True    '${results}[${index}]'=='saving'
    [Return]    ${searchResult}

Verify Product Search Sales Badge

    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-9-0/productlines/search?sort=BestSelling%20Descending&rows=100&daily_deals_rows=100&start=0&detail=listing&filter=Available:true&filter=Promotions:${query_result_ThirdTabSlug}
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.results.productlines[*].views.badges.entries[0].type
    @{results_title}=    Output    $.results.productlines[*].title

    ${index}=    Set Variable    0
    ${searchResult}=    Set Variable    ''
    FOR    ${result}    IN    @{results}
        ${searchResult}=    Set Variable    ${results_title}

        Run Keyword If
            ...    '${result}'=='image'
            ...    Exit For Loop

        ${searchResult}=    Set Variable    ''
        ${index}=    Evaluate    ${index} + 1
    END
    Should Be True    '${results}[${index}]'=='image'
    [Return]    ${searchResult}

Get Product Search App Only Deals Badge

    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-9-0/productlines/search?sort=BestSelling%20Descending&rows=100&daily_deals_rows=100&start=0&detail=listing&filter=Available:true&filter=Promotions:${query_result_AppOnlyDealsSlug}
    Get    ${search_URL}
    Integer    response status    200

    ${results_title}=    Output    $.results.productlines[0].title

    ${searchResult}=    Set Variable    ${results_title}

    [Return]    ${searchResult}

Verify Product Search Daily Deals Image

    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-9-0/productlines/search?sort=BestSelling%20Descending&rows=100&daily_deals_rows=100&start=0&detail=listing&filter=Available:true&filter=Promotions:${query_result_DailyDealsSlug}
    Get    ${search_URL}
    Integer    response status    200

    ${results}=    Output    $.results.productlines[0].cover.url
    ${cnt}=    Get length    ${results}

    Should Be True    ${cnt}>0
    [Return]    ${results}

Verify Product Daily Deals Badge
    Get Product Daily Deals
    Verify Product Search Daily Deals Badge

Verify Product Percent Off Badge
    Get Product Daily Deals
    Verify Product Search Percent Off Badge

Verify Sales Badge
    Get Product Deals Third Tab Slug
    Verify Product Search Sales Badge

Verify App Only Badge
    Get Product App Only Deals Slug
    ${txtProduct}=    Get Product Search App Only Deals Badge
    ${txtProduct}=    Get Substring    ${txtProduct}    0    11
    Get First Search Option    ${txtProduct}
    Verify Product Search App Only Deals Badge

Verify Daily Deals Image
    Get Product Daily Deals Slug
    Verify Product Search Daily Deals Image

Get Product Filter
    [Arguments]    ${option}

    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-9-0/productlines/search?sort=BestSelling%20Descending&rows=100&daily_deals_rows=100&start=0&detail=listing&filter=Available:true&filter=Promotions:${option}
    Get    ${search_URL}
    Integer    response status    200

    ${result_filter}=    Output    $.results.facets[0].entries[0].filter
    ${results_title}=    Output    $.results.facets[0].entries[0].name

    ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    id=${results_title}    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${results_title}']
    Set Global Variable    ${query_result_FilterType}    ${result_filter}

    [return]    ${searchResult}

Get Filter Product to Add To Cart
    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-9-0/productlines/search?daily_deals_rows=100&start=0&filter=Available:true&filter=Promotions:${query_result_DailyDealsSlug}&filter=${query_result_FilterType}
    ${apiResult}=    Get Api Request    ${search_URL}

    ${objDict}=    Convert To Dictionary    ${apiResult}
    ${objResults}=    Get From Dictionary    ${objDict}    results

    @{objProdLines}=    Get From Dictionary    ${objResults}    productlines

    ${searchResult}=    Set Variable    '0'
    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{objProdLines}
        ${objVariant}=    Get From Dictionary    ${result}    has_variants
        ${objTitle}=    Get From Dictionary    ${result}    title

        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label == "${objTitle}"`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text="${objTitle}"]
        Set Global Variable    ${query_result_CartFilterProduct}    ${objTitle}
        Exit For Loop If    '${objVariant}'=='False'

        ${searchResult}=    Set Variable    '0'
        ${index}=    Evaluate    ${index} + 1
    END
#    Should Be True    '${searchResult}'!='0'
    [return]    ${searchResult}

Get Daily Deals Product to Add To Cart
    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-9-0/productlines/search?rows=100&filter=Available:true&filter=Promotions:${query_result_DailyDealsSlug}
    ${apiResult}=    Get Api Request    ${search_URL}

    ${objDict}=    Convert To Dictionary    ${apiResult}
    ${objResults}=    Get From Dictionary    ${objDict}    results

    @{objProdLines}=    Get From Dictionary    ${objResults}    productlines

    ${searchResult}=    Set Variable    0
    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{objProdLines}
        ${objVariant}=    Get From Dictionary    ${result}    has_variants
        ${objTitle}=    Get From Dictionary    ${result}    title

        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label == '${objTitle}'`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${objTitle}']
        Set Global Variable    ${query_result_CartFilterProduct}    ${objTitle}
        Exit For Loop If    '${objVariant}'=='False'

        ${searchResult}=    Set Variable    0
        ${index}=    Evaluate    ${index} + 1
    END
#    Should Be True    '${searchResult}'!='0'
    [return]    ${searchResult}
