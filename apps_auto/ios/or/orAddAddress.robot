*** Variables ***
${btnResidential}      chain=**/XCUIElementTypeStaticText[`label == "Residential"`]
${txtRecipientName}    chain=**/XCUIElementTypeTable/XCUIElementTypeCell[5]/XCUIElementTypeTextField
${txtRecipientMobile}    chain=**/XCUIElementTypeTable/XCUIElementTypeCell[6]/XCUIElementTypeTextField
${txtRecipientStreet}    chain=**/XCUIElementTypeTable/XCUIElementTypeCell[7]/XCUIElementTypeTextField

${txtBusinessName}      chain=**/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[8]/XCUIElementTypeTextField

${btnSaveAddress}   id=Save

${txtRecipientPostCode}      xpath=//XCUIElementTypeApplication[@name="takealot"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[12]/XCUIElementTypeTextField

${txtRecipientNameMyAcc}      chain=**/XCUIElementTypeTable/XCUIElementTypeCell[5]/XCUIElementTypeTextField
${txtRecipientMobileMyAcc}      chain=**/XCUIElementTypeTable/XCUIElementTypeCell[6]/XCUIElementTypeTextField
${txtRecipientStreetMyAcc}      chain=**/XCUIElementTypeTable/XCUIElementTypeCell[7]/XCUIElementTypeTextField
${txtRecipientCityMyAcc}      chain=**/XCUIElementTypeTable/XCUIElementTypeCell[10]/XCUIElementTypeTextField
${txtRecipientSuburbMyAcc}      chain=**/XCUIElementTypeTable/XCUIElementTypeCell[9]/XCUIElementTypeTextField
${txtRecipientComplexMyAcc}      chain=**/XCUIElementTypeTable/XCUIElementTypeCell[8]/XCUIElementTypeTextField

${lblAddAddress}      chain=**/XCUIElementTypeStaticText[`label == "Add Delivery Address"`]
${lblEditAddress}      chain=**/XCUIElementTypeStaticText[`label == "Edit Delivery Address"`]
${btnAddressMobileQuestion}      chain=**/XCUIElementTypeButton[`label == "icon question green"`]
${btnAddressGotItThanks}      chain=**/XCUIElementTypeButton[`label == "Got it, thanks!"`]
${txtAddressProvince}      chain=**/XCUIElementTypeTextField[`value == "Western Cape"`]
${navAddressProvince}      chain=**/XCUIElementTypeNavigationBar[`name == "Provinces"`]

${lblAddressBusiness}      chain=**/XCUIElementTypeStaticText[`label == "Business"`]
${txtBusinessNameMyAcc}      chain=**XCUIElementTypeTable/XCUIElementTypeCell[8]/XCUIElementTypeTextField

${lblAddresOption}      chain=**/XCUIElementTypeStaticText[`label CONTAINS "13 Caro Road, Robertsham, Johannesburg South"`]
${lblAddresOptionChanged}      chain=**/XCUIElementTypeStaticText[`label CONTAINS "13 Caro Road, Robertsham, Johannesburg South, Gauteng, 8007"`]
${lytAddressType}      chain=**/XCUIElementTypeNavigationBar[`name == "Address Type"`]

${lblEditAddressBusiness}      chain=**/XCUIElementTypeStaticText[`label == "EDIT"`]
${txtSearchAddressOnMap}      chain=**/XCUIElementTypeTextField[`value == "Enter your street address"`]

${lblEditAddressMapLocation}      chain=**/XCUIElementTypeButton[`label == "USE THIS LOCATION"`]

${lblRecepientMobile}      chain=**/XCUIElementTypeStaticText[`label == "RECIPIENT MOBILE NUMBER"`]
${txtRecipientPostCodeEdit}      chain=**XCUIElementTypeTable/XCUIElementTypeCell[12]/XCUIElementTypeTextField
${lblRecepientPostCode}      chain=**/XCUIElementTypeStaticText[`label == "CITY / TOWN"`]

${lblAddresOptionMyAcc}      chain=**/XCUIElementTypeStaticText[`label CONTAINS "12 Ridge Way, Green Point, Cape Town, Western Cape, 8007"`]
${lblAddresOptionMyAccMap}      chain=**/XCUIElementTypeStaticText[`label == "12 Ridge Way, Pinelands, Cape Town, South Africa"`]

${lblAddresOptionMyAccSuburb}      chain=**/XCUIElementTypeTextField[`value == "Western Cape"`]
${lblAddresMyAccSuburb}      chain=**/XCUIElementTypeStaticText[`label == "Gauteng"`]

${lblAddresOptionMyAccGauteng}      chain=**/XCUIElementTypeStaticText[`label == "12 Ridge Way, Green Point, Cape Town, Gauteng, 8007"`]

${lblAddresOptionMyAccMapSuburb}      chain=**/XCUIElementTypeStaticText[`label == "13 Caro Road, Robertsham, Johannesburg South, South Africa"`]

${btnAddressDelete}    chain=**/XCUIElementTypeButton[`label == "DELETE"`]