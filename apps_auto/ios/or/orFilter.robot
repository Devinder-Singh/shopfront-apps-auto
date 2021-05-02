*** Variables ***
${btnProductFilterCategory}      id=Category
${btnProductFilterOfficeStationery}      id=Office & Stationery

${btnProductFilterSelect}      chain=**/XCUIElementTypeButton[`label == "Done"`]
${btnProductFilterApply}      xpath=//XCUIElementTypeButton[contain(@name,"Show")]

${btnProductFilterAvailability}      id=Availability
${btnProductFilterInStock}      id=In Stock

${btnProductFilterBrand}      id=Brand
${btnProductFilterBrandName}      id=Meeco

${btnProductFilterColour}      id=Colour
${btnProductFilterColourName}      id=Blue

${btnProductFilterMaterial}      id=Material
${btnProductFilterMaterialName}      id=Nylon

${btnProductFilterRating}      id=Rating
${btnProductFilterRatingName}      id=4 and up
