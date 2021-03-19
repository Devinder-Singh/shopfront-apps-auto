*** Settings ***
Default Tags      regression
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Register & Login - QA-5329
    [Setup]    Start Application
    Click Menu
    Click Menu Register
    Register Takealot    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}
    Verify Register Text    Please enter your first name
    Verify Register Text    Please enter your surname
    Verify Register Text    Please enter your email address
    Verify Register Text    Please enter your password
    Verify Register Text    Please confirm your password
    Click Back My Account
    Click Menu Register
    Register Takealot    AutoTest    Test    AutoTest10@take2.co.za    t@ke@!ot1234
    Click Back My Account
    Click Menu
    Click Menu Logout
    Click Menu Login
    Login Takealot    ${EMPTY}    ${EMPTY}
    Verify Register Text    Please enter your email address
    Verify Register Text    Please enter your password
    Login Takealot    AutoTest10@take2.co.za    t@ke@!ot1234
    Click Home
    Click Menu
    Click Menu Logout
    [Teardown]    Tear Down

Apps > Promotions (Android) - QA-5357
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Click Menu Daily Deals
    Verify Product Image
    Click Product Filter
    Select Filter Option    Baby & Toddler
    Click Apply Filter
    Click Product Daily Deals
    Click Add To Cart
    Click Increase Cart Quantity    4
    Click Go To Cart
    Click Item Promotion Text
    Verify Checkout Text    4 x R 
    Verify Checkout Text    1 x R 
    Verify Checkout Text    Daily Deals
    Verify Checkout Text    Only 4 per customer
    Verify Checkout Text    Normal Price
    Verify Checkout Text    Item Total
    [Teardown]    Tear Down

Apps > Promotions (Android) 02 - QA-5357
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Click Menu Daily Deals
    Click App Only Deals
    Verify Product Image
    Click Product Filter
    Select Filter Option    Cellphones & Wearables
    Click Apply Filter
    Click Product Daily Deals
    Click Add To Cart
    Click Increase Cart Quantity    4
    Click Go To Cart
    Click Item Promotion Text
    Verify Checkout Text    4 x R 
    Verify Checkout Text    1 x R 
    Verify Checkout Text    App Only Deals
    Verify Checkout Text    Only 4 per customer
    Verify Checkout Text    Normal Price
    Verify Checkout Text    Item Total
    [Teardown]    Tear Down

Apps > Promotions (Android) 03 - QA-5357
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Click Menu Daily Deals
    Click Wine Club Deals
    Verify Product Image
    Click Product Filter
    Select Filter Option    Home & Kitchen
    Click Apply Filter
    Click Product Daily Deals
    Click Add To Cart
    Click Increase Cart Quantity    4
    Click Go To Cart
    Click Item Promotion Text
    Verify Checkout Text    5 x R 
    Verify Checkout Text    Item Total
    [Teardown]    Tear Down
