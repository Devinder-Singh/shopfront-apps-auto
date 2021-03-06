*** Variables ***
${btnHome}      id=${APP_PACKAGE}:id/app_root_home
${btnAddWishlist}      id=${APP_PACKAGE}:id/pdpWidgetButtonContainerAddToWishlist
${btnSearchIcon}      xpath=//android.widget.TextView[@content-desc="Search"]

${btnMoreOptions}      xpath=//android.widget.ImageView[@content-desc="More options"]
${btnOptionHome}      xpath=//*[@text="Home"]
${btnOptionCategories}      xpath=//*[@text="Categories"]
${btnOptionDeals}      xpath=//*[@text="Deals"]
${btnOptionLists}      xpath=//*[@text="Lists"]
${btnOptionAccount}      xpath=//*[@text="Account"]

${btnHomeViewAllDailyDeals}      id=${APP_PACKAGE}:id/cmsPageWidgetProductListViewAllText
${btnHomeClearAllRecent}      xpath=//*[@text="CLEAR ALL"]

${btnHomeClearCancelRecent}      id=${APP_PACKAGE}:id/snackbar_action
${btnHomeClearRecent}      ${EMPTY}

${btnHomeDeptDailyDeals}      xpath=//android.widget.TextView[@resource-id='${APP_PACKAGE}:id/cmsPageWidgetImageListItemHeading' and @text='Blue Dot Sale']
${btnHomeDeptAppOnlyDeals}      xpath=//*[@text="App Only Deals"]
${btnHomeDeptHomeCook}      xpath=//*[@text="Home Cook Essentials"]
${btnHomeDeptHealthCare}      xpath=//*[@text="Health & Personal Care"]
${btnHomeBack}      accessibility_id=Navigate up

${btnHomeWishlist}      id=${APP_PACKAGE}:id/cmsPageWidgetProductListSingleItemAddToList
${btnWishListIcon}      accessibility_id=Lists

${btnHomeWishListIcon}      id=${APP_PACKAGE}:id/cmsPageWidgetProductListItemAddToList

${cntHomeDeptIcons}      id=${APP_PACKAGE}:id/shopByDepartmentContainer
${imgHomeWishList}      id=${APP_PACKAGE}:id/cmsPageWidgetProductListItemAddToList

${btnHomeAdClose}      ${EMPTY}
