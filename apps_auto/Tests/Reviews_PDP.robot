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
    Verify Reviews Card Distribution Summary Visible
    Verify Reviews Card User Reviews Visible
    Click PDP Reviews Show More
    Verify Reviews PDP Section Visible
    [Teardown]    Tear Down

Apps > Reviews > Read Reviews > Review Distribution Summary - QA-7937
    [Tags]    data    QA-7937
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Toothpaste
    Click Product Multiple Reviews
    Scroll To PDP Reviews Auto
    Verify Reviews Card Distribution Summary Visible
    Verify Reviews Distribution Summary View
    Verify Reviews Card User Reviews Visible
    Click PDP Reviews Show More
    Verify Reviews PDP Section Visible
    Verify Reviews Distribution Summary View
    ${txtRating}=    Get Text    ${btnReviewsSummaryOverallRatingCount}
    Apply Reviews Filter Option Ratings Filter
    ${txtRatingChanged}=    Get Text    ${btnReviewsSummaryOverallRatingCount}
    Run Keyword If    '${txtRating}'!='${txtRatingChanged}'    Fail
    [Teardown]    Tear Down

Apps > Reviews > Read Reviews > Review Screen > Sort - QA-7938
    [Tags]    data    QA-7937
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Toothpaste
    Click Product Multiple Reviews
    Scroll To PDP Reviews Auto
    Verify Reviews Card User Reviews Visible
    Click PDP Reviews Show More
    Verify Reviews PDP Section Visible
    Click Element    ${btnReviewsSortButton}
    Verify Reviews Sort Option Default
    Click Reviews Sort Option Most Recent
    Verify Reviews Sort Option Most Recent
    [Teardown]    Tear Down

Apps > Reviews > Read Reviews > Review Screen > Filters - QA-7941
    [Tags]    data    QA-7941
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Toothpaste
    Click Product Multiple Reviews
    Scroll To PDP Reviews Auto
    Verify Reviews Card User Reviews Visible
    Click PDP Reviews Show More
    Verify Reviews PDP Section Visible
    Apply Reviews Filter Option Ratings Filter
    Verify Reviews Filter Options Applied    1
    [Teardown]    Tear Down
    