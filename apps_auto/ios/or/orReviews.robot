*** Variables ***
${txtReviewMsg}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[5]/XCUIElementTypeTextView
${btnReviewSubmit}      chain=**/XCUIElementTypeButton[`label == "Submit"`]

${btnReviewStarRating}      chain=**/XCUIElementTypeButton[`label == "icon ratingStar"`][3]

${btnNoReviewsDescription}   id=btnNoReviewsDescription 
${btnReviewsSummaryOverallRating}   id=btnReviewsSummaryOverallRating 
${btnReviewsSummaryOverallStarRating}    id=btnReviewsSummaryOverallStarRating
${btnReviewsSummaryOverallRatingCount}   id=btnReviewsSummaryOverallRatingCount 

${btnReviewsContainer}   id=btnReviewsContainer 
${btnReviewsSortButton}  chain=**/XCUIElementTypeButton[`label == "Sort"`][1] 
${btnReviewsSortOptionMostHelpful}   chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[2]
${btnReviewsSortOptionMostRecent}    id=Most Recent
${btnReviewsFilterButton}   xpath=(//XCUIElementTypeButton[@name="btnReviewsFilterButton"])[1]
${btnReviewsFilterClearAllButton}    ${EMPTY}
${btnReviewsFilterApplyButton}   chain=**/XCUIElementTypeButton[`label == "Apply"`]
${btnReviewsFilterDoneButton}   chain=**/XCUIElementTypeButton[`label == "Done"`]  
${btnReviewsFilterOptionRatings}   id=Ratings 
${btnReviewsFilterOptionsRatingsFilter}    chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[2]
${btnReviewsFilterOptionColour}    ${EMPTY}
${btnReviewsFilterOptionsColourFilter}    ${EMPTY}
${btnReviewsFilterOptionSize}    ${EMPTY}
${btnReviewsFilterOptionsSizeFilter}    ${EMPTY}
${btnReviewsUpvoteButton}    ${EMPTY}
${btnReviewsMenuButton}    ${EMPTY}
${btnReviewsReportReviewButton}    ${EMPTY}
${btnReviewsReportReviewText}    ${EMPTY}
${btnReviewsReportReviewDialogButton}    ${EMPTY}