*** Variables ***
${txtReviewMsg}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[5]/XCUIElementTypeTextView
${btnReviewSubmit}      chain=**/XCUIElementTypeButton[`label == "Submit"`]

${btnReviewStarRating}      chain=**/XCUIElementTypeButton[`label == "icon ratingStar"`][3]
${btnReviewUnderstand}      chain=**/XCUIElementTypeButton[`label == "I UNDERSTAND"`]
${btnWriteProdReview}      chain=**/XCUIElementTypeButton[`label == "Write Review"`]

${btnReviewSort}      chain=**/XCUIElementTypeButton[`label == "Sort"`][1]
${lblReviewSortHelpful}      chain=**/XCUIElementTypeStaticText[`label == "Most Helpful"`]
${lblReviewRecent}      chain=**/XCUIElementTypeStaticText[`label == "Most Recent"`]

${btnReviewFilter}      chain=**/XCUIElementTypeButton[`label CONTAINS "Filter"`]
${lblReviewFilterRating}      chain=**/XCUIElementTypeStaticText[`label == "Ratings"`]
${lblReviewFilterFive}      chain=**/XCUIElementTypeStaticText[`label CONTAINS "5"`]
${btnReviewFilterDone}      chain=**/XCUIElementTypeButton[`label == "Done"`]
${btnReviewFilterApply}      chain=**/XCUIElementTypeButton[`label == "Apply"`]

${lblReviewHelpful}      chain=**/XCUIElementTypeStaticText[`label CONTAINS "Helpful"`]
${lblReviewMore}      chain=**/XCUIElementTypeButton[`label == "icon more"`]
${lblReviewReport}      chain=**/XCUIElementTypeButton[`label == "Report Review"`]

${btnNoReviewsDescription}   id=btnNoReviewsDescription
${btnReviewsSummaryOverallRating}   id=btnReviewsSummaryOverallRating
${btnReviewsSummaryOverallStarRating}    id=btnReviewsSummaryOverallStarRating
${btnReviewsSummaryOverallRatingCount}   id=btnReviewsSummaryOverallRatingCount

${btnReviewsContainer}   chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[5]
${btnReviewsSortButton}  chain=**/XCUIElementTypeButton[`label == "Sort"`][1] 
${btnReviewsSortOptionMostHelpful}   chain=**/XCUIElementTypeStaticText[`label == "Most Helpful"`]
${btnReviewsSortOptionMostRecent}    chain=**/XCUIElementTypeStaticText[`label == "Most Recent"`]
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
${btnReviewsUpvoteButton}    chain=**/XCUIElementTypeButton[`label CONTAINS "Helpful"`][1]
${btnReviewsMenuButton}    xpath=(//XCUIElementTypeButton[@name="icon more"])[1]
${btnReviewsReportReviewButton}   id=Report Review
${btnReviewsReportReviewText}    ${EMPTY}
${btnReviewsReportReviewDialogButton}    ${EMPTY}

${btnReviewsStarRating}    chain=**/XCUIElementTypeButton[`label == "icon ratingStar1"`]
${btnReviewsMsg}    chain**/XCUIElementTypeCell[`name == "btnPDPUserReviews"`]

${btnReviewsEdit}    chain=**/XCUIElementTypeButton[`label CONTAINS "Edit"`]
${btnReviewsDelete}    chain=**/XCUIElementTypeButton[`label CONTAINS "Delete"`]
${btnReviewsRemove}    chain=**/XCUIElementTypeButton[`label CONTAINS "Remove"`]
${lblReviewReportReason}    chain=**/XCUIElementTypeStaticText[`label CONTAINS "It is abusive or harmful"`]
