*** Variables ***
${btnMenu}        id=${APP_PACKAGE}:id/app_root_account
${btnMenuLogin}    id=${APP_PACKAGE}:id/accountLogin
${btnLogout}      id=${APP_PACKAGE}:id/accountLogout
${btnMenuRegister}    id=${APP_PACKAGE}:id/accountRegisterToolTip2

${btnMenuDailyDeals}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[1]
${mnuShopByDepartment}    id=${APP_PACKAGE}:id/dept_menu_item
${mnuSportFitness}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[5]
${mnuMyAccount}    id=${APP_PACKAGE}:id/your_account_menu_item
${btnMenuAddressBook}    id=${APP_PACKAGE}:id/accountAddressBookSelector
${btnMenuPersonalDetail}    id=${APP_PACKAGE}:id/accountPersonalDetailsSelector

${btnBackMyAcc}      accessibility_id=Navigate up
${btnWishlist}    id=${APP_PACKAGE}:id/app_root_lists
${btnWishlistItems}    id=${APP_PACKAGE}:id/wishlistListItemContainer
${btnCart}        xpath=//android.widget.ImageView[@content-desc="Cart"]

${btnMenuOrders}    id=${APP_PACKAGE}:id/accountOrdersSelector
${btnMenuCategories}        id=${APP_PACKAGE}:id/app_root_categories

${btnWishlistCreate}    id=${APP_PACKAGE}:id/wishlistListsCreateNewList

${btnDealsNotification}    id=${APP_PACKAGE}:id/no
