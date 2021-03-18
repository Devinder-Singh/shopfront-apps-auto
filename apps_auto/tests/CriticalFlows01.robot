*** Settings ***
Default Tags      regression
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Promotions (Android) - QA-5357
    [Setup]    Start Application
    Click Menu
    Click Menu Daily Deals
    Click Product Daily Deals
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    [Teardown]    Tear Down

#    Click Menu
#    Click Menu Shop By Department
#    Click Menu Sport and Fitness
#    Click Product Daily Deals

#Account locked
#fi.android.takealot.debug:id/snackbar_text
