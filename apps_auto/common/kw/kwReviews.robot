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
    Wait Until Element Is Visible    ${btnReviewsFilterButton}    30s
    IF    ${numberOfFilters} == 0
        Element Text Should Be    ${btnReviewsFilterButton}    FILTER
    ELSE
        Element Text Should Be    ${btnReviewsFilterButton}    FILTER (${numberOfFilters})
    END

Verify Reviews Filter No Reviews Displayed
    Wait Until Element Is Visible    ${btnReviewsFilterButton}    30s
    Text Should Be Visible    There are no reviews matching your filters.

Apply Reviews Filter Options
    Wait Until Element Is Visible    ${btnReviewsFilterApplyButton}    30s
    Click Element    ${btnReviewsFilterApplyButton}

Verify Reviews Upvote Added
    Verify Text On Screen Android    Thank you for your feedback    30s

Verify Reviews Upvote Removed
    Verify Text On Screen Android    Vote removed    30s    

Verify Reviews Upvote Success Message
    ${checkboxStatus}=    Get Checkbox Status    ${btnReviewsUpvoteButton}
    Run Keyword If    '${checkboxStatus}'=='false'    Verify Reviews Upvote Removed    ELSE    Verify Reviews Upvote Added

Apply Reviews Filter Option Ratings Filter
    Click Element    ${btnReviewsFilterButton}
    Select Reviews Filter Option Rating
    Apply Reviews Filter Options

Click Reviews Sort Option Most Recent
    Click Element    ${btnReviewsSortOptionMostRecent}

Click Review Submit
    Wait Until Element Is Visible    ${btnReviewSubmit}    30s
    Click Element    ${btnReviewSubmit}

Click Review Rating
    Wait Until Element Is Visible    ${btnReviewStarRating}    30s
    Click Element    ${btnReviewStarRating}

Click Review Upvote Button
    Click Element    ${btnReviewsUpvoteButton}

Enter Review Message
    [Arguments]    ${msg}

    Input Text    ${txtReviewMsg}    ${msg}

Goto PDP Reviews Section
    Scroll To PDP Reviews    ${btnPDPUserReviews}
    Verify Reviews Card User Reviews Visible
    Click PDP Reviews Show More
    Verify Reviews PDP Section Visible

Select Reviews Filter Option Rating
    Click Element    ${btnReviewsFilterOptionRatings}
    Click Element    ${btnReviewsFilterOptionsRatingsFilter}

Select Reviews Filter Option Colour
    Click Element    ${btnReviewsFilterOptionColour}
    Click Element    ${btnReviewsFilterOptionsColourFilter}

Select Reviews Filter Option Size
    Click Element    ${btnReviewsFilterOptionSize}
    Click Element    ${btnReviewsFilterOptionsSizeFilter}

Click Reviews Filter Clear All Button
    Click Element    ${btnReviewsFilterClearAllButton}