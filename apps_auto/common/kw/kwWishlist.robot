*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Wishlist Add To Cart
    [Arguments]    ${checkText}=${True}
    Wait Until Element Is Visible    ${btnWishlistCart}    ${MIN_TIMEOUT}
    Click Element    ${btnWishlistCart}

    IF    ${checkText} == ${True}
        Verify Text On Screen    Item added to your cart    ${MAX_TIMEOUT}
    END
    # Sleep for toast to dismiss
    IF    '${PLATFORM_NAME}'=='ios'
        Sleep    7s
    END

Click Wishlist Edit
    Click More Options Menu
    Wait Until Element Is Visible    ${btnWishlistEdit}    ${MIN_TIMEOUT}
    Click Element    ${btnWishlistEdit}
#    Sleep    2s

Click Wishlist Edit iOS
    Wait Until Element Is Visible    ${btnWishlistEdit}    ${MIN_TIMEOUT}
    Click Element    ${btnWishlistEdit}

Click Wishlist Move to List
    Wait Until Element Is Visible    ${btnWishlistMoveToList}    ${MIN_TIMEOUT}
    Click Element    ${btnWishlistMoveToList}

Verify Wishlist Checked
    ${checkboxStatus}=    Get Checkbox Status    ${chkWishlist}
    IF    ${checkboxStatus} == ${False} and '${PLATFORM_NAME}' == 'android'
        Fail    'Wishlist Checkbox was not selected or not found'
    END
    
Select Wishlist Item
    Wait Until Element Is Visible    ${btnWishlistItemSelect}    ${MIN_TIMEOUT}
    Click Element    ${btnWishlistItemSelect}

Select Wishlist Item iOS
    Wait Until Element Is Visible    ${btnWishlistItemSelect}    ${MIN_TIMEOUT}
    Click Element    ${btnWishlistItemSelect}

Click Wishlist Delete Items
    Wait Until Element Is Visible    ${btnWishlistDelete}    ${MIN_TIMEOUT}
    Click Element    ${btnWishlistDelete}

Click Wishlist Delete Items Undo
    Wait Until Element Is Visible    ${btnWishlistDeleteUndo}    ${MIN_TIMEOUT}
    Click Element    ${btnWishlistDeleteUndo}

Click Wishlist Move Items
    Wait Until Element Is Visible    ${btnWishlistDelete}    ${MIN_TIMEOUT}
    Click Element    ${btnWishlistDelete}

Click Delete Wishlist
    Wait Until Element Is Visible    ${btnDeleteWishlist}    ${MIN_TIMEOUT}
    Click Element    ${btnDeleteWishlist}
    Wait Until Element Is Visible    ${btnDeleteWishlistConfirm}    ${MIN_TIMEOUT}
    Click Element    ${btnDeleteWishlistConfirm}

Click Rename Wishlist
    Wait Until Element Is Visible    ${btnRenameWishlist}    ${MIN_TIMEOUT}
    Click Element    ${btnRenameWishlist}

Click Delete Wishlist Only
    Wait Until Element Is Visible    ${btnDeleteWishlist}    ${MIN_TIMEOUT}
    Click Element    ${btnDeleteWishlist}

Click Delete Wishlist Cancel
    Wait Until Element Is Visible    ${btnDeleteWishlistCancel}    ${MIN_TIMEOUT}
    Click Element    ${btnDeleteWishlistCancel}

Click Delete Wishlist Items Cancel iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnDeleteWishlistItemsCancel}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${btnDeleteWishlistItemsCancel}

Click Wishlist Continue Shopping
    Wait Until Element Is Visible    ${btnWishlistContinueShop}    ${MIN_TIMEOUT}
    Click Element    ${btnWishlistContinueShop}
