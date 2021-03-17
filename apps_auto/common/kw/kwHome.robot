*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Home
    Wait Until Element Is Visible    ${btnHome}    30s
    Click Element    ${btnHome}

Click Add To Wishlist
    Wait Until Element Is Visible    ${btnAddWishlist}    30s
    Click Element    ${btnAddWishlist}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnMoreOptions}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnOptionHome}

Click Search Icon
    Wait Until Element Is Visible    ${btnSearchIcon}    30s
    Click Element    ${btnSearchIcon}
