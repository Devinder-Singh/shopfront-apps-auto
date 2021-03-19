*** Settings ***
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

*** Keywords ***
Clear Environment
    Clear Cart
    Clear Wishlist
    Clear Address

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
    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-10-0/search/autocomplete?query=${search}
    Get    ${search_URL}
    Integer    response status    200
    ${query_result}=    Output    $.suggestions[0].query
    Set Global Variable    ${query_result_wearch}    ${query_result}
    ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='android'    xpath=//*[@text="${query_result}"]    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label == "${query_result}"`]
    [return]    ${searchResult}

Get Product to Add To Cart
    ${search_URL}=    Set Variable    http://api.master.env/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_wearch}
    Get    ${search_URL}
    Integer    response status    200
    Output    response
    ${query_result}=    Output    $.sections.products.results[11].product_views.buybox_summary.is_add_to_cart_available
    Log Many    ${query_result}
    @{results}=    Output    $.sections.products.results[*].product_views.buybox_summary.is_add_to_cart_available
    Log Many    @{results}
    ${index}=    Set Variable    1
    FOR    ${result}    IN    @{results}
        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeStaticText[1]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text="${results_title}[${index}]"] 
        Exit For Loop If    '${result}'=='True'
        ${index}=    Evaluate    ${index} + 1
    END

    [return]    ${searchResult}

Get Product with Leadtime

    ${search_URL}=    Set Variable    http://api.master.env/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_wearch}
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.sections.products.results[*].product_views.stock_availability_summary.is_leadtime
    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{results}
        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeStaticText[1]    '${PLATFORM_NAME}'=='android'    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[${index}]
        Log    ${index}
        Exit For Loop If    '${result}'=='True'
        ${index}=    Evaluate    ${index} + 1
    END

    [return]    ${searchResult}

Get Product in JHB only

    ${search_URL}=    Set Variable    http://api.master.env/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_wearch}
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.sections.products.results[*].product_views.stock_availability_summary.distribution_centres
    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title

    ${index}=    Set Variable    0
    ${searchResult}=    Set Variable    ''
    FOR    ${result}    IN    @{results}
        ${cnt}=    Get length    ${result}
        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeStaticText[1]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text="${results_title}[${index}]"]

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

    ${search_URL}=    Set Variable    http://api.master.env/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_wearch}
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.sections.products.results[*].product_views.stock_availability_summary.distribution_centres
    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title

    ${index}=    Set Variable    0
    ${searchResult}=    Set Variable    ''
    FOR    ${result}    IN    @{results}
        ${cnt}=    Get length    ${result}
        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeStaticText[1]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text="${results_title}[${index}]"]

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

    ${search_URL}=    Set Variable    http://api.master.env/rest/v-1-10-0/searches/products,filters,facets,sort_options,breadcrumbs,slots_audience,context,seo?qsearch=${query_result_wearch}
    Get    ${search_URL}
    Integer    response status    200

    @{results}=    Output    $.sections.products.results[*].product_views.stock_availability_summary.distribution_centres
    @{results_title}=    Output    $.sections.products.results[*].product_views.core.title

    ${index}=    Set Variable    0
    ${searchResult}=    Set Variable    ''
    FOR    ${result}    IN    @{results}
        ${cnt}=    Get length    ${result}
        ${searchResult}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeStaticText[1]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text="${results_title}[${index}]"]
        Run Keyword If
            ...    ${cnt}==2
            ...    Exit For Loop

        ${searchResult}=    Set Variable    ''
        ${index}=    Evaluate    ${index} + 1
    END
    [Return]    ${searchResult}
