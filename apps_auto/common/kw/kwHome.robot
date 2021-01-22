*** Settings ***
Library           TalLibrary

*** Keywords ***
Click Home
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnHome}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${btnHome}

Click Add To Wishlist
    Wait Until Element Is Visible    ${btnAddWishlist}    30s
    Click Element    ${btnAddWishlist}

Click Search Icon
    Wait Until Element Is Visible    ${btnSearchIcon}    30s
    Click Element    ${btnSearchIcon}
