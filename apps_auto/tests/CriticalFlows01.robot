*** Settings ***
Default Tags      regression
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Checkout > Payment > Pay with eBucks - QA-5284
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    pencil
    Click Product
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Collect
    Click Pickup Point
    Click Free Delivery
    Click Donate No Thanks
    Click Add Payment Voucher
    Enter Payment Voucher Code    1110
    Click Apply Payment Voucher
#    Add Donation
#    Click Pay
    [Teardown]    Tear Down

#Account locked
#fi.android.takealot.debug:id/snackbar_text
