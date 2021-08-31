*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Navigate to Wishlist
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnWishlistCreate}    30s
    Wait Until Element Is Visible    ${btnWishlistItems}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnWishListScreen}
    Click Element    ${btnWishlistItems}

Click Create Wishlist
    Wait Until Element Is Visible    ${btnWishlistCreate}    30s
    Click Element    ${btnWishlistCreate}
    Enter Wishlist Name
    Click Save Wishlist

Click Create Wishlist Only
    Wait Until Element Is Visible    ${btnWishlistCreate}    30s
    Click Element    ${btnWishlistCreate}

Enter Wishlist Name
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnWishlistSave}    30s
    Wait Until Element Is Visible    ${txtWishlistName}    30s
    Clear Text    ${txtWishlistName}
    Input Text    ${txtWishlistName}    'AutoTestWishlist'

Enter Wishlist Custom Name
    [Arguments]    ${name}

    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnWishlistSave}    30s
    Wait Until Element Is Visible    ${txtWishlistName}    30s
    Clear Text    ${txtWishlistName}
    Input Text    ${txtWishlistName}    ${name}

Click Save Wishlist
    Wait Until Element Is Visible    ${btnWishlistSave}    30s
    Click Element    ${btnWishlistSave}

Click Wishlist Default
    Wait Until Element Is Visible    ${btnWishlistItems}    30s
    Click Element    ${btnWishlistItems}

Navigate to Wishlist Auto
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnWishlistCreate}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnWishlistAuto}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnWishListScreen}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnWishlistAuto}
