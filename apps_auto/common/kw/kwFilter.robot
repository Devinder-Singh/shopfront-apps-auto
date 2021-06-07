*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Filter Category
    Wait Until Element Is Visible    ${btnProductFilterCategory}    30s
    Click Element    ${btnProductFilterCategory}

Click Filter Office Stationery
    Wait Until Element Is Visible    ${btnProductFilterOfficeStationery}    30s
    Click Element    ${btnProductFilterOfficeStationery}

Click Filter Select Button
    Wait Until Element Is Visible    ${btnProductFilterSelect}    30s
    Click Element    ${btnProductFilterSelect}

Click Filter Select Button iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnProductFilterSelect}    30s
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${btnProductFilterSelect}

Click Filter Apply Button
    Wait Until Element Is Visible    ${btnProductFilterApply}    30s
    Click Element    ${btnProductFilterApply}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnProductSearchFilter}    2s

        Run Keyword If
            ...    ${chkProdVisible}==True
            ...    Exit For Loop

        ${chkProdVisible}=    Run Keyword And Return Status    Click Element    ${btnProductFilterApply}
        Run Keyword If
            ...    ${chkProdVisible}==False
            ...    Exit For Loop

        ${index}=    Evaluate    ${index} + 1
    END
    Wait Until Element Is Visible    ${btnProductSearchFilter}    2s

Click Filter Availability
    Wait Until Element Is Visible    ${btnProductFilterAvailability}    30s
    Click Element    ${btnProductFilterAvailability}

Click Filter In Stock
    Wait Until Element Is Visible    ${btnProductFilterInStock}    30s
    Click Element    ${btnProductFilterInStock}

Click Filter Brand
    Wait Until Element Is Visible    ${btnProductFilterBrand}    30s
    Click Element    ${btnProductFilterBrand}

Click Filter Clear All
    Wait Until Element Is Visible    ${btnProductFilterClearAll}    30s
    Click Element    ${btnProductFilterClearAll}
    Wait Until Element Is Visible    ${btnProductFilterShowAll}    30s
    Click Element    ${btnProductFilterShowAll}

Click Filter Brand Name
    Wait Until Element Is Visible    ${btnProductFilterBrandName}    30s
    Click Element    ${btnProductFilterBrandName}

Click Filter Colour
    Wait Until Element Is Visible    ${btnProductFilterColour}    30s
    Click Element    ${btnProductFilterColour}

Click Filter Colour Name
    Wait Until Element Is Visible    ${btnProductFilterColourName}    30s
    Click Element    ${btnProductFilterColourName}

Click Filter Material
    Wait Until Element Is Visible    ${btnProductFilterMaterial}    30s
    Click Element    ${btnProductFilterMaterial}

Click Filter Material Name
    Wait Until Element Is Visible    ${btnProductFilterMaterialName}    30s
    Click Element    ${btnProductFilterMaterialName}

Click Filter Rating
    Wait Until Element Is Visible    ${btnProductFilterRating}    30s
    Click Element    ${btnProductFilterRating}

Click Filter Rating Name
    Wait Until Element Is Visible    ${btnProductFilterRatingName}    30s
    Click Element    ${btnProductFilterRatingName}
