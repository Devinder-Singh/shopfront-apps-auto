*** Variables ***
${btnSearchHome}      chain=**/XCUIElementTypeSearchField[`label == "Search for products, brands..."`]
${btnSearchClearAll}      chain=**/XCUIElementTypeButton[`label == "Clear All"`]

${txtSearch}      ${EMPTY}

${btnSearchRecent}      id=pencil case
${btnSearchTrending}      id=masks
