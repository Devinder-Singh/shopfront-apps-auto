*** Settings ***
Default Tags    reviews
Resource        ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Reviews > Review Components > Read Reviews - QA-9166
    [Tags]    data    QA-9166
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Toothpaste
    Click Product No Reviews
    Verify Text On Screen Android    WRITE REVIEW    30s
    Scroll To PDP Reviews
    Element Should Be Visible    ${btnPDPNoReviewsDescription}
    Click Element    ${btnPDPReview}
    Verify PDP Screen Element    ${btnReviewSubmit}
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Toothpaste
    Click Product Multiple Reviews
    Scroll To PDP Reviews Auto
    Element Should Not Be Visible    ${btnPDPNoReviewsDescription}
    Element Should Be Visible    ${btnPDPReviewSummaryOverallRating}
    Element Should Be Visible    ${btnPDPUserReviews}
    Click PDP Reviews Show More
    Verify PDP Screen Element    ${btnReviewsContainer}
    [Teardown]    Tear Down