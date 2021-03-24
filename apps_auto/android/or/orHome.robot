*** Variables ***
${btnHome}      id=${APP_PACKAGE}:id/app_root_home
${btnAddWishlist}      id=${APP_PACKAGE}:id/pdpWidgetButtonContainerAddToWishlist
${btnSearchIcon}      xpath=//android.widget.TextView[@content-desc="Search"]

${btnMoreOptions}      xpath=//android.widget.ImageView[@content-desc="More options"]
${btnOptionHome}      xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.TextView

${btnHomeViewAllDailyDeals}      id=${APP_PACKAGE}:id/cmsPageWidgetProductListViewAllText
${btnHomeClearAllRecent}      id=${APP_PACKAGE}:id/cmsPageWidgetProductListViewAllText

${btnHomeClearCancelRecent}      id=${APP_PACKAGE}:id/snackbar_action
${btnHomeClearRecent}      ${EMPTY}

${btnHomeDeptDailyDeals}      xpath=//*[@text="Daily Deals"][2]
${btnHomeDeptAppOnlyDeals}      xpath=//*[@text="App Only Deals"]
${btnHomeDeptHomeCook}      xpath=//*[@text="Home Cook Essentials"]
${btnHomeDeptHealthCare}      xpath=//*[@text="Health & Personal Care"]
${btnHomeBack}      accessibility_id=Navigate up

${btnHomeWishlist}      id=${APP_PACKAGE}:id/cmsPageWidgetProductListSingleItemAddToList
