*** Settings ***
Default Tags      regression
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Search and Buy Item on Delivery using Credit Card
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Click Address
    Click Free Delivery
    Click Donate No Thanks
    Click Change Payment Method
    Click Card Payment Method
    Click Pay With Credit Card
    Verify Card Payment    Card Number
    [Teardown]    Tear Down

#orProductList
#orSort
#orFilter

#Apps > PLP 04 - QA-5360
#    [Setup]    Start Application
#    Clear Environment
#    Click Menu
#    Search Product    pencil
#    Click First Product from API
#    Click Back My Account
#    Click Home
#    Search Product    pencil
#    Click First Product from API
#    Click More Options
#    Click Options Menu Home
#    Click Home
#    Search Product    pencil
#    Click First Product from API
#    Click More Options
#    Click Options Menu Categories
#    Verify Text On Screen    Daily Deals
#    Click Home
#    Search Product    pencil
#    Click First Product from API
#    Click More Options
#    Click Options Menu Deals
#    Click Home
#    Search Product    pencil
#    Click First Product from API
#    Click More Options
#    Click Options Menu Lists
#    Verify Text On Screen    Wish List
#    Click Home
#    Search Product    pencil
#    Click First Product from API
#    Click More Options
#    Click Options Menu Account
#    Verify Text On Screen    Personal Details
