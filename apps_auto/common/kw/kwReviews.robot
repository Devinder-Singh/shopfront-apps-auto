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

Click Review Submit
    Wait Until Element Is Visible    ${btnReviewSubmit}    30s
    Click Element    ${btnReviewSubmit}

Click Review Rating
    Wait Until Element Is Visible    ${btnReviewStarRating}    30s
    Click Element    ${btnReviewStarRating}

Enter Review Message
    [Arguments]    ${msg}

    Input Text    ${txtReviewMsg}    ${msg}
