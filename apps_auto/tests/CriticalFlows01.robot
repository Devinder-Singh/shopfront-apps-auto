*** Settings ***
Default Tags      regression
Resource          ../common/config/defaultConfig.robot
Library           TalLibrary

*** Test Cases ***
Apps > My Account Verifications - QA-5356
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Click Menu My Account
    Click Menu Orders
    Verify Text On Screen    Order History    30s
    Click Back Screen
    Click Menu Exchanges And Returns
    Verify Text On Screen    Open file with    30s
    Verify Text On Screen    Chrome    1s
    Click Menu Exchanges And Returns
    Click Menu Personal Detail
    Update Personal Detail Name    AutoTester
    Verify Text On Screen    Your name has been successfully updated    30s
    Update Personal Detail Email
    Verify Text On Screen    Your email address has been successfully updated    30s
    Update Personal Detail Mobile
    Verify Text On Screen    Your mobile number has been successfully updated    30s
    Update Personal Detail Password
    Verify Text On Screen    Your mobile number has been successfully updated    30s
    Update Personal Detail Business
    Verify Text On Screen    Your business details have been successfully updated    30s
    Click Menu Address Book
    Click Add Delivery Address
    Click Residential
    Add Delivery Address My Acc    Tester Residential    0723456778    38 Baxter Way
    Click Back Delivery Android
    Click Menu Address Book
    Edit Delivery Address Street My Acc    13 Caro Road
    Click Back Delivery Android
    Click Menu Address Book
    Click Delete Address
    Verify Text On Screen    Address successfully deleted    30s
    [Teardown]    Tear Down

Apps > My Account Verifications 02 - QA-5356
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    Click Add To Cart
    Click Go To Cart
    Click Checkout
    Click Delivery
    Verify Text On Screen    12 Ridge Way, Pinelands, Cape Town, Western Cape, 7405    30s

Apps > My Account Verifications 03 - QA-5356
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Click Menu My Account
    Click Menu Load Gift Voucher
    Apply Gift Voucher Code

Apps > My Account Verifications 04 - QA-5356
    [Setup]    Start Application
    Clear Environment
    Click Menu
    Click Menu My Account
    Click Menu Load Gift Voucher
    Apply Gift Voucher Code
