*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Cart Update Continue Checkout
    Wait Until Element Is Visible    ${btnUpdateCartContinueCheckout}    ${MIN_TIMEOUT}
    Click Element    ${btnUpdateCartContinueCheckout}

Click Cart Update Back To Cart
    Wait Until Element Is Visible    ${btnUpdateCartBackToCart}    ${MIN_TIMEOUT}
    Click Element    ${btnUpdateCartBackToCart}
