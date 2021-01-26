*** Settings ***
Library    Collections
Library    REST

*** Variables ***
${cart_URL}    http://tal-test-data-service.test-automation-platform.env/remove_products_in_cart
${cart_Body}    { "email": "take2Automation+201905211152@gmail.com", "password": "t@ke@!ot1234", "customer_id": "4933518", "env": "takealot.com" }

${wishlist_URL}    http://tal-test-data-service.test-automation-platform.env/clear_customer_wishlists
${wishlist_Body}    { "namespace": "takealot", "customer_id":4933518, "email": "take2Automation+201905211152@gmail.com", "password": "t@ke@!ot1234" }

${address_URL}    http://tal-test-data-service.test-automation-platform.env/clear_add_customer_addresses
${address_Body}    { "email": "take2Automation+201905211152@gmail.com", "password": "t@ke@!ot1234", "customer_id":4933518, "namespace": "takealot", "add_default_address":true, "addresses": [{"address_type": "residential", "city": "Cape Town", "contact_number": "0820000000", "suburb": "Green Point", "street": "12 Ridge Way", "postal_code": "8005", "recipient": "Test", "province": "Western Cape", "latitude":-33.9379687, "longitude":18.5006588, "verification_channel": "DESKTOP"}] }


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
