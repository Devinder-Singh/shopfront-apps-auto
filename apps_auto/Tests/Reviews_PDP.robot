*** Settings ***
Default Tags    reviews
Resource        ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Reviews > Review Components > Read Reviews - QA-9166
    [Tags]    QA-9166
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Login Takealot    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Toothpaste
    Click Product No Reviews
    Verify Reviews on WriteReivew Text
    Scroll To PDP Reviews    ${btnNoReviewsDescription}
    Element Should Be Visible    ${btnNoReviewsDescription}
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
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
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
    [Tags]    QA-7938
    [Setup]    Start Application
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Toothpaste
    Click Product Multiple Reviews
    Goto PDP Reviews Section
    Click Element    ${btnReviewsSortButton}
    Verify Reviews Sort Option Default
    Click Reviews Sort Option Most Recent
    Verify Reviews Sort Option Most Recent
    Click Element    ${btnReviewsSortButton}
    Click Reviews Sort Option Most Helpful
    [Teardown]    Tear Down

Apps > Reviews > Read Reviews > Review Screen > Filters - QA-7941
    [Tags]    QA-7941
    [Setup]    Start Application
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Toothpaste
    Click Product Multiple Reviews
    Goto PDP Reviews Section
    Apply Reviews Filter Option Ratings Filter
    Verify Reviews Filter Options Applied    1
    Close Application
    Start Application
    Click Home
    Click Search Home
    Search Product    Mens Shoes
    Click Variant Product from API
    Goto PDP Reviews Section
    Click Element    ${btnReviewsFilterButton}
    Verify Reviews Filter Options All
    [Teardown]    Tear Down

Apps > Reviews > Read Reviews > Review Screen > Filter Options - QA-7943
    [Tags]    QA-7943
    [Setup]    Start Application
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Mens Shoes
    Click Variant Product from API
    Goto PDP Reviews Section
    Click Element    ${btnReviewsFilterButton}
    Verify Reviews Filter Options All
    Select Reviews Filter Option Rating
    Select Reviews Filter Option Colour
    Select Reviews Filter Option Size
    Click Reviews Filter Clear All Button
    Apply Reviews Filter Options
    Verify Reviews Filter Options Applied    0
    [Teardown]    Tear Down

Apps > Reviews > Read Reviews > Review Screen > Apply Filter - QA-7946
    [Tags]    QA-7946
    [Setup]    Start Application
    Click Menu
    Log In If Not Logged In    ${G_EMAIL}    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Mens Shoes
    Click Variant Product from API
    Goto PDP Reviews Section
    Click Element    ${btnReviewsFilterButton}
    Verify Reviews Filter Options All
    Select Reviews Filter Option Rating
    Select Reviews Filter Option Colour
    Select Reviews Filter Option Size
    Apply Reviews Filter Options
    Verify Reviews Filter Options Applied    3
    Verify Reviews Filter No Reviews Displayed
    [Teardown]    Tear Down

Apps > Reviews > Read Reviews > Upvote - QA-7950
    [Tags]    QA-7950
    [Setup]    Start Application
    Click Menu
    Click Menu Register
    Register Takealot    AutoTest    Test    ?    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Toothpaste
    Click Product Multiple Reviews
    Goto PDP Reviews Section
    Verify Reviews Upvote Success Message
    Click Review Upvote Button
#    Verify Text On Screen    Thank you for your feedback    15s
    Click Review Upvote Button
#    Verify Text On Screen    Vote removed    15s
    [Teardown]    Tear Down

Apps > Reviews > Read Reviews > Report Abuse (Logged-out user) - QA-9168
    [Tags]    QA-9168
    [Setup]    Start Application
    Click Menu Logout If Logged In
    Click Home
    Click Search Home
    Search Product    Toothpaste
    Click Product Multiple Reviews
    Goto PDP Reviews Section
    Click Review Report Review Menu Button
    Login Takealot Only    ${G_EMAIL}    t@ke@!ot1234
    Click Review Report Review Dialog Button
    Verify Reviews Report Review Success Message
    [Teardown]    Tear Down

Apps > Reviews > Write A Review (Legacy) - QA-9169
    [Tags]    QA-9168
    [Setup]    Start Application
    Set SSL Verify    False
    Click Menu
    Click Menu Register
    Register Takealot    AutoTest    Test    ?    t@ke@!ot1234
    Click Home
    Click Search Home
    Search Product    Toothpaste
    Click Product Multiple Reviews
    Click PDP Write Review
    Click Review Rating
    Enter Review Message    Auto Test
    Click Review Submit
    Verify Text On Screen    Thank you for your review    30s
    [Teardown]    Tear Down
