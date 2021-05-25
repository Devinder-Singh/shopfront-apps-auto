*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Navigate to Wishlist
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnWishlistCreate}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnWishlistItems}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnWishListScreen}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnWishlistItems}

Click Create Wishlist
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnWishlistCreate}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnWishlistCreate}
    Enter Wishlist Name
    Click Save Wishlist

Enter Wishlist Name
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${txtWishlistName}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Clear Text    ${txtWishlistName}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Input Text    ${txtWishlistName}    'AutoTestWishlist'

Click Save Wishlist
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnWishlistSave}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnWishlistSave}

Click Wishlist Default
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnWishlistItems}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnWishlistItems}

Navigate to Wishlist Auto
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnWishlistCreate}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnWishlistAuto}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnWishListScreen}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnWishlistAuto}
