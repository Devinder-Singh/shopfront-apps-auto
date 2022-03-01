*** Settings ***
Default Tags    reviews
Resource        ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Reviews > Review Components > Read Reviews - QASA-145
    [Tags]    QASA-145
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

Apps > Reviews > Read Reviews > Review Distribution Summary - QASA-283
    [Tags]    QASA-283
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

Apps > Reviews > Read Reviews > Review Screen > Sort - QASA-282
    [Tags]    QASA-282
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

Apps > Reviews > Read Reviews > Review Screen > Filters - QASA-281
    [Tags]    QASA-281
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

Apps > Reviews > Read Reviews > Review Screen > Filter Options - QASA-279
    [Tags]    QASA-279
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

Apps > Reviews > Read Reviews > Review Screen > Apply Filter - QASA-276
    [Tags]    QASA-276
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

Apps > Reviews > Read Reviews > Upvote - QASA-274
    [Tags]    QASA-274
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

Apps > Reviews > Read Reviews > Report Abuse (Logged-out user) - QASA-143
    [Tags]    QASA-143
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

Apps > Reviews > Write A Review (Legacy) - QASA-142
    [Tags]    QASA-142
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
    Verify Text On Screen    Thank you for your review    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Reviews > Report Abuse (Logged-in user) - QASA-273
    [Tags]    QASA-273
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Close Application
    Start Application    ${False}
    Click Menu
    Click Menu Register
    Register Takealot    AutoTest    Test    ?    t@ke@!ot1234
    ${completedOrderProductId}=    Search And Return Product Id API    pencil
    Create New Order API   ${completedOrderProductId}    1    Credit Card    COURIER    true
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click PDP Write Review
    Click Write Product Review
    Click Understand Write Review
    Click Review Rating
    Enter Review Message    Auto Test Auto Test Auto Test
    Click Review Submit
    Verify Text On Screen    Awaiting Approval    ${MIN_TIMEOUT}
    Close Application
    Start Application
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Click Order Delivery
    Click Order Item By Title
    Click PDP Write Review
    Verify Element Not On Screen    ${btnWriteProdReview}
    [Teardown]    Tear Down

Apps > Reviews > PDP > Product Description - QASA-14
    [Tags]    QASA-14
    [Setup]    Start Application
    Click Menu
    Click Menu Login
    Close Application
    Start Application    ${False}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click PDP Write Review
    Login Takealot Only    ${G_EMAIL}    t@ke@!ot1234
    Verify Text On Screen    You are only able to review products purchased from Takealot.com    ${MIN_TIMEOUT}
    [Teardown]    Tear Down

Apps > Reviews > Read Reviews > Reviews Submitted by Customers - QASA-284
    [Tags]    QASA-284
    [Setup]    Start Application
    Clear Environment
    Log In If Not Logged In    ${G_EMAIL}    ${G_PASSWORD}
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product from API
    Click PDP Show All Reviews
    Verify Text On Screen    Helpful    ${MAX_TIMEOUT}
    Verify Text On Screen    Reviewed
    Verify Text On Screen    after purchase
    Verify Element On Screen    ${btnReviewsStarRating}
    Verify Element On Screen    ${btnReviewsMsg}
    [Teardown]    Tear Down
