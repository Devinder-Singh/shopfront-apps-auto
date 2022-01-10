*** Variables ***
${btnSearchHome}      chain=**/XCUIElementTypeSearchField[1]
${btnSearchClearAll}      chain=**/XCUIElementTypeButton[`label == "Clear All"`]

${txtSearch}      ${EMPTY}

${btnSearchRecent}      id=pencil case
${btnSearchTrending}      id=masks

${btnSearchClearText}      chain=**/XCUIElementTypeButton[`label == "Clear text"`]