*** Settings ***
Default Tags      regression
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Promotions (Android) - QA-5357
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Click Menu Daily Deals
    Verify Product Image
    Click Product Filter
    Select Filter Option    Baby & Toddler
    Click Apply Filter
    Click Product Daily Deals
    Click Add To Cart
    Click Increase Cart Quantity    4
    Click Go To Cart
    [Teardown]    Tear Down

Apps > Promotions (Android) 02 - QA-5357
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Click Menu Daily Deals
    Click App Only Deals
    Verify Product Image
    Click Product Filter
    Select Filter Option    Cellphones & Wearables
    Click Apply Filter
    Click Product Daily Deals
    Click Add To Cart
    Click Increase Cart Quantity    4
    Click Go To Cart
    [Teardown]    Tear Down


#    Click Menu
#    Click Menu Shop By Department
#    Click Menu Sport and Fitness
#    Click Product Daily Deals

#Account locked
#fi.android.takealot.debug:id/snackbar_text
