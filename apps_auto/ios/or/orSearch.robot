*** Variables ***
${btnSearch}      chain=**/XCUIElementTypeTextField[`value == "Search for products, brands..."`]
${txtSearch}      chain=**/XCUIElementTypeSearchField[`label == "Search for products, brands..."`]
${btnSearchOption}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[2]
