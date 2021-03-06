*** Variables ***
${txtReviewMsg}      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[3]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.EditText
${btnReviewSubmit}      id=${APP_PACKAGE}:id/sticky_action_button

${btnReviewUnderstand}      xpath=//*[@text="I UNDERSTAND"]
${btnReviewStarRating}      id=${APP_PACKAGE}:id/touchable_star_4
${btnWriteProdReview}      xpath=(//android.widget.ImageView[@resource-id="${APP_PACKAGE}:id/product_reviews_item_action_button"])[1]

${btnReviewSort}      id=${APP_PACKAGE}:id/sort_button
${lblReviewSortHelpful}      xpath=//*[@text="Most Helpful"]
${lblReviewRecent}      xpath=//*[@text="Most Recent"]

${btnReviewFilter}      xpath=//*[@text="FILTER"][1]
${lblReviewFilterRating}      xpath=//*[@text="Ratings"]
${lblReviewFilterFive}      xpath=//*[contains(@text, "5")]
${btnReviewFilterDone}      xpath=//*[@text="Done"]
${btnReviewFilterApply}      xpath=//*[@text="APPLY"]

${lblReviewHelpful}      xpath=//*[contains(@text, "Helpful")][2]
${lblReviewMore}      xpath=//*[@text="icon more"]
${lblReviewReport}      xpath=//*[@text="Report Review"]

${btnNoReviewsDescription}    id=${APP_PACKAGE}:id/no_reviews_description
${btnReviewsSummaryOverallRating}    id=${APP_PACKAGE}:id/overall_rating
${btnReviewsSummaryOverallStarRating}    id=${APP_PACKAGE}:id/overall_star_rating
${btnReviewsSummaryOverallRatingCount}    id=${APP_PACKAGE}:id/overall_review_count

${btnReviewsContainer}    id=${APP_PACKAGE}:id/reviews_container
${btnReviewsSortButton}    id=${APP_PACKAGE}:id/sort_button
${btnReviewsSortOptionMostHelpful}    xpath=//*[@text="Most Helpful"]
${btnReviewsSortOptionMostRecent}    xpath=//*[@text="Most Recent"]
${btnReviewsFilterButton}    id=${APP_PACKAGE}:id/filter_button
${btnReviewsFilterClearAllButton}    id=${APP_PACKAGE}:id/talMaterialToolbarClearAllButton
${btnReviewsFilterApplyButton}    id=${APP_PACKAGE}:id/productListingFilterApplyButton
${btnReviewsFilterOptionRatings}    xpath=//*[@text="Ratings"]
${btnReviewsFilterOptionsRatingsFilter}    id=${APP_PACKAGE}:id/productListingFilterSingleSelectRatingButton
${btnReviewsFilterOptionColour}    xpath=//*[@text="Colour"]
${btnReviewsFilterOptionsColourFilter}    id=${APP_PACKAGE}:id/productListingFilterSingleSelectButton
${btnReviewsFilterOptionSize}    xpath=//*[@text="Size"]
${btnReviewsFilterOptionsSizeFilter}    id=${APP_PACKAGE}:id/productListingFilterSingleSelectButton
${btnReviewsUpvoteButton}    xpath=//androidx.recyclerview.widget.RecyclerView[contains(@resource-id, 'reviews_container')]//android.widget.Button[contains(@resource-id, 'review_up_vote_button')]
${btnReviewsMenuButton}    xpath=//androidx.recyclerview.widget.RecyclerView[contains(@resource-id, 'reviews_container')]//android.widget.ImageView[contains(@resource-id, 'context_menu_button')]
${btnReviewsReportReviewButton}    id=${APP_PACKAGE}:id/title
${btnReviewsReportReviewText}    id=${APP_PACKAGE}:id/review_reported_success_message
${btnReviewsReportReviewDialogButton}    id=android:id/button1

${btnReviewsStarRating}    id=${APP_PACKAGE}:id/pdp_widget_review_star_item_star_main
${btnReviewsMsg}    id=${APP_PACKAGE}:id/review_message

${btnReviewsEdit}    id=${APP_PACKAGE}:id/Edit
${btnReviewsDelete}    id=${APP_PACKAGE}:id/Delete
${btnReviewsRemove}    id=${APP_PACKAGE}:id/REMOVE
${lblReviewReportReason}      xpath=//*[@text="It is abusive or harmful"]
