*** Variables ***
${btnProductFilterCategory}      id=Category
${btnProductFilterOfficeStationery}      id=Office & Stationery

${btnProductFilterSelect}      chain=**/XCUIElementTypeButton[`label == "Done"`]
${btnProductFilterApply}      chain=**/XCUIElementTypeButton[`label CONTAINS "Show"`]

${btnProductFilterAvailability}      id=Availability
${btnProductFilterInStock}      id=In Stock

${btnProductFilterBrand}      id=Brand
${btnProductFilterBrandName}      id=Meeco

${btnProductFilterColour}      id=Colour
${btnProductFilterColourName}      id=Blue

${btnProductFilterMaterial}      id=Material
${btnProductFilterMaterialName}      id=Nylon

${btnProductFilterRating}      id=Rating
${btnProductFilterRatingName}      chain=**/XCUIElementTypeStaticText[`label CONTAINS "4"`]

${btnProductFilterShowAll}      chain=**/XCUIElementTypeStaticText[`label == "Show all Items"`]
${btnProductFilterClearAll}      chain=**/XCUIElementTypeButton[`label == "Clear All"`]
