*** Settings ***
Default Tags      regression
Resource          ../common/config/defaultConfig.robot
Library           TalLibrary

*** Test Cases ***
Apps > Cart Update & Cart Notification - QA-5362
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout Move To Wishlist First Item
    [Teardown]    Tear Down
