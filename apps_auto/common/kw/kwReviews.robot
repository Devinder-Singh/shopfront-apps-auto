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
    IF    ${checkboxStatus} == ${False} and ${PLATFORM_NAME} == 'android'
        Fail
    END

Verify Reviews Sort Option Most Recent
    Wait Until Element Is Visible    ${btnReviewsSortButton}    ${MIN_TIMEOUT}
    Click Element    ${btnReviewsSortButton}
    ${checkboxStatus}=    Get Checkbox Status    ${btnReviewsSortOptionMostRecent}
    IF    ${checkboxStatus} == ${False} and ${PLATFORM_NAME} == 'android'
        Fail
    END
    
Verify Reviews Filter Options All
    Text Should Be Visible    Ratings
    Text Should Be Visible    Colour
    Text Should Be Visible    Size

Verify Reviews Filter Options Applied
    [Arguments]    ${numberOfFilters}
    Wait Until Element Is Visible    ${btnReviewsFilterButton}    ${MIN_TIMEOUT}
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
    Wait Until Element Is Visible    ${btnReviewsFilterButton}    ${MIN_TIMEOUT}
    Text Should Be Visible    There are no reviews matching your filters.

Apply Reviews Filter Options
    Wait Until Element Is Visible    ${btnReviewsFilterApplyButton}    ${MIN_TIMEOUT}
    Click Element    ${btnReviewsFilterApplyButton}

Apply Reviews Filter Options Rating
    IF    ${PLATFORM_NAME} == 'ios'
        Click Element    ${btnReviewsFilterDoneButton}
    END

Verify Reviews on WriteReivew Text
    IF    ${PLATFORM_NAME} == 'android'
       Verify Text On Screen    WRITE REVIEW    ${MIN_TIMEOUT} 
    ELSE
       Verify Text On Screen  write a review   ${MIN_TIMEOUT}
    END

Verify Reviews Upvote Added
    Verify Text On Screen    Thank you for your feedback    ${MIN_TIMEOUT}

Verify Reviews Upvote Removed
  IF    ${PLATFORM_NAME} == 'android'
        Verify Text On Screen    Vote removed    ${MIN_TIMEOUT}    
  ELSE
        Element Should Contain Text    ${croutonTitle}    Vote removed
        # Verify Text On Screen    ${croutonTitle}    ${MIN_TIMEOUT}
  END

Verify Reviews Upvote Success Message
    IF    ${PLATFORM_NAME} == 'android'
        ${checkboxStatus}=    Get Checkbox Status    ${btnReviewsUpvoteButton}
        Run Keyword If    '${checkboxStatus}'=='false'    Verify Reviews Upvote Removed    ELSE    Verify Reviews Upvote Added
    END

Verify Reviews Report Review Success Message
    IF    ${PLATFORM_NAME} == 'android'
         Verify Text On Screen    Thank you for reporting    ${MIN_TIMEOUT}
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
    Wait Until Element Is Visible    ${btnReviewSubmit}    ${MIN_TIMEOUT}
    Click Element    ${btnReviewSubmit}

Click Review Submit OK
    Wait Until Element Is Visible    ${txtPDPReviewOK}    ${MIN_TIMEOUT}
    Click Element    ${txtPDPReviewOK}

Click Review Rating
    Wait Until Element Is Visible    ${btnReviewStarRating}    ${MIN_TIMEOUT}
    Click Element    ${btnReviewStarRating}

Click Review Upvote Button
    Click Element    ${btnReviewsUpvoteButton}

Click Review Report Review Menu Button
    Click Element    ${btnReviewsMenuButton}
    IF    ${PLATFORM_NAME} == 'android'
        Wait Until Element Is Visible    ${btnReviewsReportReviewButton}    ${MIN_TIMEOUT}
    END
    Click Element    ${btnReviewsReportReviewButton}

Click Review Report Review Dialog Button
    IF    ${PLATFORM_NAME} == 'android'
        Wait Until Element Is Visible    ${btnReviewsReportReviewDialogButton}    ${MIN_TIMEOUT}
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
    Wait Until Element Is Visible    ${btnReviewSort}    ${MIN_TIMEOUT}
    Click Element    ${btnReviewSort}

Click Review Sort Most Helpful
    Wait Until Element Is Visible    ${lblReviewSortHelpful}    ${MIN_TIMEOUT}
    Click Element    ${lblReviewSortHelpful}
#    Sleep    2s

Click Review Sort Most Recent
    Wait Until Element Is Visible    ${lblReviewRecent}    ${MIN_TIMEOUT}
    Click Element    ${lblReviewRecent}

Click Review Helpful
    Wait Until Keyword Succeeds    3    3s    Wait Until Element Is Visible    ${lblReviewHelpful}    ${MIN_TIMEOUT}
    Click Element    ${lblReviewHelpful}

Click Review Filter
    Wait Until Element Is Visible    ${btnReviewFilter}    ${MIN_TIMEOUT}
    Click Element    ${btnReviewFilter}

Click Review Filter Rating
    Wait Until Element Is Visible    ${lblReviewFilterRating}    ${MIN_TIMEOUT}
    Click Element    ${lblReviewFilterRating}

Click Review Filter Rating Five
    Wait Until Element Is Visible    ${lblReviewFilterFive}    ${MIN_TIMEOUT}
    Click Element    ${lblReviewFilterFive}

Click Review Filter Done
    Wait Until Element Is Visible    ${btnReviewFilterDone}    ${MIN_TIMEOUT}
    Click Element    ${btnReviewFilterDone}

Click Review Filter Apply
    Wait Until Element Is Visible    ${btnReviewFilterApply}    ${MIN_TIMEOUT}
    Click Element    ${btnReviewFilterApply}

Click Review Icon More
    Wait Until Element Is Visible    ${lblReviewMore}    ${MIN_TIMEOUT}
    Click Element    ${lblReviewMore}

Click Review Report
    Wait Until Element Is Visible    ${lblReviewReport}    ${MIN_TIMEOUT}
    Click Element    ${lblReviewReport}
