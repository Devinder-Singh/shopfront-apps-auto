*** Settings ***
Default Tags      regression
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Search - QA-5358
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Home WishList
    Click Wishlist
    Click Wishlist Edit
    Select Wishlist Item
    Click Wishlist Delete
    Verify Wishlist Text    No items
    [Teardown]    Tear Down
