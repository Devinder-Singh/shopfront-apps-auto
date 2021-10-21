*** Variables ***
${btnWishlistCart}      id=${APP_PACKAGE}:id/wishlistProductItemAddToCart
${btnWishlistEdit}      xpath=//*[@text="Edit"]
${btnWishlistItemSelect}      id=${APP_PACKAGE}:id/wishlistProductItemTitle
${btnWishlistDelete}      accessibility_id=Delete

${btnDeleteWishlist}      xpath=//*[@text="Delete List"]
${btnDeleteWishlistConfirm}      xpath=//*[@text="DELETE"]
${btnDeleteWishlistCancel}      xpath=//*[@text="CANCEL"]

${chkWishlist}      id=${APP_PACKAGE}:id/talWidgetMultiSelectItemCheckbox

${btnWishlistMove}      xpath=//*[@text="Move"]

${btnWishlistAdd}      xpath=//*[@text="icon plus"]

${btnWishlistContinueShop}      xpath=//*[@text="Start Shopping"]

${btnWishlistMoveToList}      accessibility_id=Move to List
${btnWishlistSAVE}      xpath=//*[@text="SAVE"]
${btnWishlistPlusIcon}      accessibility_id=Option action

${btnWishlistDeleteUndo}    id=${APP_PACKAGE}:id/snackbar_action

${btnDeleteWishlistItemsCancel}      ${EMPTY}

${btnRenameWishlist}      xpath=//*[@text="Rename List"]
