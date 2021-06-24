*** Variables ***
${txtReviewMsg}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[5]/XCUIElementTypeTextView
${btnReviewSubmit}      chain=**/XCUIElementTypeButton[`label == "Submit"`]

${btnReviewStarRating}      chain=**/XCUIElementTypeButton[`label == "icon ratingStar"`][3]

${btnNoReviewsDescription}    ${EMPTY}
${btnReviewsSummaryOverallRating}    ${EMPTY}
${btnReviewsSummaryOverallStarRating}    ${EMPTY}
${btnReviewsSummaryOverallRatingCount}    ${EMPTY}

${btnReviewsContainer}    ${EMPTY}
${btnReviewsSortButton}    ${EMPTY}
${btnReviewsSortOptionMostHelpful}    ${EMPTY}
${btnReviewsSortOptionMostRecent}    ${EMPTY}