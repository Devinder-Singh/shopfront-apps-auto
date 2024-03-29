*** Settings ***
Resource          ../config/defaultConfig.robot

*** Variables ***
#    test-automation-platform
${query_URL}      http://tal-test-data-service.master.env/execute_query_anydb

${cart_URL}       http://tal-test-data-service.master.env/remove_products_in_cart

${wishlist_URL_clear}    http://tal-test-data-service.master.env/clear_customer_wishlists
${wishlist_Body}    { "namespace": "master", "customer_id":4933518, "email": "${G_EMAIL}", "password": "${G_PASSWORD}" }

${wishlist_Del_URL}    http://tal-test-data-service.master.env/delete_customer_wishlists
${wishlist_Del_Body}    { "namespace": "master", "customer_id":7974729, "email": "${G_EMAIL}", "password": "${G_PASSWORD}" }

${address_URL}    http://tal-test-data-service.master.env/clear_add_customer_addresses
${address_Body}    { "email": "take2Automation+201905213934@gmail.com", "password": "t@ke@!ot1234", "customer_id":4933518, "namespace": "master", "add_default_address":true, "addresses": [{"address_type": "residential", "city": "Cape Town", "contact_number": "0820000000", "suburb": "Green Point", "street": "12 Ridge Way", "postal_code": "8005", "recipient": "Test", "province": "Western Cape", "latitude":-33.9379687, "longitude":18.5006588, "verification_channel": "DESKTOP"}] }
${address_Body_Business}    { "email": "take2Automation+201905213934@gmail.com", "password": "t@ke@!ot1234", "customer_id":4933518, "namespace": "master", "add_default_address":true, "addresses": [{"address_type": "business", "city": "Cape Town", "contact_number": "0820000001", "suburb": "Green Point", "street": "12 Ridge Way", "postal_code": "8005", "recipient": "Test", "province": "Western Cape", "latitude":-33.9379687, "longitude":18.5006588, "verification_channel": "DESKTOP"}] }

${voucher_URL}    http://tal-test-data-service.master.env/execute_query_voucher_service
${voucher_Body}    { "host": "voucher_service", "query": "select VoucherCode, VoucherAmount, DateCreated, DateExpired, DateUsed from vouchers where VoucherAmount > 60 and DateExpired > '2022-03-31' and DateUsed is null limit 1" }
${voucher_Body_Expired}    { "host": "voucher_service", "query": "select VoucherCode, VoucherAmount, DateCreated, DateExpired, DateUsed from vouchers where VoucherAmount > 60 and DateExpired < '2021-11-18' and DateUsed is null limit 1" }

${wishlist_URL_add}    http://tal-test-data-service.master.env/add_customer_wishlists
${Add_cart_URL}       http://tal-test-data-service.master.env/add_to_cart

${items_URL}    ${APP_ENVIRONMENT}rest/v-1-10-0/customers/4933405/cart/items
${items_Body}    {"products":[{"id":94086375, "quantity":1, "enhancedEcommerceAddToCart":{"ecommerce":{"add":{"products":[{"category":"Office & Stationery/Stationery/Student Supplies/Bags & Cases/Pencil Bags", "dimension2":94086375, "name":"SOKHO Christian Inspired Fur Gifting Pencil Bag", "dimension1":null, "price":159, "variant":null, "id":"PLID69598180", "position":0, "brand":"SOKHO", "quantity":1}]}, "currencyCode":"ZAR"}, "event":"addToCart"}}]}
${items_Body_liquor}    {"products":[{"id":52489529,"quantity":1,"enhancedEcommerceAddToCart":{"ecommerce":{"add":{"products":[{"id":"PLID40900528","name":"Johnnie Walker - Black Scotch Whisky - 750ml","brand":"Johnnie Walker","category":"Home & Kitchen/Liquor/Whiskey, Gin & Spirits/Whiskey","price":350,"quantity":1,"position":0,"variant":null,"dimension1":null,"dimension2":52489529}]},"currencyCode":"ZAR"},"event":"addToCart"}}]}
${items_Body_heavy}    {"products":[{"id":82691929,"quantity":1,"enhancedEcommerceAddToCart":{"ecommerce":{"add":{"products":[{"id":"PLID53766361","name":"Hisense - 161 Litre Net Fridge - Titanium Silver","brand":"Hisense","category":"Home & Kitchen/Large Appliances/Fridges & Freezers/Fridges","price":3499,"quantity":1,"position":0,"variant":null,"dimension1":null,"dimension2":82691929}]},"currencyCode":"ZAR"},"event":"addToCart"}}]}
${items_Body_tv}    {"products":[{"id":87365581,"quantity":1,"enhancedEcommerceAddToCart":{"ecommerce":{"add":{"products":[{"id":"PLID54855390","name":"ECCO 32\\" LED HD Ready TV LH32","brand":"ECCO","category":"TV, Audio & Video/TV's","price":2399,"quantity":1,"position":0,"variant":null,"dimension1":null,"dimension2":87365581}]},"currencyCode":"ZAR"},"event":"addToCart"}}]}

${items_URL_Delete}    ${APP_ENVIRONMENT}rest/v-1-10-0/customers/4933405/cart/items
${items_Body_Delete_any}    {"products":[{"id":94086375}]}

${createNewOrderEndpoint}=    http://tal-test-data-service.master.env/create_new_order

${cmsPagesPrimaryNavigationEndpoint}    ${APP_ENVIRONMENT}rest/v-1-10-0/cms/pages/primary-navigation
${dailyDealsCatelogueEndpoint}    ${APP_ENVIRONMENT}rest/v-1-10-0/searches/products,facets,filters,sort_options,product_count,related_searches?qsearch=guns&filter=Available%3Atrue

${envMaster}    http://api.master.env
${envProd}    https://api.takealot.com

${apiRetryCount}    3x
${apiRetryInterval}    1s

*** Keywords ***
Generic Post
    [Documentation]    Performs a generic HTTP POST call to a given endpoint. This method is a wrapper for the default HTTP REST library.
    [Arguments]    ${endPoint}    ${jsonBody}=${None}    ${HttpStatusAssertion}=200
    ${response}=    POST    ${endPoint}    ${jsonBody}
    Log Many    ${response}
    Integer    response status    ${HttpStatusAssertion}

Generic Get
    [Documentation]    Performs a generic HTTP GET call to a given endpoint. This method is a wrapper for the default HTTP REST library.
    [Arguments]    ${endPoint}    ${queryString}=${None}    ${HttpStatusAssertion}=200
    ${response}=    GET    ${endPoint}    ${queryString}
    Log Many    ${response}
    Integer    response status    ${HttpStatusAssertion}

Clear Environment
    Run Keyword If    '${APP_ENVIRONMENT}'!='https://api.takealot.com/'    Get Customer ID
    Clear Cart
    Delete Wishlist
    Clear Wishlist
    Clear Address

Create Wishlists
    Run Keyword If    '${APP_ENVIRONMENT}'=='http://api.master.env/'    Get Customer ID
    ${WL_Body}=    Set Variable If    '${APP_ENVIRONMENT}'=='http://api.master.env/'    { "namespace": "master", "email": "${G_EMAIL}", "password": "t@ke@!ot1234", "customer_id": ${query_customer_id}, "count": 25 }    '${APP_ENVIRONMENT}'=='https://api.takealot.com/'    { "namespace": "takealot", "email": "${G_EMAIL}", "password": "${G_PASSWORD}", "customer_id": 4933518, "count": 24 }
    Wait Until Keyword Succeeds    ${apiRetryCount}    ${apiRetryInterval}    Generic Post    ${wishlist_URL_add}    ${WL_Body}
    
Get Customer ID
    ${token_URL}=    Set Variable    http://tal-test-data-service.master.env/login/tokens
    ${token_BODY}=    Set Variable    { "email": "${G_EMAIL}", "password": "${G_PASSWORD}", "remember_me": true}

    IF    '${APP_ENVIRONMENT}' != 'https://api.takealot.com/'
        Wait Until Keyword Succeeds    ${apiRetryCount}    ${apiRetryInterval}    Generic Post    ${token_URL}    ${token_BODY}
    END

    ${result_ID}=    Output    $.customer_id

    ${query_result}=    Set Variable    0
    ${query_result}=    Set Variable If    '${APP_ENVIRONMENT}'!='https://api.takealot.com/'    ${result_ID}
    Set Global Variable    ${query_customer_id}    ${query_result}
    [return]    ${query_result}

Clear Cart
    ${cart_Body}=    Set Variable If    '${APP_ENVIRONMENT}'!='https://api.takealot.com/'    { "email": "${G_EMAIL}", "password": "${G_PASSWORD}", "customer_id": "${query_customer_id}", "env": "master.env" }    '${APP_ENVIRONMENT}'=='https://api.takealot.com/'    { "email": "${G_EMAIL}", "password": "t@ke@!ot1234", "customer_id": "4933518", "env": "takealot.com" }
    Wait Until Keyword Succeeds    ${apiRetryCount}    ${apiRetryInterval}    Generic Post    ${cart_URL}    ${cart_Body}
   
Clear Wishlist
    ${wishlist_Body}=    Set Variable If    '${APP_ENVIRONMENT}'!='https://api.takealot.com/'    { "namespace": "master", "customer_id":${query_customer_id}, "email": "${G_EMAIL}", "password": "${G_PASSWORD}" }    '${APP_ENVIRONMENT}'=='https://api.takealot.com/'    { "namespace": "takealot", "customer_id":4933518, "email": "${G_EMAIL}", "password": "${G_PASSWORD}" }
    Wait Until Keyword Succeeds    ${apiRetryCount}    ${apiRetryInterval}    Generic Post    ${wishlist_URL_clear}    ${wishlist_Body}

Delete Wishlist
    ${wishlist_Del_Body}=    Set Variable If    '${APP_ENVIRONMENT}'!='https://api.takealot.com/'    { "namespace": "master", "customer_id":${query_customer_id}, "email": "${G_EMAIL}", "password": "${G_PASSWORD}" }    '${APP_ENVIRONMENT}'=='https://api.takealot.com/'    { "namespace": "takealot", "customer_id":4933518, "email": "${G_EMAIL}", "password": "${G_PASSWORD}" }
    Wait Until Keyword Succeeds    ${apiRetryCount}    ${apiRetryInterval}    Generic Post    ${wishlist_Del_URL}    ${wishlist_Del_Body}

Clear Address
    ${address_Body}=    Set Variable If    '${APP_ENVIRONMENT}'!='https://api.takealot.com/'    { "email": "${G_EMAIL}", "password": "${G_PASSWORD}", "customer_id":${query_customer_id}, "namespace": "master", "add_default_address":true, "addresses": [{"address_type": "residential", "city": "Cape Town", "contact_number": "0820000000", "suburb": "Green Point", "street": "12 Ridge Way", "postal_code": "8005", "recipient": "Test", "province": "Western Cape", "latitude":-33.9379687, "longitude":18.5006588, "verification_channel": "DESKTOP"}] }    '${APP_ENVIRONMENT}'=='https://api.takealot.com/'    { "email": "${G_EMAIL}", "password": "t@ke@!ot1234", "customer_id":4933518, "namespace": "takealot", "add_default_address":true, "addresses": [{"address_type": "residential", "city": "Cape Town", "contact_number": "0820000000", "suburb": "Green Point", "street": "12 Ridge Way", "postal_code": "8005", "recipient": "Test", "province": "Western Cape", "latitude":-33.9379687, "longitude":18.5006588, "verification_channel": "DESKTOP"}] }
    Wait Until Keyword Succeeds    ${apiRetryCount}    ${apiRetryInterval}    Generic Post    ${address_URL}    ${address_Body}

Clear Address Business
    Wait Until Keyword Succeeds    ${apiRetryCount}    ${apiRetryInterval}    Generic Post    ${address_URL}    ${address_Body_Business}

Get Tokens
    ${token_URL}=    Set Variable    http://tal-test-data-service.master.env/login/tokens
    ${token_BODY}=    Set Variable    { "email": "${G_EMAIL}", "password": "${G_PASSWORD}", "remember_me": true}

    Run Keyword If    '${APP_ENVIRONMENT}'=='http://api.master.env/'    Post    ${token_URL}    ${token_BODY}
    Run Keyword If    '${APP_ENVIRONMENT}'=='http://api.master.env/'    Integer    response status    200

    ${query_result}=    Set Variable    0
    ${query_result_bearer}=    Set Variable If    '${APP_ENVIRONMENT}'=='http://api.master.env/'    Output    $.access_token
    ${query_result_csrf}=    Set Variable If    '${APP_ENVIRONMENT}'=='http://api.master.env/'    Output    $.csrf_token
    Set Global Variable    ${query_customer_bearer}    ${query_result_bearer}
    Set Global Variable    ${query_customer_csrf}    ${query_result_csrf}
    [return]    ${query_result}

Update Order Delivery DB
    [Arguments]    ${orderId}    ${orderDelivery}=${True}

    ${OrderDel_URL}=    Set Variable    http://admin.master.env/s3cret/admin/pickcreate.php?idOrder=${orderId}
    Wait Until Keyword Succeeds    ${apiRetryCount}    ${apiRetryInterval}    Generic Get    ${OrderDel_URL}

    ${query_OrderDel_Body}=    Set Variable If    '${APP_ENVIRONMENT}'=='http://api.master.env/'    { "db_lookup": "", "db_host": "proxysql.stagealot.com", "db_port": 9002, "db_name": "take2", "username": "${DBUSER}", "password": "${DBPASSWORD}", "db_type": "mysql+pymysql", "query": "Update wms2_instructions set idInstructionStatus = 6 where idOrder = ${orderId}" }
    Wait Until Keyword Succeeds    ${apiRetryCount}    ${apiRetryInterval}    Generic Post    ${query_URL}    ${query_OrderDel_Body}

    ${query_OrderInst_Body}=    Set Variable If    '${APP_ENVIRONMENT}'=='http://api.master.env/'    { "db_lookup": "", "db_host": "proxysql.stagealot.com", "db_port": 9002, "db_name": "take2", "username": "${DBUSER}", "password": "${DBPASSWORD}", "db_type": "mysql+pymysql", "query": "select idInstruction From wms2_instructions where idOrder = ${orderId}" }
    Wait Until Keyword Succeeds    ${apiRetryCount}    ${apiRetryInterval}    Generic Post    ${query_URL}    ${query_OrderInst_Body}

    ${retInstId}=    Output    $[0].idInstruction
    Set Global Variable    ${query_Instruction_id}    ${retInstId}

    ${OrderShip_URL}=    Set Variable    http://tal-test-data-service.master.env/pack_and_ship/order/${orderId}/instruction/${retInstId}
    Wait Until Keyword Succeeds    ${apiRetryCount}    ${apiRetryInterval}    Generic Get    ${OrderShip_URL}

    IF    ${orderDelivery} == ${True}
        ${date}=      Get Current Date    exclude_millis=True
        ${todayDateFormat}=      Convert Date      ${date}      result_format=%Y-%m-%d

        ${query_OrderShip_Body}=    Set Variable If    '${APP_ENVIRONMENT}'=='http://api.master.env/'    { "db_lookup": "", "db_host": "proxysql.stagealot.com", "db_port": 9002, "db_name": "take2", "username": "${DBUSER}", "password": "${DBPASSWORD}", "db_type": "mysql+pymysql", "query": "Update orderitems set DateDelivered = ${todayDateFormat} where idOrder = ${orderId}" }
        Post    ${query_URL}    ${query_OrderShip_Body}
        Integer    response status    200
    END
#    ${query_OrderShip_Body}=    Set Variable If    '${APP_ENVIRONMENT}'=='http://api.master.env/'    { "db_lookup": "", "db_host": "proxysql.stagealot.com", "db_port": 9002, "db_name": "take2", "username": "${DBUSER}", "password": "${DBPASSWORD}", "db_type": "mysql+pymysql", "query": "Update orderitems set DateDelivered = ${todayDateFormat} where idOrder = ${orderId}" }
#    Wait Until Keyword Succeeds    ${apiRetryCount}    ${apiRetryInterval}    Generic Post    ${query_URL}    ${query_OrderShip_Body}

Add To Cart
    [Documentation]    This keyword will add an item with a specified quantity to the users cart by product id using the takealot API.
                        ...    Please note that the deafult product to be added will be a wine cooler classified as a heavy duty product.
    [Arguments]    ${productId}=90391104    ${productQuantity}=1    ${productType}=physical
    Get Customer ID
    Get Tokens

    IF    '${productType}'=='physical'
        ${Add_cart_Body}=    Set Variable    { "email": "${G_EMAIL}", "password": "${G_PASSWORD}", "customer_id": ${query_customer_id}, "environment": "master.env", "bearer_token": "${query_customer_bearer}", "csrf_token": "${query_customer_csrf}", "products": [{"id":${productId} , "quantity": ${productQuantity}}]}
    END
    IF    '${productType}'=='airtime'
        ${Add_cart_Body}=    Set Variable    { "email": "${G_EMAIL}", "password": "${G_PASSWORD}", "customer_id": ${query_customer_id}, "environment": "master.env", "bearer_token": "${query_customer_bearer}", "csrf_token": "${query_customer_csrf}", "products": [{"id":${productId} , "quantity": ${productQuantity}}]}
    END
    IF    '${productType}'=='voucher'
        ${Add_cart_Body}=    Set Variable    { "email": "${G_EMAIL}", "password": "${G_PASSWORD}", "customer_id": ${query_customer_id}, "environment": "master.env", "bearer_token": "${query_customer_bearer}", "csrf_token": "${query_customer_csrf}", "products": [{"id":${productId} , "quantity": ${productQuantity}}]}
    END
    IF    '${productType}'=='alcohol'
        ${Add_cart_Body}=    Set Variable    { "email": "${G_EMAIL}", "password": "${G_PASSWORD}", "customer_id": ${query_customer_id}, "environment": "master.env", "bearer_token": "${query_customer_bearer}", "csrf_token": "${query_customer_csrf}", "products": [{"id":${productId} , "quantity": ${productQuantity}}]}
    END
    IF    '${productType}'=='heavy'
        ${Add_cart_Body}=    Set Variable    { "email": "${G_EMAIL}", "password": "${G_PASSWORD}", "customer_id": ${query_customer_id}, "environment": "master.env", "bearer_token": "${query_customer_bearer}", "csrf_token": "${query_customer_csrf}", "products": [{"id":${productId} , "quantity": ${productQuantity}}]}
    END
    IF    '${productType}'=='tv'
        ${Add_cart_Body}=    Set Variable    { "email": "${G_EMAIL}", "password": "${G_PASSWORD}", "customer_id": ${query_customer_id}, "environment": "master.env", "bearer_token": "${query_customer_bearer}", "csrf_token": "${query_customer_csrf}", "products": [{"id":${productId} , "quantity": ${productQuantity}}]}
    END
    IF    '${productType}'=='variant'
        ${Add_cart_Body}=    Set Variable    { "email": "${G_EMAIL}", "password": "${G_PASSWORD}", "customer_id": ${query_customer_id}, "environment": "master.env", "bearer_token": "${query_customer_bearer}", "csrf_token": "${query_customer_csrf}", "products": [{"id":${productId} , "quantity": ${productQuantity}}]}
    END

    Wait Until Keyword Succeeds    ${apiRetryCount}    ${apiRetryInterval}    Generic Post    ${Add_cart_URL}    ${Add_cart_Body}

Add To Wishlist
    [Documentation]    This keyword will add an item with a specified quantity to the users cart by product id using the takealot API.
                        ...    Please note that the deafult product to be added will be a wine cooler classified as a heavy duty product.
    [Arguments]    ${productId}=90391104    ${productQuantity}=1    ${productType}=physical
    Get Customer ID
    Get Tokens

    IF    '${productType}'=='physical'
        ${Add_cart_Body}=    Set Variable    { "email": "${G_EMAIL}", "password": "${G_PASSWORD}", "customer_id": ${query_customer_id}, "environment": "master.env", "bearer_token": "${query_customer_bearer}", "csrf_token": "${query_customer_csrf}", "products": [{"id":${productId} , "quantity": ${productQuantity}}]}
    END
    IF    '${productType}'=='airtime'
        ${Add_cart_Body}=    Set Variable    { "email": "${G_EMAIL}", "password": "${G_PASSWORD}", "customer_id": ${query_customer_id}, "environment": "master.env", "bearer_token": "${query_customer_bearer}", "csrf_token": "${query_customer_csrf}", "products": [{"id":${productId} , "quantity": ${productQuantity}}]}
    END
    IF    '${productType}'=='voucher'
        ${Add_cart_Body}=    Set Variable    { "email": "${G_EMAIL}", "password": "${G_PASSWORD}", "customer_id": ${query_customer_id}, "environment": "master.env", "bearer_token": "${query_customer_bearer}", "csrf_token": "${query_customer_csrf}", "products": [{"id":${productId} , "quantity": ${productQuantity}}]}
    END
    IF    '${productType}'=='alcohol'
        ${Add_cart_Body}=    Set Variable    { "email": "${G_EMAIL}", "password": "${G_PASSWORD}", "customer_id": ${query_customer_id}, "environment": "master.env", "bearer_token": "${query_customer_bearer}", "csrf_token": "${query_customer_csrf}", "products": [{"id":${productId} , "quantity": ${productQuantity}}]}
    END
    IF    '${productType}'=='heavy'
        ${Add_cart_Body}=    Set Variable    { "email": "${G_EMAIL}", "password": "${G_PASSWORD}", "customer_id": ${query_customer_id}, "environment": "master.env", "bearer_token": "${query_customer_bearer}", "csrf_token": "${query_customer_csrf}", "products": [{"id":${productId} , "quantity": ${productQuantity}}]}
    END
    IF    '${productType}'=='tv'
        ${Add_cart_Body}=    Set Variable    { "email": "${G_EMAIL}", "password": "${G_PASSWORD}", "customer_id": ${query_customer_id}, "environment": "master.env", "bearer_token": "${query_customer_bearer}", "csrf_token": "${query_customer_csrf}", "products": [{"id":${productId} , "quantity": ${productQuantity}}]}
    END
    IF    '${productType}'=='variant'
        ${Add_cart_Body}=    Set Variable    { "email": "${G_EMAIL}", "password": "${G_PASSWORD}", "customer_id": ${query_customer_id}, "environment": "master.env", "bearer_token": "${query_customer_bearer}", "csrf_token": "${query_customer_csrf}", "products": [{"id":${productId} , "quantity": ${productQuantity}}]}
    END

    Wait Until Keyword Succeeds    ${apiRetryCount}    ${apiRetryInterval}    Generic Post    ${Add_cart_URL}    ${Add_cart_Body}

Add Items To Cart Full
    [Arguments]    ${search}

    Get Customer ID
    Get Tokens

    Add Multiple Items To Cart    pencil+case
    Add Multiple Items To Cart    pen
    Add Multiple Items To Cart    humidifier
    Add Multiple Items To Cart    toothpaste
    Add Multiple Items To Cart    soap
    Add Multiple Items To Cart    camera
    Add Multiple Items To Cart    headset
    Add Multiple Items To Cart    pointer

Add Multiple Items To Cart
    [Arguments]    ${search}

    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${search}
    Get    ${search_URL}
    Integer    response status    200

    @{results_id}=    Output    $.sections.products.results[*].product_views.buybox_summary.product_id

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{results_id}
        Add Item To Cart    ${result}
        ${index}=    Evaluate    ${index} + 1
    END

Add Item To Cart
    [Arguments]    ${result_id}
    ${Add_cart_Body}=    Set Variable    { "email": "${G_EMAIL}", "password": "t@ke@!ot1234", "customer_id": ${query_customer_id}, "environment": "master.env", "bearer_token": "${query_customer_bearer}", "csrf_token": "${query_customer_csrf}", "products": [{"id": ${result_id}, "quantity": 1}]}
    Post    ${Add_cart_URL}    ${Add_cart_Body}
    Integer    response status    200

Get First Search Option
    [Arguments]    ${search}
    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/search/autocomplete?query=${search}
    Get    ${search_URL}
    Integer    response status    200
    ${query_result}=    Output    $.suggestions[0].query
    Set Global Variable    ${query_result_search}    ${query_result}
    ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='android'    xpath=//*[@text="${query_result}"]    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label == "${query_result}"`]
    [return]    ${searchResult}

Verify Product Added to Cart
    Verify Text On Screen    ${query_result_CartProduct}    ${MIN_TIMEOUT}

Get Address Coordinates
    ${address_Body}=    Set Variable If    '${APP_ENVIRONMENT}'=='http://api.master.env/'    { "email": "${G_EMAIL}", "password": "${G_PASSWORD}", "customer_id":${query_customer_id}, "namespace": "master", "add_default_address":true, "addresses": [{"address_type": "residential", "city": "Cape Town", "contact_number": "0820000000", "suburb": "Green Point", "street": "12 Ridge Way", "postal_code": "8005", "recipient": "Test", "province": "Western Cape", "latitude":-33.9379687, "longitude":18.5006588, "verification_channel": "DESKTOP"}] }    '${APP_ENVIRONMENT}'=='https://api.takealot.com/'    { "email": "${G_EMAIL}", "password": "t@ke@!ot1234", "customer_id":4933518, "namespace": "takealot", "add_default_address":true, "addresses": [{"address_type": "residential", "city": "Cape Town", "contact_number": "0820000000", "suburb": "Green Point", "street": "12 Ridge Way", "postal_code": "8005", "recipient": "Test", "province": "Western Cape", "latitude":-33.9379687, "longitude":18.5006588, "verification_channel": "DESKTOP"}] }
    Post    ${address_URL}    ${address_Body}
    Integer    response status    200

    ${results_longitude}=    Output    $.address.longitude
    ${results_latitude}=    Output    $.address.latitude

    Should Be True    '${results_longitude}'=='18.5006588'
    Should Be True    '${results_latitude}'=='-33.9379687'

Get Product to Add To Cart
    [Arguments]    ${itemIndex}
    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.sections.products.results[*].product_views.buybox_summary.is_add_to_cart_available
    @{results_cart}=    Output    $.sections.products.results[*].product_views.buybox_summary.add_to_cart_text
    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title
    @{results_price}=    Output    $.sections.products.results[*].product_views.enhanced_ecommerce_add_to_cart.ecommerce.add.products[0].price

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{results}
        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label == '${results_title}[${index}]'`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${results_title}[${index}]']
        Set Global Variable    ${query_result_CartProduct}    ${results_title}[${index}]
        Set Global Variable    ${query_result_CartProductPrice}    ${results_price}[${index}]
        Exit For Loop If    '${result}'=='True' and ${itemIndex}==1 and '${results_cart}[${index}]'=='Add to Cart'
        IF    '${result}'=='True'
            ${itemIndex}=    Evaluate    ${itemIndex} - 1
        END
        ${index}=    Evaluate    ${index} + 1
    END
    ${results_variant}=    Output    $.sections.products.results[${index}].product_views.enhanced_ecommerce_add_to_cart.ecommerce.add.products[0].id
    Set Global Variable    ${query_result_CartProductPLID}    ${results_variant}
    [return]    ${searchResult}

Get Sponsored Product Detail
    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/sponsored-products/search?platform=desktop&uuid=-258293434&qsearch=${query_result_search}
    Get    ${search_URL}
    Integer    response status    200

    ${results_title}=    Output    $.results[0].core.title
    ${results_brand}=    Output    $.results[0].core.brand
    ${results_rating}=    Output    $.results[0].core.star_rating

    ${results_price}=    Output    $.results[0].buybox_summary.pretty_price
    ${results_listprice}=    Output    $.results[0].buybox_summary.listing_price
    ${results_status}=    Output    $.results[0].stock_availability_summary.status

    ${searchResult}=    Set Variable    'True'
    Set Global Variable    ${query_result_adProductTitle}    ${results_title}
    Set Global Variable    ${query_result_adProductBrand}    ${results_brand}
    Set Global Variable    ${query_result_adProductRating}    ${results_rating}

    Set Global Variable    ${query_result_adProductPrice}    ${results_price}
    Set Global Variable    ${query_result_adProductListPrice}    ${results_listprice}
    Set Global Variable    ${query_result_adProductStatus}    ${results_status}

    [return]    ${searchResult}


Get Sponsored Products in PDP
    [Arguments]    ${search_item}    ${relatedProductIndexToSet}=0
    @{PLIDListCompleted}=    Search Product And Return PLID List API    ${search_item}
    FOR    ${plid}    IN    @{PLIDListCompleted}
        ${relatedProduct_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/sponsored-products/${plid}?uuid=6f357297-967b-387d-a93f-295e80fa5f5d&platform=android
        Wait Until Keyword Succeeds    ${apiRetryCount}    ${apiRetryInterval}    Generic Get    ${relatedProduct_URL}
        ${num_items}=    Output    $.num_items
        IF    ${num_items} > 0
            # Related Product Details
            ${results_title}=    Output    $.results[${relatedProductIndexToSet}].core.title
            ${results_brand}=    Output    $.results[${relatedProductIndexToSet}].core.brand
            ${results_rating}=    Output    $.results[${relatedProductIndexToSet}].core.star_rating
            ${results_price}=    Output    $.results[${relatedProductIndexToSet}].buybox_summary.pretty_price
            ${results_listprice}=    Output    $.results[${relatedProductIndexToSet}].buybox_summary.listing_price
            ${results_status}=    Output    $.results[${relatedProductIndexToSet}].stock_availability_summary.status
            # Main PDP's title
            ${productTitle}=    Get Product Title By PLID API    ${plid}

            Set Global Variable    ${query_result_adNumItems}    ${num_items}
            Set Global Variable    ${query_result_adProductTitle}    ${results_title}
            Set Global Variable    ${query_result_adProductBrand}    ${results_brand}
            Set Global Variable    ${query_result_adProductRating}    ${results_rating}
            Set Global Variable    ${query_result_adProductPrice}    ${results_price}
            Set Global Variable    ${query_result_adProductListPrice}    ${results_listprice}
            Set Global Variable    ${query_result_adProductStatus}    ${results_status}
            Set Global Variable    ${ProductTitle}    ${productTitle}
            Exit For Loop            
        END        
    END


Get Leadtime Product to Add To Cart
    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.sections.products.results[*].product_views.stock_availability_summary.is_leadtime
    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title
    @{results_price}=    Output    $.sections.products.results[*].product_views.enhanced_ecommerce_add_to_cart.ecommerce.add.products[0].price

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{results}
        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label == '${results_title}[${index}]'`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${results_title}[${index}]']
        Set Global Variable    ${query_result_CartProduct}    ${results_title}[${index}]
        Set Global Variable    ${query_result_CartProductPrice}    ${results_price}[${index}]
        Exit For Loop If    '${result}'=='True'
        ${index}=    Evaluate    ${index} + 1
    END

    ${results_variant}=    Output    $.sections.products.results[${index}].product_views.enhanced_ecommerce_add_to_cart.ecommerce.add.products[0].id
    Set Global Variable    ${query_result_CartProductPLID}    ${results_variant}

    [return]    ${searchResult}

Get Product PLID from Title
    [Arguments]    ${title}

    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.sections.products.results[*].product_views.core.title
    @{results_PLID}=    Output    $.sections.products.results[*].product_views.enhanced_ecommerce_add_to_cart.ecommerce.add.products[0].id

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{results}
        ${results_variant}=    Output    $.sections.products.results[${index}].product_views.enhanced_ecommerce_add_to_cart.ecommerce.add.products[0].id

        Exit For Loop If    '${result}'=='${title}'

        ${results_variant}=    Set Variable    zero
        ${index}=    Evaluate    ${index} + 1
    END

    Should Be True    '${results_variant}'!='zero'
    Set Global Variable    ${query_result_CartProductPLID}    ${results_variant}

    [return]    ${results_variant}

Get Product Trending
    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/recommend/wishlist?platform=desktop&limit=10
    Get    ${search_URL}
    Integer    response status    200

    ${results_Trending}=    Output    $.items[0].title

    Set Global Variable    ${query_result_ProductTrending}    ${results_Trending}
    ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label == "${results_Trending}"`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${results_Trending}']

    [return]    ${searchResult}

Get Product Author from PLID
    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/product-details/${query_result_CartProductPLID}?platform=desktop
    Get    ${search_URL}
    Integer    response status    200

    ${results_Author}=    Output    $.core.authors[0].Author

    Set Global Variable    ${query_result_CartProductAuthor}    ${results_Author}

    [return]    ${results_Author}

Get Product Brand from PLID
    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/product-details/${query_result_CartProductPLID}?platform=desktop
    Get    ${search_URL}
    Integer    response status    200

    ${results_Brand}=    Output    $.core.brand

    Set Global Variable    ${query_result_CartProductBrand}    ${results_Brand}
    ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeLink[`label == "${results_Brand}"`][1]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${results_Brand}']

    [return]    ${searchResult}

Get Product Subtitle from PLID
    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/product-details/${query_result_CartProductPLID}?platform=desktop
    Get    ${search_URL}
    Integer    response status    200

    ${results_SubTitle}=    Output    $.core.subtitle

    Set Global Variable    ${query_result_CartProductSubTitle}    ${results_SubTitle}

    [return]    ${results_SubTitle}

Get Product Display Names from PLID
    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/product-details/${query_result_CartProductPLID}?platform=desktop
    Get    ${search_URL}
    Integer    response status    200

    @{results_DisplayNames}=    Output    $.other_offers.conditions[0].items[*].seller.display_name

    [return]    @{results_DisplayNames}

Get Product Lead Times from PLID
    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/product-details/${query_result_CartProductPLID}?platform=desktop
    Get    ${search_URL}
    Integer    response status    200

    @{results_LeadTimes}=    Output    $.other_offers.conditions[0].items[*].event_data.documents.product.lead_time

    [return]    @{results_LeadTimes}

Get Product Prices from PLID
    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/product-details/${query_result_CartProductPLID}?platform=desktop
    Get    ${search_URL}
    Integer    response status    200

    @{results_Prices}=    Output    $.other_offers.conditions[0].items[*].event_data.documents.product.purchase_price

    [return]    @{results_Prices}

Get Scroll Product to Add To Cart

    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
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
    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.sections.products.results[*].product_views.buybox_summary.listing_price
    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{results}
        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label == "${results_title}[${index}]"`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${results_title}[${index}]']
        Set Global Variable    ${query_result_CartListingProduct}    ${result}
        Exit For Loop If    '${result}'!='None'
        ${index}=    Evaluate    ${index} + 1
    END

    [return]    ${searchResult}

Get Product List Review
    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
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

Get Product No Reviews
    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
    Get    ${search_URL}
    Integer    response status    200

    @{results_rating}=    Output    $.sections.products.results[*].product_views.core.star_rating
    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{results_rating}
        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label CONTAINS "${results_title}[${index}]"`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${results_title}[${index}]']
        Exit For Loop If    '${result}'=='0.0'
        ${index}=    Evaluate    ${index} + 1
    END

    [return]    ${searchResult}

Get Product Review Count Multiple
    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
    Get    ${search_URL}
    Integer    response status    200

    @{results_rating_count}=    Output    $.sections.products.results[*].product_views.core.reviews
    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{results_rating_count}
        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label CONTAINS "${results_title}[${index}]"`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${results_title}[${index}]']
        Exit For Loop If    '${result}'>='1'
        ${index}=    Evaluate    ${index} + 1
    END

    [return]    ${searchResult}

Get Product Auto to Add To Cart
    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?sort=Relevance&department_slug=pool-garden&category_slug=maintenance-and-service-25855
    Wait Until Keyword Succeeds    ${apiRetryCount}    ${apiRetryInterval}    Generic Get    ${search_URL}

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

    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
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
    [Arguments]    ${index}=0
    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.sections.products.results[*].product_views.buybox_summary.is_shop_all_options_available
    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title

    FOR    ${result}    IN    @{results}
        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label CONTAINS "${results_title}[${index}]"`]    '${PLATFORM_NAME}'=='android'    xpath=//*[contains(@text, "${results_title}[${index}]")]
        Exit For Loop If    '${result}'=='True'
        ${index}=    Evaluate    ${index} + 1
    END
    ${results_variant}=    Output    $.sections.products.results[${index}].product_views.enhanced_ecommerce_add_to_cart.ecommerce.add.products[0].id
    Set Global Variable    ${query_result_CartProductPLID}    ${results_variant}
    Set Global Variable    ${query_result_CartProduct}    ${results_title}[${index}]

    [return]    ${searchResult}

Get Price Range Product to Add To Cart
    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
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

Get Product YAML Detail

    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/product-details/${query_result_CartProductPLID}/frequently-bought-together?platform=desktop&allow_variant=true
    Get    ${search_URL}
    Integer    response status    200

    ${results_Title}=    Output    $.items[0].core.title
    ${results_StarRating}=    Output    $.items[0].core.star_rating
    ${results_Price}=    Output    $.items[0].pretty_price

    Set Global Variable    ${query_result_YMALProductTitle}    ${results_Title}
    Set Global Variable    ${query_result_YMALProductRating}    ${results_StarRating}
    Set Global Variable    ${query_result_YMALProductPrice}    ${results_Price}

    [return]

Get Product CABT Detail
    [Arguments]    ${index}

    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/product-details/${query_result_CartProductPLID}/customers-also-bought?platform=desktop
    Get    ${search_URL}
    Integer    response status    200

    ${results_Title}=    Output    $.items[${index}].title
    ${results_Price}=    Output    $.items[${index}].selling_price

    Set Global Variable    ${query_result_CABTProductTitle}    ${results_Title}
    Set Global Variable    ${query_result_CABTProductPrice}    ${results_Price}

    [return]

Get Product Variant

    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/product-details/${query_result_CartProductPLID}?platform=desktop
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.variants.selectors[0].options[*].is_enabled
    @{results_variant}=    Output    $.variants.selectors[0].options[*].link_data.fields.size

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{results}
        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label == "${results_variant}[${index}]"`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${results_variant}[${index}]']
        Exit For Loop If    '${result}'=='True'
        ${index}=    Evaluate    ${index} + 1
    END
    Set Global Variable    ${query_result_CartProductVariant}    ${results_variant}[${index}]

    [return]    ${searchResult}

Get Product Disabled Variant

    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/product-details/${query_result_CartProductPLID}?platform=desktop
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.variants.selectors[0].options[*].is_enabled
    @{results_variant}=    Output    $.variants.selectors[0].options[*].link_data.fields.size

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{results}
        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label CONTAINS "${results_variant}[${index}]"`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${results_variant}[${index}]']
        Exit For Loop If    '${result}'=='False'
        ${index}=    Evaluate    ${index} + 1
    END
    Set Global Variable    ${query_result_CartProductVariant}    ${results_variant}[${index}]

    [return]    ${searchResult}

Get Product Variant Colour

    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/product-details/${query_result_CartProductPLID}?platform=desktop
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.variants.selectors[0].options[*].is_enabled
    @{results_variant}=    Output    $.variants.selectors[0].options[*].link_data.fields.colour_variant

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{results}
        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label CONTAINS "${results_variant}[${index}]"`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${results_variant}[${index}]']
        Exit For Loop If    '${result}'=='True'
        ${index}=    Evaluate    ${index} + 1
    END
    Set Global Variable    ${query_result_CartProductVariant}    ${results_variant}[${index}]
    Set Global Variable    ${query_result_CartProductVariantColor}    ${results_variant}[${index}]

    [return]    ${searchResult}

Get Product Variant Disabled Colour

    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/product-details/${query_result_CartProductPLID}?platform=desktop
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.variants.selectors[0].options[*].is_enabled
    @{results_variant}=    Output    $.variants.selectors[0].options[*].link_data.fields.colour_variant

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{results}
        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label CONTAINS "${results_variant}[${index}]"`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${results_variant}[${index}]']
        Exit For Loop If    '${result}'=='False'
        ${index}=    Evaluate    ${index} + 1
    END
    Set Global Variable    ${query_result_CartProductVariant}    ${results_variant}[${index}]

    [return]    ${searchResult}

Get Product Variant All Colours

    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/product-details/${query_result_CartProductPLID}?platform=desktop
    Get    ${search_URL}
    Integer    response status    200

    @{results_variant}=    Output    $.variants.selectors[0].options[*].link_data.fields.colour_variant

    [return]    @{results_variant}

Get Product Variant All Size

    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/product-details/${query_result_CartProductPLID}?platform=desktop
    Get    ${search_URL}
    Integer    response status    200

    @{results_variant}=    Output    $.variants.selectors[0].options[*].link_data.fields.size

    [return]    @{results_variant}

Get Product Variant Disabled Size

    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/product-details/${query_result_CartProductPLID}?platform=desktop
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.variants.selectors[1].options[*].is_enabled
    @{results_variant}=    Output    $.variants.selectors[1].options[*].link_data.fields.size

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{results}
        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label == "${results_variant}[${index}]"`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${results_variant}[${index}]']
        Exit For Loop If    '${result}'=='False'
        ${index}=    Evaluate    ${index} + 1
    END
    Set Global Variable    ${query_result_CartProductVariant}    ${results_variant}[${index}]

    [return]    ${searchResult}

Get Product Variant Size

    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/product-details/${query_result_CartProductPLID}?platform=desktop
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.variants.selectors[1].options[*].is_enabled
    @{results_variant}=    Output    $.variants.selectors[1].options[*].link_data.fields.size

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{results}
        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label == "${results_variant}[${index}]"`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${results_variant}[${index}]']
        Exit For Loop If    '${result}'=='True'
        ${index}=    Evaluate    ${index} + 1
    END
    Set Global Variable    ${query_result_CartProductVariant}    ${results_variant}[${index}]

    [return]    ${searchResult}

Get Product Variant Colour Size

    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/product-details/${query_result_CartProductPLID}?platform=desktop&colour_variant=${query_result_CartProductVariant}
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.variants.selectors[1].options[*].is_enabled
    @{results_variant}=    Output    $.variants.selectors[1].options[*].link_data.fields.size

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{results}
        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label == "${results_variant}[${index}]"`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${results_variant}[${index}]']
        Exit For Loop If    '${result}'=='True'
        ${index}=    Evaluate    ${index} + 1
    END
    Set Global Variable    ${query_result_CartProductVariant}    ${results_variant}[${index}]

    [return]    ${searchResult}

Get Product Disabled Variant Colour

    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/product-details/${query_result_CartProductPLID}?platform=desktop
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.variants.selectors[0].options[*].is_enabled
    @{results_variant}=    Output    $.variants.selectors[0].options[*].link_data.fields.colour_variant

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{results}
        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label CONTAINS "${results_variant}[${index}]"`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${results_variant}[${index}]']
        Exit For Loop If    '${result}'=='False'
        ${index}=    Evaluate    ${index} + 1
    END
    Set Global Variable    ${query_result_CartProductVariant}    ${results_variant}[${index}]

    [return]    ${searchResult}

Get Product Disabled Variant Colour Size

    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/product-details/${query_result_CartProductPLID}?platform=desktop
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.variants.selectors[0].options[*].is_enabled
    @{results_variant}=    Output    $.variants.selectors[1].options[*].link_data.fields.colour_variant

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{results}
        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label CONTAINS "${results_variant}[${index}]"`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${results_variant}[${index}]']
        Exit For Loop If    '${result}'=='False'
        ${index}=    Evaluate    ${index} + 1
    END
    Set Global Variable    ${query_result_CartProductVariant}    ${results_variant}[${index}]

    [return]    ${searchResult}

Get First Product From API
    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
    Get    ${search_URL}
    Integer    response status    200

    ${results_title}=    Output    $.sections.products.results[0].product_views.core.title
    ${results_brand}=    Output    $.sections.products.results[0].product_views.core.brand
    Set Global Variable    ${query_result_FirstProduct}    ${results_title}
    Set Global Variable    ${query_result_FirstProductBrand}    ${results_brand}

    ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    id=${results_title}    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${results_title}']

    [return]    ${searchResult}

Get Product with Leadtime

    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
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

    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
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
    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
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

    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}
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

Get Payment Voucher Number Expired
    Post    ${voucher_URL}    ${voucher_Body_Expired}
    Integer    response status    200
    ${query_result}=    Output    $[0].VoucherCode
    Set Global Variable    ${query_result_voucher}    ${query_result}
    [return]    ${query_result_voucher}

Get First Sort Product
    [Arguments]    ${sort}

    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}&sort=${sort}
    Get    ${search_URL}
    Integer    response status    200

    @{verifySearchResult}=    Output    $.sections.products.results
    ${cnt}=    Get length    ${verifySearchResult}

    Return From Keyword If    ${cnt} < 1    0

    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title
    ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label CONTAINS "${results_title}[0]"`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text="${results_title}[0]"]

    [Return]    ${searchResult}

Get Third Sort Product
    [Arguments]    ${sort}

    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_search}&sort=${sort}
    Get    ${search_URL}
    Integer    response status    200

    @{verifySearchResult}=    Output    $.sections.products.results
    ${cnt}=    Get length    ${verifySearchResult}

    Return From Keyword If    ${cnt} < 2    0

    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title
    ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label CONTAINS "${results_title}[1]"`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text="${results_title}[1]"]

    [Return]    ${searchResult}

Get First Filter Product
    [Arguments]    ${filter}

    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?filter=${filter}&qsearch=${query_result_search}
    Get    ${search_URL}
    Integer    response status    200

    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title
    ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    id=${results_title}[0]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text="${results_title}[0]"]

    [Return]    ${searchResult}

Get Third Filter Product
    [Arguments]    ${filter}

    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?filter=${filter}&qsearch=${query_result_search}
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
    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-9-0/productlines/search?daily_deals_rows=100&filter=Available:true&filter=Promotions:${query_result_DailyDealsSlug}
    Get    ${search_URL}
    Integer    response status    200

    ${results_title}=    Output    $.results.productlines[0].title
    Set Global Variable    ${query_result_DailyDealProduct}    ${results_title}

    [return]    ${results_title}

Get Product Deals Third Tab Slug
    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-9-0/promotions?is_bundle_included=True
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.response[*].group_id

    ${index}=    Set Variable    0
    ${searchResult}=    Set Variable    ''
    FOR    ${result}    IN    @{results}
        ${chkTextSuccess}=    Run Keyword And Return Status    Output    $.response[${index}].slug

        ${results_title}=    Set Variable    ''
        ${results_title}=    Set Variable If    '${result}'=='4' and ${chkTextSuccess}==${True}    ${result}
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
    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-9-0/promotions?is_bundle_included=True
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.response[*].group_id

    ${index}=    Set Variable    0
    ${searchResult}=    Set Variable    ''
    FOR    ${result}    IN    @{results}
        ${chkTextSuccess}=    Run Keyword And Return Status    Output    $.response[${index}].slug

        ${results_title}=    Set Variable    ''
        ${results_title}=    Set Variable If    '${result}'=='4' and ${chkTextSuccess}==${True}    ${result}
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
    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-9-0/promotions?is_bundle_included=True
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.response[*].display_name

    ${index}=    Set Variable    0
    ${searchResult}=    Set Variable    ''
    FOR    ${result}    IN    @{results}
        IF    '''${result}'''=='Daily Deals'
            ${searchResult}=    Output    $.response[${index}].promotion_id
            Exit For Loop
        END
        ${index}=    Evaluate    ${index} + 1
    END
    Should Be True    '${results}[${index}]'=='Daily Deals'
    Set Global Variable    ${query_result_DailyDealsSlug}    ${searchResult}
    [Return]    ${searchResult}

Get Product App Only Deals Slug
    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-9-0/promotions?is_bundle_included=True
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.response[*].display_name

    ${index}=    Set Variable    0
    ${searchResult}=    Set Variable    ''
    FOR    ${result}    IN    @{results}
        ${searchResult}=    Run Keyword If    "${result}"=="App Only Deals"    Output    $.response[${index}].promotion_id

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
    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${searchProd}
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
    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${searchProd}
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

    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-9-0/productlines/search?sort=BestSelling%20Descending&rows=100&daily_deals_rows=100&start=0&detail=listing&filter=Available:true&filter=Promotions:${query_result_DailyDealsSlug}
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

    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-9-0/productlines/search?sort=BestSelling%20Descending&rows=100&daily_deals_rows=100&start=0&detail=listing&filter=Available:true&filter=Promotions:${query_result_DailyDealsSlug}
    Get    ${search_URL}
    Integer    response status    200

    ${results_title}=    Output    $.results.productlines[0].title

    ${searchResult}=    Set Variable    ${results_title}

    [Return]    ${searchResult}

Verify Product Search Daily Deals Image

    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-9-0/productlines/search?sort=BestSelling%20Descending&rows=100&daily_deals_rows=100&start=0&detail=listing&filter=Available:true&filter=Promotions:${query_result_DailyDealsSlug}
    Get    ${search_URL}
    Integer    response status    200

    ${results}=    Output    $.results.productlines[0].cover.url
    ${cnt}=    Get length    ${results}

    Should Be True    ${cnt}>0
    [Return]    ${results}

Verify Product Search Alcohol Ad Notice

    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-9-0/productlines/search?sort=BestSelling%20Descending&rows=100&daily_deals_rows=100&start=0&detail=listing&filter=Available:true&filter=Promotions:${query_result_DailyDealsSlug}
    Get    ${search_URL}
    Integer    response status    200

    ${results}=    Output    $.results.productlines[0].cover.url
    ${cnt}=    Get length    ${results}

    Should Be True    ${cnt}>0
    [Return]    ${results}

Verify Product Daily Deals Badge
    Get Product Daily Deals Slug
    Get Product Daily Deals
    Verify Product Search Daily Deals Badge

Verify Product Percent Off Badge
    Get Product Daily Deals Slug
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

    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-9-0/productlines/search?sort=BestSelling%20Descending&rows=100&daily_deals_rows=100&start=0&detail=listing&filter=Available:true&filter=Promotions:${option}
    Get    ${search_URL}
    Integer    response status    200

    ${result_filter}=    Output    $.results.facets[0].entries[0].filter
    ${results_title}=    Output    $.results.facets[0].entries[0].name

    ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    id=${results_title}    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${results_title}']
    Set Global Variable    ${query_result_FilterType}    ${result_filter}

    [return]    ${searchResult}

Get Filter Product to Add To Cart
    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-9-0/productlines/search?daily_deals_rows=100&start=0&filter=Available:true&filter=Promotions:${query_result_DailyDealsSlug}&filter=${query_result_FilterType}
    ${apiResult}=    Get Api Request    ${search_URL}

    ${objDict}=    Convert To Dictionary    ${apiResult}
    ${objResults}=    Get From Dictionary    ${objDict}    results

    @{objProdLines}=    Get From Dictionary    ${objResults}    productlines

    ${searchResult}=    Set Variable    '0'
    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{objProdLines}
        ${objVariant}=    Get From Dictionary    ${result}    has_variants
        ${objTitle}=    Get From Dictionary    ${result}    title

        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label == '${objTitle}'`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${objTitle}']
        Set Global Variable    ${query_result_CartFilterProduct}    ${objTitle}
        Exit For Loop If    '${objVariant}'=='False' and ${index} > 0

        ${searchResult}=    Set Variable    '0'
        ${index}=    Evaluate    ${index} + 1
    END
    ${cnt}=    Get length    ${searchResult}
    Should Be True    ${cnt}>1
    [return]    ${searchResult}

Get Daily Deals Product to Add To Cart
    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-9-0/productlines/search?rows=100&filter=Available:true&filter=Promotions:${query_result_DailyDealsSlug}
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

        ${chkTextSuccess}=    Run Keyword And Return Status    Should Not Contain    ${objTitle}    TV
        Exit For Loop If    ${chkTextSuccess}==${True} and '${objVariant}'=='False'

        ${searchResult}=    Set Variable    0
        ${index}=    Evaluate    ${index} + 1
    END
    ${cnt}=    Get length    ${searchResult}
    Should Be True    ${cnt}>1
    [return]    ${searchResult}

Search And Return Product Id API
    [Documentation]    This keyword will call the search API and return the first item matching product id.
                        ...    Note that this API call is simulating a user searching within the home search
                        ...    and returning matching results. In this case the first item that matches id will
                        ...    be returned.
    [Arguments]    ${search}

    ${searchProductEndpoint}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${search}
    Get    ${searchProductEndpoint}
    Integer    response status    200
    
    ${productId}=    Output    $.sections.products.results[1].product_views.buybox_summary.product_id

    ${productTitle}=    Output    $.sections.products.results[1].product_views.core.title
    Set Global Variable    ${prod_Title}    ${productTitle}

    [Return]    ${productId}

Create New Order API
    [Documentation]    This keyword will call the create order API and create a new order. The order can then be located
                        ...    in the orders section within the account section. The address used for the order will be fixed for this keyword.
                        ...    Known payment methods that can be used are 'COD', 'Credit Card', 'Debit Card', 'eBucks', 'iPay', 'MasterPass', 'Mobicred', 'PayFast, 'sBux' and 'CREDIT'.
                        ...    Known delivery methods that can be used are 'COLLECT', 'COURIER' and 'DIGITAL'.
                        ...    The 'completePayment' parameter will determine if the order created should be fully paid or not paid (Awaiting payment state).
    [Arguments]    ${productId}    ${productQuantity}    ${paymentMethod}    ${deliveryMethod}    ${completePayment}    ${addressID}=5f3758b775787614fc4487bb

    ${customerId}=    Get Customer ID
    ${createNewOrderJsonBody}=    Set Variable    {"customer_id":${customerId},"products":[{"product_id":${productId},"quantity":${productQuantity}, "unit_price":190}],"address_id":"${addressID}","payment_method":"${paymentMethod}","delivery_method":"${deliveryMethod}","pay_full_amount_due":true,"percentage_of_amount_due_to_pay":100,"complete_payment":${completePayment},"add_donation":false,"cancel_order":false}
    Log    ${createNewOrderEndpoint}
    Log    ${createNewOrderJsonBody}
    POST    ${createNewOrderEndpoint}    ${createNewOrderJsonBody}
    Integer    response status    200

    ${retOorderId}=    Output    $.order_id
    Set Global Variable    ${query_order_id}    ${retOorderId}
    [Return]    ${retOorderId}

Get CMS Widget Products Attributes
    [Arguments]    ${item}
    ${search_URL}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/cms/pages/${item}
    Get    ${search_URL}
    Integer    response status    200

    @{results_title}=    Output    $.page.widgets[*].value.product_data[*].title
    @{results_price}=    Output    $.page.widgets[*].value.product_data[*].selling_price

    ${searchResult}=    Set Variable    ${results_title}[${index}]
    [return]    ${searchResult}

Get Department Categories CMS Widget List API
    [Documentation]    This API will return a list of department category widget names that belong to CMS pages which are present on the UI.
    Wait Until Keyword Succeeds    ${apiRetryCount}    ${apiRetryInterval}    Generic Get    ${cmsPagesPrimaryNavigationEndpoint}

    #Get all widgets from json array, load into robot array and determine array size to be used in loop.
    ${cmsPagesWidgetJsonArray}=    Output    $.page.widgets[*]
    ${cmsPagesWidgetJsonArraySize}=    Get Length    ${cmsPagesWidgetJsonArray}

    #Loop through each json array object and check if the action type is 'page'. If true then get the title and append to array. 
    @{departmentCategoryCmsWidgetNameList}    Set Variable    ${None}
    FOR    ${index}    IN RANGE   ${cmsPagesWidgetJsonArraySize}
        ${actionType}=    Get Value From Json    ${cmsPagesWidgetJsonArray}[${index}]    $.[*].value.link_data.action

        #Nothing too hectic here just converting json action value to string and doing some clean up
        ${actionType}=    Convert JSON To String    ${actionType}
        ${actionType}=    Remove String    ${actionType}    ["
        ${actionType}=    Remove String    ${actionType}    "]

        IF    '${actionType}' == 'page'
            #Same clean up happening here with title.
            ${title}=    Get Value From Json    ${cmsPagesWidgetJsonArray}[${index}]    $.[*].value.title
            ${title}=    Convert JSON To String    ${title}
            ${title}=    Remove String    ${title}    ["
            ${title}=    Remove String    ${title}    "]
            Append To List    ${departmentCategoryCmsWidgetNameList}    ${title}
        END
    END
    [Return]    ${departmentCategoryCmsWidgetNameList}

Get Department Categories CMS Widget Slug List API
    [Documentation]    This API will return a list of department category widget slug values that belong to CMS pages which are present on the UI.
    Wait Until Keyword Succeeds    ${apiRetryCount}    ${apiRetryInterval}    Generic Get    ${cmsPagesPrimaryNavigationEndpoint}
    
    #Get all widgets from json array, load into robot array and determine array size to be used in loop.
    ${cmsPagesWidgetJsonArray}=    Output    $.page.widgets[*]
    ${cmsPagesWidgetJsonArraySize}=    Get Length    ${cmsPagesWidgetJsonArray}
    
    #Loop through each json array object and check if the action type is 'page'. If true then get the title and append to array. 
    @{departmentCategoryCmsWidgetSlugList}    Set Variable    ${None}
    FOR    ${index}    IN RANGE   ${cmsPagesWidgetJsonArraySize}
        ${actionType}=    Get Value From Json    ${cmsPagesWidgetJsonArray}[${index}]    $.[*].value.link_data.action

        #Nothing too hectic here just converting json action value to string and doing some clean up
        ${actionType}=    Convert JSON To String    ${actionType}
        ${actionType}=    Remove String    ${actionType}    ["
        ${actionType}=    Remove String    ${actionType}    "]

        IF    '${actionType}' == 'page'
            #Same clean up happening here with slug.
            ${slugValue}=    Get Value From Json    ${cmsPagesWidgetJsonArray}[${index}]    $.[*].value.link_data.parameters.slug
            ${slugValue}=    Convert JSON To String    ${slugValue}
            ${slugValue}=    Remove String    ${slugValue}    ["
            ${slugValue}=    Remove String    ${slugValue}    "]
            Append To List    ${departmentCategoryCmsWidgetSlugList}    ${slugValue}
        END
    END
    [Return]    ${departmentCategoryCmsWidgetSlugList}
    
Get Department Categories List API
    [Documentation]    Gets a list of all department categories that will be displayed on the UI. Returns the list in the form of an array.
                        ...    this will return all department categories example ones that re-route to products, deals,search etc.
    Wait Until Keyword Succeeds    ${apiRetryCount}    ${apiRetryInterval}    Generic Get    ${cmsPagesPrimaryNavigationEndpoint}
    
    @{uncleanDepartmentCatList}=    Output    $.page.widgets[*].value.title
    
    @{cleanDepartmentcCatList}=    Set Variable    ${None}
    FOR    ${departmentCategory}    IN    @{uncleanDepartmentCatList}
        ${departmentCategory}=    Remove String    ${departmentCategory}    "
        Append To List    ${cleanDepartmentcCatList}    ${departmentCategory}
    END
    [Return]    @{cleanDepartmentcCatList}

Get Department Category CMS Widget Title By Slug API
    [Documentation]    Gets a department category widget title based on the cms department category slug name.
    [Arguments]    ${departmentCategorySlugName}
    ${getDepartmentCategoryTitleEndpoint}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/cms/pages/${departmentCategorySlugName}
    Wait Until Keyword Succeeds    ${apiRetryCount}    ${apiRetryInterval}    Generic Get    ${getDepartmentCategoryTitleEndpoint}

    ${deptCatTitle}=    Output    $.page.widgets[0].value.content
    [Return]    ${deptCatTitle}

Search Product And Return PLID API
    [Documentation]    This keyword will call the search API and return a PLID. The default PLID that will be returned will be the first items PLID.
                        ...    Note that if the 'enableHasMoreColoursFlag' is set then the 'searchResultIndex' will only reference these items when returning.
    [Arguments]    ${searchTerm}    ${searchResultIndex}=1    ${enableHasMoreColoursFlag}=${False}

    #Parse search term to this method which calls another API to simulate recommended search results to match UI suggestions to make API search and UI search in sync.
    #This method will set a global value which will be used in search.
    Get First Search Option    ${searchTerm}

    ${PLID}=    Set Variable    ${None}
    Wait Until Keyword Succeeds    ${apiRetryCount}    ${apiRetryInterval}    Generic Get    endPoint=${APP_ENVIRONMENT}rest/v-1-10-0/searches/products,facets,filters,sort_options,product_count,related_searches?filter=Available%3Atrue&qsearch=${query_result_search}

    IF    '${enableHasMoreCOloursFlag}' == '${True}'
        #Stage 1 - Load all search results as an array.
        @{searchResultArray}=    Output    $.sections.products.results[*]
        ${listSize}=    Get Length    ${searchResultArray}
        @{hasMoreColoursTrueList}=    Set Variable    ${None}
        
        #Stage 2 - Loop through each product in array and determine if the 'has more colours' flag is true. if true then append product PLID to seperate array.
        FOR    ${index}    IN RANGE    ${listSize}
            ${hasMoreColoursFlagListItem}=    Output    $.sections.products.results[${index}].product_views.variant_summary.has_more_colours
            IF    '${hasMoreColoursFlagListItem}' == 'True'
                ${hasMoreColourPLID}=    Output    $.sections.products.results[${index}].product_views.core.id
                Append To List    ${hasMoreColoursTrueList}    ${hasMoreColourPLID}
            END
        END
        
        #Stage 3 - Since we now have a new list with PLID's for products with 'has more colour' enabled we can return the PLID based on the param index.
        ${PLID}=    Set Variable    ${hasMoreColoursTrueList}[${searchResultIndex}]
    ELSE
        ${PLID}=    Output    $.sections.products.results[${searchResultIndex}].product_views.core.id
    END

    [Return]    PLID${PLID}

Get Product Title By PLID API
    [Documentation]    Calls the get product details API and returns the product title based on PLID.
    [Arguments]    ${PLID}
    Wait Until Keyword Succeeds    ${apiRetryCount}    ${apiRetryInterval}    Generic Get    endPoint=${APP_ENVIRONMENT}rest/v-1-10-0/product-details/${PLID}
    ${productTitle}=    Output    $.title
    [Return]    ${productTitle}

Get Product Variants By PLID API
    [Documentation]    Calls the get product API and returns a list of the variants based on variant type. An example of a type can be Value (airtime), Colour or Size.
    [Arguments]    ${PLID}    ${variantType}
    Wait Until Keyword Succeeds    ${apiRetryCount}    ${apiRetryInterval}    Generic Get    endPoint=${APP_ENVIRONMENT}rest/v-1-10-0/product-details/${PLID}

    #First get a list of variant selectors and loop through them until you find the specified type at a specified index.
    @{variantSelectorTitleArray}=    Output    $.variants.selectors[*]
    ${variantSelectorTitleArraySize}=    Get Length    ${variantSelectorTitleArray}

    @{variantList}=    Set Variable    ${None}
    FOR    ${index}    IN RANGE    ${variantSelectorTitleArraySize}
        ${variantTypeTitle}=    Output    $.variants.selectors[${index}].title
        ${variantTypeTitle}=    Remove String    ${variantTypeTitle}    "
        #Once the specified type is detected then derive the list of its relative variants.
        IF    '${variantTypeTitle}' == '${variantType}'
            IF    '${variantType}' == 'Size'
                @{variantList}=    Output    $.variants.selectors[${index}].options[*].value
                Exit For Loop
            END
            IF    '${variantTypeTitle}' == 'Colour'
                @{variantList}=    Output    $.variants.selectors[${index}].options[*].value.name
                Exit For Loop
            END
            IF    '${variantTypeTitle}' == 'Value'
                @{variantList}=    Output    $.variants.selectors[${index}].options[*].value
                Exit For Loop
            END
        END
    END
    [Return]    ${variantList}

Search Product And Return PLID List API
    [Documentation]    This keyword will call the search API and return all PLIDs.
    [Arguments]    ${searchTerm}
    #Parse search term to this method which calls another API to simulate recommended search results to match UI suggestions to make API search and UI search in sync.
    #This method will set a global value which will be used in search.
    Get First Search Option    ${searchTerm}
    Wait Until Keyword Succeeds    ${apiRetryCount}    ${apiRetryInterval}    Generic Get    endPoint=${APP_ENVIRONMENT}rest/v-1-10-0/searches/products,facets,filters,sort_options,product_count,related_searches?filter=Available%3Atrue&qsearch=${query_result_search}
    @{PLIDList}=    Output    $.sections.products.results[*].product_views.core.id
    @{PLIDListCompleted}=    Set Variable    ${None}
    FOR    ${item}    IN    @{plidList}
        ${PLIDItemCompleted}=    Set Variable    PLID${item}
        Append To List    ${PLIDListCompleted}    ${PLIDItemCompleted}
    END
    [Return]    ${PLIDListCompleted}

Update Stock Quantity API
    [Documentation]    This keyword will update stock on a product based on its quantity in both JHB and CPT warehouses. The quantity entered will be split between both DC's
    [Arguments]    ${productId}    ${quantity}
    ${updateStockEndpoint}=    Set Variable    http://tal-s4f-testing-service.master.env/update_product_stock_bust_cache
    ${updateStockJsonBody}=    Set Variable    { "product_id": ${productId}, "stock_quantity": ${quantity}, "warehouse_ids": [1,3] }
    Wait Until Keyword Succeeds    ${apiRetryCount}    ${apiRetryInterval}    Generic Post    ${updateStockEndpoint}    ${updateStockJsonBody}

Get Trending Products API
    [Documentation]    Calls the search API and gets a list of all products trending.
    [Arguments]    ${trendingProductIndex}=1
    ${tredningProductsEndpoint}=    Set Variable    ${APP_ENVIRONMENT}rest/v-1-10-0/search/trending?platform=android&limit=10
    Wait Until Keyword Succeeds    ${apiRetryCount}    ${apiRetryInterval}    Generic Get    ${tredningProductsEndpoint}
    ${tredningProductByIndex}=    Output    $.suggestions[${trendingProductIndex}].*
    [Return]    ${tredningProductByIndex}
