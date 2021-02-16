*** Variables ***
${btnMenu}        accessibility_id=Navigate up
${btnMenuLogin}    id=${APP_PACKAGE}:id/log_in_item
${btnLogout}      id=${APP_PACKAGE}:id/log_in_item

${btnMenuDailyDeals}    id=${APP_PACKAGE}:id/ddeal_menu_item
${mnuShopByDepartment}    id=${APP_PACKAGE}:id/dept_menu_item
${mnuMyAccount}    id=${APP_PACKAGE}:id/your_account_menu_item
${mnuSportFitness}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.widget.RelativeLayout/androidx.drawerlayout.widget.DrawerLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[3]/android.view.ViewGroup/android.widget.TextView
${btnMenuAddressBook}    id=${APP_PACKAGE}:id/accountOrdersAddressBookSelector
${btnMenuPersonalDetail}    id=${APP_PACKAGE}:id/accountOrdersPersonalDetailsSelector

${btnWishlist}    accessibility_id=My Lists
${btnWishlistItems}    id=${APP_PACKAGE}:id/wishlistListItemContainer
${btnCart}        xpath=//android.widget.ImageView[@content-desc="Cart"]

${btnBackMyAcc}      accessibility_id=Navigate up
