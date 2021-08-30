*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Review Submit
    Wait Until Element Is Visible    ${btnReviewSubmit}    30s
    Click Element    ${btnReviewSubmit}

Click Review Rating
    Wait Until Element Is Visible    ${btnReviewStarRating}    30s
    Click Element    ${btnReviewStarRating}

Enter Review Message
    [Arguments]    ${msg}

    Input Text    ${txtReviewMsg}    ${msg}

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
