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
