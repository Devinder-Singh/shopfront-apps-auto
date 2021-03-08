*** Settings ***
Library    Collections
Library    REST

*** Variables ***
${cart_URL}    http://tal-test-data-service.test-automation-platform.env/remove_products_in_cart
${cart_Body}    { "email": "take2Automation+201905213934@gmail.com", "password": "t@ke@!ot1234", "customer_id": "4933518", "env": "takealot.com" }

${wishlist_URL}    http://tal-test-data-service.test-automation-platform.env/clear_customer_wishlists
${wishlist_Body}    { "namespace": "takealot", "customer_id":4933518, "email": "take2Automation+201905213934@gmail.com", "password": "t@ke@!ot1234" }

${address_URL}    http://tal-test-data-service.test-automation-platform.env/clear_add_customer_addresses
${address_Body}    { "email": "take2Automation+201905213934@gmail.com", "password": "t@ke@!ot1234", "customer_id":4933518, "namespace": "takealot", "add_default_address":true, "addresses": [{"address_type": "residential", "city": "Cape Town", "contact_number": "0820000000", "suburb": "Green Point", "street": "12 Ridge Way", "postal_code": "8005", "recipient": "Test", "province": "Western Cape", "latitude":-33.9379687, "longitude":18.5006588, "verification_channel": "DESKTOP"}] }
${address_Body_Business}    { "email": "take2Automation+201905213934@gmail.com", "password": "t@ke@!ot1234", "customer_id":4933518, "namespace": "takealot", "add_default_address":true, "addresses": [{"address_type": "business", "city": "Cape Town", "contact_number": "0820000001", "suburb": "Green Point", "street": "12 Ridge Way", "postal_code": "8005", "recipient": "Test", "province": "Western Cape", "latitude":-33.9379687, "longitude":18.5006588, "verification_channel": "DESKTOP"}] }


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

Get First Search Option iOS
    [Arguments]    ${search}

    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-10-0/search/autocomplete?query=${search}
    Get    ${search_URL}
    Integer    response status    200
    ${query_result}=    Output    $.suggestions[0].query

    ${searchResult}=    Set Variable    chain=**/XCUIElementTypeStaticText[`label == "${query_result}"`]

    [return]    ${searchResult}

Get First Search Option Android
    [Arguments]    ${search}

    ${search_URL}=    Set Variable    https://api.takealot.com/rest/v-1-10-0/search/autocomplete?query=${search}
    Get    ${search_URL}
    Integer    response status    200
    ${query_result}=    Output    $.suggestions[0].query

    ${searchResult}=    Set Variable    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]

    [return]    ${searchResult}
