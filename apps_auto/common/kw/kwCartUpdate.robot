*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Cart Update Continue Checkout
    Wait Until Element Is Visible    ${btnUpdateCartContinueCheckout}    30s
    Click Element    ${btnUpdateCartContinueCheckout}

Click Cart Update Back To Cart
    Wait Until Element Is Visible    ${btnUpdateCartBackToCart}    30s
    Click Element    ${btnUpdateCartBackToCart}
