*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Verify Reviews Card Distribution Summary Visible
    Element Should Not Be Visible    ${btnNoReviewsDescription}
    Element Should Be Visible    ${btnReviewsSummaryOverallRating}

Verify Reviews Card User Reviews Visible
    Element Should Be Visible    ${btnPDPUserReviews}

Verify Reviews PDP Section Visible
    Verify PDP Screen Element    ${btnReviewsContainer}

Verify Reviews Distribution Summary View
    Element Should Be Visible    ${btnReviewsSummaryOverallRating}
    Element Should Be Visible    ${btnReviewsSummaryOverallRatingCount}
    Element Should Be Visible    ${btnReviewsSummaryOverallStarRating}

Verify Reviews Sort Option Default
    ${checkboxStatus}=    Get Checkbox Status    ${btnReviewsSortOptionMostHelpful}
    Run Keyword If    '${checkboxStatus}'=='false'    Fail

Verify Reviews Sort Option Most Recent
    Wait Until Element Is Visible    ${btnReviewsSortButton}    30s
    Click Element    ${btnReviewsSortButton}
    ${checkboxStatus}=    Get Checkbox Status    ${btnReviewsSortOptionMostRecent}
    Run Keyword If    '${checkboxStatus}'=='false'    Fail

Verify Reviews Filter Options All
    Text Should Be Visible    Ratings
    Text Should Be Visible    Colour
    Text Should Be Visible    Size

Verify Reviews Filter Options Applied
    [Arguments]    ${numberOfFilters}
    Wait Until Element Is Visible    ${btnReviewsFilterButton}
    Element Text Should Be    ${btnReviewsFilterButton}    FILTER (${numberOfFilters})

Apply Reviews Filter Option Ratings Filter
    Click Element    ${btnReviewsFilterButton}
    Click Element    ${btnReviewsFilterOptionRatings}
    Click Element    ${btnReviewsFilterOptionsRatingsFilter}
    Click Element    ${btnReviewsFilterApplyButton}

Click Reviews Sort Option Most Recent
    Click Element    ${btnReviewsSortOptionMostRecent}

Click Review Submit
    Wait Until Element Is Visible    ${btnReviewSubmit}    30s
    Click Element    ${btnReviewSubmit}

Click Review Rating
    Wait Until Element Is Visible    ${btnReviewStarRating}    30s
    Click Element    ${btnReviewStarRating}

Enter Review Message
    [Arguments]    ${msg}

    Input Text    ${txtReviewMsg}    ${msg}
