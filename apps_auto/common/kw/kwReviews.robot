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
    Run Keyword If    '${checkboxStatus}'=='false' and '${PLATFORM_NAME}'=='android'    Fail

Verify Reviews Sort Option Most Recent
    Wait Until Element Is Visible    ${btnReviewsSortButton}    30s
    Click Element    ${btnReviewsSortButton}
    ${checkboxStatus}=    Get Checkbox Status    ${btnReviewsSortOptionMostRecent}
    Run Keyword If    '${checkboxStatus}'=='false' and '${PLATFORM_NAME}'=='android'    Fail

Verify Reviews Filter Options All
    Text Should Be Visible    Ratings
    Text Should Be Visible    Colour
    Text Should Be Visible    Size

Verify Reviews Filter Options Applied
    [Arguments]    ${numberOfFilters}
    Wait Until Element Is Visible    ${btnReviewsFilterButton}    30s
    IF    ${PLATFORM_NAME} == 'android' 
        IF    ${numberOfFilters} == 0
            Element Text Should Be    ${btnReviewsFilterButton}    FILTER
        ELSE
            Element Text Should Be    ${btnReviewsFilterButton}    FILTER (${numberOfFilters})
        END
    ELSE 
        IF    ${numberOfFilters} == 0
            Element Text Should Be    ${btnReviewsFilterButton}    Filter
        ELSE
            Element Text Should Be    ${btnReviewsFilterButton}    Filter (${numberOfFilters})
        END

    END

Verify Reviews Filter No Reviews Displayed
    Wait Until Element Is Visible    ${btnReviewsFilterButton}    30s
    Text Should Be Visible    There are no reviews matching your filters.

Apply Reviews Filter Options
    Wait Until Element Is Visible    ${btnReviewsFilterApplyButton}    30s
    Click Element    ${btnReviewsFilterApplyButton}

Apply Reviews Filter Options Rating
    Run Keyword If    '${PLATFORM_NAME}'=='ios'  Click Element    ${btnReviewsFilterDoneButton}

Verify Reviews on WriteReivew Text
    IF    ${PLATFORM_NAME} == 'android'
       Verify Text On Screen Android    WRITE REVIEW    30s 
    ELSE
       Verify Text On Screen iOS  write a review   30s
    END

Verify Reviews Upvote Added
    Verify Text On Screen Android    Thank you for your feedback    30s

Verify Reviews Upvote Removed
  IF    ${PLATFORM_NAME} == 'android'
        Verify Text On Screen Android    Vote removed    30s    
  ELSE
        Element Should Contain Text    ${croutonTitle}    Vote removed
        # Verify Text On Screen    ${croutonTitle}    30s
  END

Verify Reviews Upvote Success Message
    IF    ${PLATFORM_NAME} == 'android'
        ${checkboxStatus}=    Get Checkbox Status    ${btnReviewsUpvoteButton}
        Run Keyword If    '${checkboxStatus}'=='false'    Verify Reviews Upvote Removed    ELSE    Verify Reviews Upvote Added
    END

Verify Reviews Report Review Success Message
    IF    ${PLATFORM_NAME} == 'android'
         Verify Text On Screen Android    Thank you for reporting    30s
        Element Should Be Visible    ${btnReviewsReportReviewText}
    ELSE 
        #we need to click away login in sucessfully crouton
        Click Element     ${croutonTitle} 
        Element Should Contain Text    ${croutonTitle}    Your report has been submitted
    END

Apply Reviews Filter Option Ratings Filter
    Click Element    ${btnReviewsFilterButton}
    Select Reviews Filter Option Rating
    Apply Reviews Filter Options

Click Reviews Sort Option Most Recent
    Wait Until Element Is Visible    ${btnReviewsSortOptionMostRecent}    10s
    Click Element    ${btnReviewsSortOptionMostRecent}

Click Reviews Sort Option Most Helpful
    Wait Until Element Is Visible    ${btnReviewsSortOptionMostHelpful}    10s
    Click Element    ${btnReviewsSortOptionMostHelpful}

Click Review Submit
    Wait Until Element Is Visible    ${btnReviewSubmit}    30s
    Click Element    ${btnReviewSubmit}

Click Review Rating
    Wait Until Element Is Visible    ${btnReviewStarRating}    30s
    Click Element    ${btnReviewStarRating}

Click Review Upvote Button
    Click Element    ${btnReviewsUpvoteButton}

Click Review Report Review Menu Button
    Click Element    ${btnReviewsMenuButton}
    IF    ${PLATFORM_NAME} == 'android'
        Wait Until Element Is Visible    ${btnReviewsReportReviewButton}    30s
    END
    Click Element    ${btnReviewsReportReviewButton}

Click Review Report Review Dialog Button
    IF    ${PLATFORM_NAME} == 'android'
        Wait Until Element Is Visible    ${btnReviewsReportReviewDialogButton}    30s
        Click Element    ${btnReviewsReportReviewDialogButton}
    END

Enter Review Message
    [Arguments]    ${msg}

    Input Text    ${txtReviewMsg}    ${msg}

Goto PDP Reviews Section
    Scroll To PDP Reviews    ${btnPDPShowAllReviews}
    Verify Reviews Card User Reviews Visible
    Click PDP Reviews Show More
    Verify Reviews PDP Section Visible

Select Reviews Filter Option Rating
    Click Element    ${btnReviewsFilterOptionRatings}
    Click Element    ${btnReviewsFilterOptionsRatingsFilter}
    Apply Reviews Filter Options Rating

Select Reviews Filter Option Colour
    Click Element    ${btnReviewsFilterOptionColour}
    Click Element    ${btnReviewsFilterOptionsColourFilter}
    Apply Reviews Filter Options Rating

Select Reviews Filter Option Size
    Click Element    ${btnReviewsFilterOptionSize}
    Click Element    ${btnReviewsFilterOptionsSizeFilter}
    Apply Reviews Filter Options Rating

Click Reviews Filter Clear All Button
    Click Element    ${btnReviewsFilterClearAllButton}

Click Reviews Sort Option Button
    Wait Until Element Is Visible    ${btnReviewsSortButton}    15s
    Click Element    ${btnReviewsSortButton}

Click Reviews Show All Button
    Wait Until Element Is Visible    ${btnPDPShowAllReviews}    15s
    Click Element    ${btnPDPShowAllReviews}

Click Review Sort
    Wait Until Element Is Visible    ${btnReviewSort}    30s
    Click Element    ${btnReviewSort}

Click Review Sort Most Helpful
    Wait Until Element Is Visible    ${lblReviewSortHelpful}    30s
    Click Element    ${lblReviewSortHelpful}

Click Review Sort Most Recent
    Wait Until Element Is Visible    ${lblReviewRecent}    30s
    Click Element    ${lblReviewRecent}

Click Review Helpful
    Wait Until Element Is Visible    ${lblReviewHelpful}    30s
    Click Element    ${lblReviewHelpful}

Click Review Filter
    Wait Until Element Is Visible    ${btnReviewFilter}    30s
    Click Element    ${btnReviewFilter}

Click Review Filter Rating
    Wait Until Element Is Visible    ${lblReviewFilterRating}    30s
    Click Element    ${lblReviewFilterRating}

Click Review Filter Rating Five
    Wait Until Element Is Visible    ${lblReviewFilterFive}    30s
    Click Element    ${lblReviewFilterFive}

Click Review Filter Done
    Wait Until Element Is Visible    ${btnReviewFilterDone}    30s
    Click Element    ${btnReviewFilterDone}

Click Review Filter Apply
    Wait Until Element Is Visible    ${btnReviewFilterApply}    30s
    Click Element    ${btnReviewFilterApply}

Click Review Icon More
    Wait Until Element Is Visible    ${lblReviewMore}    30s
    Click Element    ${lblReviewMore}

Click Review Report
    Wait Until Element Is Visible    ${lblReviewReport}    30s
    Click Element    ${lblReviewReport}