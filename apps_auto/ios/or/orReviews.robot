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
${btnReviewsFilterClearAllButton}   id=Clear All 
${btnReviewsFilterApplyButton}   chain=**/XCUIElementTypeButton[`label == "Apply"`]
${btnReviewsFilterDoneButton}   chain=**/XCUIElementTypeButton[`label == "Done"`]  
${btnReviewsFilterOptionRatings}   id=Ratings 
${btnReviewsFilterOptionsRatingsFilter}    chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[2]
${btnReviewsFilterOptionColour}    id=Colour 
${btnReviewsFilterOptionsColourFilter}    id=Black
${btnReviewsFilterOptionSize}    id=Size
${btnReviewsFilterOptionsSizeFilter}    id=UK 5
${btnReviewsUpvoteButton}    xpath=(//XCUIElementTypeButton[@name="btnReviewsUpvoteButton"])[1]
${btnReviewsMenuButton}    xpath=(//XCUIElementTypeButton[@name="icon more"])[1]
${btnReviewsReportReviewButton}   id=Report Review 
${btnReviewsReportReviewText}    ${EMPTY}
${btnReviewsReportReviewDialogButton}    ${EMPTY}