*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Login Takealot API
    [Arguments]    ${email}    ${password}
    Post Login Takealot    ${email}    ${password}

Add To Cart Takealot API
    Post Add Product To Cart    any

Add TV To Cart Takealot API
    Post Add Product To Cart    tv

Add Liquor To Cart Takealot API
    Post Add Product To Cart    liquor

Add Heavy Item To Cart Takealot API
    Post Add Product To Cart    heavy

Remove From Cart Takealot API
    Post Remove Product To Cart
