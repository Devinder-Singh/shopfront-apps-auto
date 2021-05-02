*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Wishlist Add To Cart
    Wait Until Element Is Visible    ${btnWishlistCart}    30s
    Click Element    ${btnWishlistCart}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    Item added to your cart    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Verify Text On Screen    Product moved to Cart    30s

Click Wishlist Edit
    Click More Options Menu
    Wait Until Element Is Visible    ${btnWishlistEdit}    30s
    Click Element    ${btnWishlistEdit}

Select Wishlist Item
    Wait Until Element Is Visible    ${btnWishlistItemSelect}    30s
    Click Element    ${btnWishlistItemSelect}

Click Wishlist Delete Items
    Wait Until Element Is Visible    ${btnWishlistDelete}    30s
    Click Element    ${btnWishlistDelete}

Verify Wishlist Text
    [Arguments]    ${verifyText}
    Wait Until Page Contains    ${verifyText}    30s

Click Delete Wishlist
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnDeleteWishlist}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnDeleteWishlist}
