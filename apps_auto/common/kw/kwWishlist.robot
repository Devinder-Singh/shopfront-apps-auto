*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Wishlist Add To Cart
    Wait Until Element Is Visible    ${btnWishlistCart}    30s
    Click Element    ${btnWishlistCart}
