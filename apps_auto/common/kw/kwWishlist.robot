*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Wishlist Add To Cart
    Wait Until Element Is Visible    ${btnWishlistCart}    30s
    Click Element    ${btnWishlistCart}
    Verify Text On Screen    Item added to your cart    30s

Click Wishlist Edit
    Click More Options Menu
    Wait Until Element Is Visible    ${btnWishlistEdit}    30s
    Click Element    ${btnWishlistEdit}
    Sleep    2s

Click Wishlist Edit iOS
    Wait Until Element Is Visible    ${btnWishlistEdit}    30s
    Click Element    ${btnWishlistEdit}

Select Wishlist Item
    Wait Until Element Is Visible    ${btnWishlistItemSelect}    30s
    Click Element    ${btnWishlistItemSelect}

Select Wishlist Item iOS
    Wait Until Element Is Visible    ${btnWishlistItemSelect}    30s
    Click Element    ${btnWishlistItemSelect}

Click Wishlist Delete Items
    Wait Until Element Is Visible    ${btnWishlistDelete}    30s
    Click Element    ${btnWishlistDelete}

Click Delete Wishlist
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnDeleteWishlist}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnDeleteWishlist}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnDeleteWishlistConfirm}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnDeleteWishlistConfirm}
