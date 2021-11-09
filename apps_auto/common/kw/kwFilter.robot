*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Filter Category
    Wait Until Element Is Visible    ${btnProductFilterCategory}    ${MIN_TIMEOUT}
    Click Element    ${btnProductFilterCategory}

Click Filter Office Stationery
    Wait Until Element Is Visible    ${btnProductFilterOfficeStationery}    ${MIN_TIMEOUT}
    Click Element    ${btnProductFilterOfficeStationery}

Click Filter Select Button
    Wait Until Element Is Visible    ${btnProductFilterSelect}    ${MIN_TIMEOUT}
    Click Element    ${btnProductFilterSelect}

Click Filter Select Button iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnProductFilterSelect}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${btnProductFilterSelect}

Click Filter Apply Button
    Wait Until Element Is Visible    ${btnProductFilterApply}    ${MIN_TIMEOUT}
    Click Element    ${btnProductFilterApply}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnProductSearchFilter}    2s

        IF    ${chkProdVisible} == ${True}
            Exit For Loop
        END

        ${chkProdVisible}=    Run Keyword And Return Status    Click Element    ${btnProductFilterApply}

        IF    ${chkProdVisible} == ${False}
            Exit For Loop
        END

        ${index}=    Evaluate    ${index} + 1
    END
    Wait Until Element Is Visible    ${btnProductSearchFilter}    2s

Click Filter Availability
    Wait Until Element Is Visible    ${btnProductFilterAvailability}    ${MIN_TIMEOUT}
    Click Element    ${btnProductFilterAvailability}

Click Filter In Stock
    Wait Until Element Is Visible    ${btnProductFilterInStock}    ${MIN_TIMEOUT}
    Click Element    ${btnProductFilterInStock}

Click Filter Brand
    Wait Until Element Is Visible    ${btnProductFilterBrand}    ${MIN_TIMEOUT}
    Click Element    ${btnProductFilterBrand}

Click Filter Clear All
    Wait Until Element Is Visible    ${btnProductFilterClearAll}    ${MIN_TIMEOUT}
    Click Element    ${btnProductFilterClearAll}

    IF    ${PLATFORM_NAME} == 'ios'
        Wait Until Element Is Visible    ${btnProductFilterShowAll}    ${MIN_TIMEOUT}
        Click Element    ${btnProductFilterShowAll}
    ELSE IF    ${PLATFORM_NAME} == 'android' 
         Click Filter Apply Button
    END

Click Filter Brand Name
    Wait Until Element Is Visible    ${btnProductFilterBrandName}    ${MIN_TIMEOUT}
    Click Element    ${btnProductFilterBrandName}

Click Filter Colour
    Wait Until Element Is Visible    ${btnProductFilterColour}    ${MIN_TIMEOUT}
    Click Element    ${btnProductFilterColour}

Click Filter Colour Name
    Wait Until Element Is Visible    ${btnProductFilterColourName}    ${MIN_TIMEOUT}
    Click Element    ${btnProductFilterColourName}

Click Filter Material
    Wait Until Element Is Visible    ${btnProductFilterMaterial}    ${MIN_TIMEOUT}
    Click Element    ${btnProductFilterMaterial}

Click Filter Material Name
    Wait Until Element Is Visible    ${btnProductFilterMaterialName}    ${MIN_TIMEOUT}
    Click Element    ${btnProductFilterMaterialName}

Click Filter Rating
    Wait Until Element Is Visible    ${btnProductFilterRating}    ${MIN_TIMEOUT}
    Click Element    ${btnProductFilterRating}

Click Filter Rating Name
    Wait Until Element Is Visible    ${btnProductFilterRatingName}    ${MIN_TIMEOUT}
    Click Element    ${btnProductFilterRatingName}
