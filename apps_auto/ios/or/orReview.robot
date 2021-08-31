*** Variables ***
${txtReviewMsg}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[5]/XCUIElementTypeTextView
${btnReviewSubmit}      chain=**/XCUIElementTypeButton[`label == "Submit"`]

${btnReviewStarRating}      chain=**/XCUIElementTypeButton[`label == "icon ratingStar"`][3]

${btnReviewSort}      chain=**/XCUIElementTypeButton[`label == "Sort"`][1]
${lblReviewSortHelpful}      chain=**/XCUIElementTypeStaticText[`label == "Most Helpful"`]
${lblReviewRecent}      chain=**/XCUIElementTypeStaticText[`label == "Most Recent"`]

${btnReviewFilter}      chain=**/XCUIElementTypeButton[`label == "Filter"`][1]
${lblReviewFilterRating}      chain=**/XCUIElementTypeStaticText[`label == "Ratings"`]
${lblReviewFilterFive}      chain=**/XCUIElementTypeStaticText[`label CONTAINS "5"`]
${btnReviewFilterDone}      chain=**/XCUIElementTypeButton[`label == "Done"`]
${btnReviewFilterApply}      chain=**/XCUIElementTypeButton[`label == "Apply"`]

${lblReviewHelpful}      chain=**/XCUIElementTypeButton[`label CONTAINS "Helpful"`]
${lblReviewMore}      chain=**/XCUIElementTypeButton[`label == "icon more"`]
${lblReviewReport}      chain=**/XCUIElementTypeButton[`label == "Report Review"`]
