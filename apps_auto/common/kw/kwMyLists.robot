*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Navigate to Wishlist
    IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Element Is Visible    ${btnWishlistCreate}    ${MIN_TIMEOUT}
        Click Element    ${btnWishListScreen}
        Wait Until Element Is Visible    ${btnWishlistItems}    ${MIN_TIMEOUT}
        Click Element    ${btnWishlistItems}
    ELSE
        Wait Until Element Is Visible    ${btnWishlistItems}    ${MIN_TIMEOUT}
        Click Element    ${btnWishlistItems}
    END
    

Click Create Wishlist
    Wait Until Element Is Visible    ${btnWishlistCreate}    ${MIN_TIMEOUT}
    Click Element    ${btnWishlistCreate}
    Enter Wishlist Name
    Click Save Wishlist

Edit and Save Wishlist
    Enter Wishlist Name    AutoTestNow
    Click Save Wishlist

Click Create Wishlist Only
    Wait Until Element Is Visible    ${btnWishlistCreate}    ${MIN_TIMEOUT}
    Click Element    ${btnWishlistCreate}

Enter Wishlist Name
    [Arguments]    ${name}='AutoTestWishlist'

    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnWishlistSave}    ${MIN_TIMEOUT}
    Wait Until Element Is Visible    ${txtWishlistName}    ${MIN_TIMEOUT}
    Clear Text    ${txtWishlistName}
    Input Text    ${txtWishlistName}    'AutoTestWishlist'

Enter Wishlist Custom Name
    [Arguments]    ${name}
    IF    '${PLATFORM_NAME}' == 'ios'
        Wait Until Element Is Visible    ${btnWishlistSave}    ${MIN_TIMEOUT}
    END

    Wait Until Element Is Visible    ${txtWishlistName}    ${MIN_TIMEOUT}
    Clear Text    ${txtWishlistName}
    Input Text    ${txtWishlistName}    ${name}

Click Save Wishlist
    Wait Until Element Is Visible    ${btnWishlistSave}    ${MIN_TIMEOUT}
    Click Element    ${btnWishlistSave}

Click Wishlist Default
    Wait Until Keyword Succeeds    3    5s    Wait Until Element Is Visible    ${btnWishlistItems}    ${MIN_TIMEOUT}
    Click Element    ${btnWishlistItems}

Navigate to Wishlist Auto
    IF    '${PLATFORM_NAME}' == 'android'
        Wait Until Element Is Visible    ${btnWishlistCreate}    ${MIN_TIMEOUT}
        Wait Until Element Is Visible    ${btnWishlistAuto}    ${MIN_TIMEOUT}
        Click Element    ${btnWishListScreen}
        Click Element    ${btnWishlistAuto}
    ELSE
        Wait Until Element Is Visible    ${btnWishlistAuto}    ${MIN_TIMEOUT}
        Click Element    ${btnWishlistAuto}
    END
