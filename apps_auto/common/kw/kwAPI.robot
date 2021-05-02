*** Settings ***
Resource          ../config/defaultConfig.robot
Library           Collections
Library           REST


*** Variables ***
${cart_URL}       http://tal-test-data-service.test-automation-platform.env/remove_products_in_cart
${cart_Body}      { "email": "take2Automation+201905213934@gmail.com", "password": "t@ke@!ot1234", "customer_id": "4933518", "env": "master.env" }

${wishlist_URL}    http://tal-test-data-service.test-automation-platform.env/clear_customer_wishlists
${wishlist_Body}    { "namespace": "master", "customer_id":4933518, "email": "take2Automation+201905213934@gmail.com", "password": "t@ke@!ot1234" }

${address_URL}    http://tal-test-data-service.test-automation-platform.env/clear_add_customer_addresses
${address_Body}    { "email": "take2Automation+201905213934@gmail.com", "password": "t@ke@!ot1234", "customer_id":4933518, "namespace": "master", "add_default_address":true, "addresses": [{"address_type": "residential", "city": "Cape Town", "contact_number": "0820000000", "suburb": "Green Point", "street": "12 Ridge Way", "postal_code": "8005", "recipient": "Test", "province": "Western Cape", "latitude":-33.9379687, "longitude":18.5006588, "verification_channel": "DESKTOP"}] }
${address_Body_Business}    { "email": "take2Automation+201905213934@gmail.com", "password": "t@ke@!ot1234", "customer_id":4933518, "namespace": "master", "add_default_address":true, "addresses": [{"address_type": "business", "city": "Cape Town", "contact_number": "0820000001", "suburb": "Green Point", "street": "12 Ridge Way", "postal_code": "8005", "recipient": "Test", "province": "Western Cape", "latitude":-33.9379687, "longitude":18.5006588, "verification_channel": "DESKTOP"}] }

${voucher_URL}    http://tal-test-data-service.test-automation-platform.env/execute_query_voucher_service
${voucher_Body}    { "host": "voucher_service", "query": "select VoucherCode, VoucherAmount, DateCreated, DateExpired, DateUsed from vouchers where VoucherAmount > 60 and DateExpired > '2021-04-10' and DateUsed is null limit 1" }

${items_URL}    https://api.takealot.com/rest/v-1-10-0/customers/4933405/cart/items
${items_Body}    {"products":[{"id":94086375, "quantity":1, "enhancedEcommerceAddToCart":{"ecommerce":{"add":{"products":[{"category":"Office & Stationery/Stationery/Student Supplies/Bags & Cases/Pencil Bags", "dimension2":94086375, "name":"SOKHO Christian Inspired Fur Gifting Pencil Bag", "dimension1":null, "price":159, "variant":null, "id":"PLID69598180", "position":0, "brand":"SOKHO", "quantity":1}]}, "currencyCode":"ZAR"}, "event":"addToCart"}}]}
${items_Body_liquor}    {"products":[{"id":52489529,"quantity":1,"enhancedEcommerceAddToCart":{"ecommerce":{"add":{"products":[{"id":"PLID40900528","name":"Johnnie Walker - Black Scotch Whisky - 750ml","brand":"Johnnie Walker","category":"Home & Kitchen/Liquor/Whiskey, Gin & Spirits/Whiskey","price":350,"quantity":1,"position":0,"variant":null,"dimension1":null,"dimension2":52489529}]},"currencyCode":"ZAR"},"event":"addToCart"}}]}
${items_Body_heavy}    {"products":[{"id":82691929,"quantity":1,"enhancedEcommerceAddToCart":{"ecommerce":{"add":{"products":[{"id":"PLID53766361","name":"Hisense - 161 Litre Net Fridge - Titanium Silver","brand":"Hisense","category":"Home & Kitchen/Large Appliances/Fridges & Freezers/Fridges","price":3499,"quantity":1,"position":0,"variant":null,"dimension1":null,"dimension2":82691929}]},"currencyCode":"ZAR"},"event":"addToCart"}}]}
${items_Body_tv}    {"products":[{"id":87365581,"quantity":1,"enhancedEcommerceAddToCart":{"ecommerce":{"add":{"products":[{"id":"PLID54855390","name":"ECCO 32\\" LED HD Ready TV LH32","brand":"ECCO","category":"TV, Audio & Video/TV's","price":2399,"quantity":1,"position":0,"variant":null,"dimension1":null,"dimension2":87365581}]},"currencyCode":"ZAR"},"event":"addToCart"}}]}

${items_URL_Delete}    https://api.takealot.com/rest/v-1-10-0/customers/4933405/cart/items
${items_Body_Delete_any}    {"products":[{"id":94086375}]}


*** Keywords ***
Clear Environment
    Clear Cart
    Clear Wishlist
#    Clear Address

Clear Cart
    Post    ${cart_URL}    ${cart_Body}
    Integer    response status    200

Clear Wishlist
    Post    ${wishlist_URL}    ${wishlist_Body}
    Integer    response status    200

Clear Address
    Post    ${address_URL}    ${address_Body}
    Integer    response status    200

Clear Address Business
    Post    ${address_URL}    ${address_Body_Business}
    Integer    response status    200

Get First Search Option
    [Arguments]    ${search}
    ${search_URL}=    Set Variable    http://api.master.env/rest/v-1-10-0/search/autocomplete?query=${search}
    Get    ${search_URL}
    Integer    response status    200
    ${query_result}=    Output    $.suggestions[0].query
    Set Global Variable    ${query_result_search}    ${query_result}
    ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='android'    xpath=//*[@text="${query_result}"]    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label == "${query_result}"`]
    [return]    ${searchResult}

Verify Product Added to Cart
    Verify Text On Screen    ${query_result_CartProduct}    30s

Get Product to Add To Cart
    ${search_URL}=    Set Variable    http://api.master.env/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
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

Get Variant Product to Add To Cart
    ${search_URL}=    Set Variable    http://api.master.env/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.sections.products.results[*].product_views.buybox_summary.is_shop_all_options_available
    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{results}
        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    id=${results_title}[${index}]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text="${results_title}[${index}]"]
        Exit For Loop If    '${result}'=='True'
        ${index}=    Evaluate    ${index} + 1
    END

    [return]    ${searchResult}

Get Product with Leadtime

    ${search_URL}=    Set Variable    http://api.master.env/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
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

    ${search_URL}=    Set Variable    http://api.master.env/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
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

    ${search_URL}=    Set Variable    http://api.master.env/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
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

    ${search_URL}=    Set Variable    http://api.master.env/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
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

    ${search_URL}=    Set Variable    http://api.master.env/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}&sort=${sort}
    Get    ${search_URL}
    Integer    response status    200

    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title
    ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    id=${results_title}[0]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text="${results_title}[0]"]

    [Return]    ${searchResult}

Get Fourth Sort Product
    [Arguments]    ${sort}

    ${search_URL}=    Set Variable    http://api.master.env/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}&sort=${sort}
    Get    ${search_URL}
    Integer    response status    200

    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title
    ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    id=${results_title}[3]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text="${results_title}[3]"]

    [Return]    ${searchResult}

Get First Filter Product
    [Arguments]    ${filter}

    ${search_URL}=    Set Variable    http://api.master.env/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?filter=${filter}&qsearch=${query_result_search}
    Get    ${search_URL}
    Integer    response status    200

    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title
    ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    id=${results_title}[0]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text="${results_title}[0]"]

    [Return]    ${searchResult}

Get Fourth Filter Product
    [Arguments]    ${filter}

    ${search_URL}=    Set Variable    http://api.master.env/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?filter=${filter}&qsearch=${query_result_search}
    Get    ${search_URL}
    Integer    response status    200

    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title
    ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    id=${results_title}[3]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text="${results_title}[3]"]

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
