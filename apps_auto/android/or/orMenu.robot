*** Variables ***
${btnMenu}        id=${APP_PACKAGE}:id/app_root_account
${btnMenuLogin}    id=${APP_PACKAGE}:id/accountLogin
${btnLogout}      id=${APP_PACKAGE}:id/accountLogout
${btnMenuRegister}    id=${APP_PACKAGE}:id/accountRegisterToolTip2

${btnMenuDailyDeals}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[1]
${mnuShopByDepartment}    id=${APP_PACKAGE}:id/dept_menu_item
${mnuSportFitness}    xpath=//*[@text="Fragrance Sale"]
${mnuMyAccount}    id=${APP_PACKAGE}:id/your_account_menu_item
${btnMenuAddressBook}    id=${APP_PACKAGE}:id/accountAddressBookSelector
${btnMenuPersonalDetail}    id=${APP_PACKAGE}:id/accountPersonalDetailsSelector

${btnBackMyAcc}      accessibility_id=Navigate up
${btnWishlist}    id=${APP_PACKAGE}:id/app_root_lists
${btnCart}        xpath=//android.widget.ImageView[@content-desc="Cart"]

${btnMenuOrders}    id=${APP_PACKAGE}:id/accountOrdersSelector
${btnMenuExchReturns}    id=${APP_PACKAGE}:id/accountExchangesAndReturnsSelector
${btnMenuGiftVoucher}    id=${APP_PACKAGE}:id/accountLoadGiftVoucherSelector
${btnMenuCreditRefunds}    id=${APP_PACKAGE}:id/accountCreditRefundsSelector

${btnMenuCategories}        id=${APP_PACKAGE}:id/app_root_categories

${btnDealsNotification}    id=${APP_PACKAGE}:id/no
${btnMenuNewToElec}      xpath=//*[@text="New To Electronics"]

${cntMenuAccountScroll}    id=${APP_PACKAGE}:id/accountScrollContainer

${btnMenuSettings}      xpath=//*[@text="Settings"]
${btnMenuTakealotGroup}      xpath=//*[@text="Takealot Group"]
${btnMenuHelp}      xpath=//*[@text="Help"]
