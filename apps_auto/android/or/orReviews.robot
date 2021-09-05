*** Variables ***
${txtReviewMsg}      id=${APP_PACKAGE}:id/validation_input_text_input_edit_text
${btnReviewSubmit}      id=${APP_PACKAGE}:id/pdp_write_a_review_submit_button

${btnReviewStarRating}      id=${APP_PACKAGE}:id/pdp_widget_touchable_star_4

${btnReviewSort}      xpath=//*[@text="Sort"][1]
${lblReviewSortHelpful}      xpath=//*[@text="Most Helpful"]
${lblReviewRecent}      xpath=//*[@text="Most Recent"]

${btnReviewFilter}      xpath=//*[@text="Filter"][1]
${lblReviewFilterRating}      xpath=//*[@text="Ratings"]
${lblReviewFilterFive}      xpath=//*[contains(@text, "5")]
${btnReviewFilterDone}      xpath=//*[@text="Done"]
${btnReviewFilterApply}      xpath=//*[@text="Apply"]

${lblReviewHelpful}      xpath=//*[contains(@text, "Helpful")]
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
