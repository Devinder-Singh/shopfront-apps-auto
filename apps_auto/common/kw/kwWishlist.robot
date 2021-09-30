*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Wishlist Add To Cart
    Wait Until Element Is Visible    ${btnWishlistCart}    30s
    Click Element    ${btnWishlistCart}
    Verify Text On Screen    Item added to your cart    30s
    Sleep    5s

Click Wishlist Edit
    Click More Options Menu
    Wait Until Element Is Visible    ${btnWishlistEdit}    30s
    Click Element    ${btnWishlistEdit}
    Sleep    2s

Click Wishlist Edit iOS
    Wait Until Element Is Visible    ${btnWishlistEdit}    30s
    Click Element    ${btnWishlistEdit}

Verify Wishlist Checked
    ${checkboxStatus}=    Get Checkbox Status    ${chkWishlist}
    Run Keyword If    '${checkboxStatus}'=='False' and '${PLATFORM_NAME}'=='android'    Fail    'Wishlist Checkbox was not selected or not found'

Select Wishlist Item
    Wait Until Element Is Visible    ${btnWishlistItemSelect}    30s
    Click Element    ${btnWishlistItemSelect}

Select Wishlist Item iOS
    Wait Until Element Is Visible    ${btnWishlistItemSelect}    30s
    Click Element    ${btnWishlistItemSelect}

Click Wishlist Delete Items
    Wait Until Element Is Visible    ${btnWishlistDelete}    30s
    Click Element    ${btnWishlistDelete}

Click Wishlist Move Items
    Wait Until Element Is Visible    ${btnWishlistDelete}    30s
    Click Element    ${btnWishlistDelete}

Click Delete Wishlist
    Wait Until Element Is Visible    ${btnDeleteWishlist}    30s
    Click Element    ${btnDeleteWishlist}
    Wait Until Element Is Visible    ${btnDeleteWishlistConfirm}    10s
    Click Element    ${btnDeleteWishlistConfirm}

Click Delete Wishlist Only
    Wait Until Element Is Visible    ${btnDeleteWishlist}    30s
    Click Element    ${btnDeleteWishlist}

Click Delete Wishlist Cancel
    Wait Until Element Is Visible    ${btnDeleteWishlistCancel}    10s
    Click Element    ${btnDeleteWishlistCancel}

Click Wishlist Continue Shopping
    Wait Until Element Is Visible    ${btnWishlistContinueShop}    30s
    Click Element    ${btnWishlistContinueShop}
