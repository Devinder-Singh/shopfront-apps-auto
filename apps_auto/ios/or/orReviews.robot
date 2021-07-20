*** Variables ***
${txtReviewMsg}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[5]/XCUIElementTypeTextView
${btnReviewSubmit}      chain=**/XCUIElementTypeButton[`label == "Submit"`]

${btnReviewStarRating}      chain=**/XCUIElementTypeButton[`label == "icon ratingStar"`][3]

${btnNoReviewsDescription}   id=btnNoReviewsDescription 
${btnReviewsSummaryOverallRating}   id=btnReviewsSummaryOverallRating 
${btnReviewsSummaryOverallStarRating}    id=btnReviewsSummaryOverallStarRating
${btnReviewsSummaryOverallRatingCount}   id=btnReviewsSummaryOverallRatingCount 

${btnReviewsContainer}   id=btnReviewsContainer 
${btnReviewsSortButton}    ${EMPTY}
${btnReviewsSortOptionMostHelpful}    ${EMPTY}
${btnReviewsSortOptionMostRecent}    ${EMPTY}
${btnReviewsFilterButton}    ${EMPTY}
${btnReviewsFilterClearAllButton}    ${EMPTY}
${btnReviewsFilterApplyButton}    ${EMPTY}
${btnReviewsFilterOptionRatings}    ${EMPTY}
${btnReviewsFilterOptionsRatingsFilter}    ${EMPTY}
${btnReviewsFilterOptionColour}    ${EMPTY}
${btnReviewsFilterOptionsColourFilter}    ${EMPTY}
${btnReviewsFilterOptionSize}    ${EMPTY}
${btnReviewsFilterOptionsSizeFilter}    ${EMPTY}
${btnReviewsUpvoteButton}    ${EMPTY}
${btnReviewsMenuButton}    ${EMPTY}
${btnReviewsReportReviewButton}    ${EMPTY}
${btnReviewsReportReviewText}    ${EMPTY}
${btnReviewsReportReviewDialogButton}    ${EMPTY}