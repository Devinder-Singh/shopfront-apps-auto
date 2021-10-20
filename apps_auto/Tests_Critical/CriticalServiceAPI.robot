*** Settings ***
Resource          ../common/config/defaultConfig.robot

*** Variables ***
${minLoopRange}    1
${maxLoopRange}    4

*** Test Cases ***
Check Clear Cart API
    [Documentation]    The purpose of this test is to verify that the clear cart API is running.

    Log    API environment set as '${APP_ENVIRONMENT}''
    FOR    ${result}    IN RANGE    ${minLoopRange}    ${maxLoopRange}
        Run Keyword And Continue On Failure    Run Keyword If    '${APP_ENVIRONMENT}'=='http://api.master.env/'    Get Customer ID
        Run Keyword And Continue On Failure    Clear Cart
    END

Check Clear Wishlist API
    [Documentation]    The purpose of this test is to verify that the clear wishlist API is running.

    Log    API environment set as '${APP_ENVIRONMENT}'
    FOR    ${result}    IN RANGE    ${minLoopRange}    ${maxLoopRange}
        Run Keyword And Continue On Failure    Run Keyword If    '${APP_ENVIRONMENT}'=='http://api.master.env/'    Get Customer ID
        Run Keyword And Continue On Failure    Clear Wishlist
    END

Check Clear Address API
    [Documentation]    The purpose of this test is to verify that the clear address API is running.

    Log    API environment set as '${APP_ENVIRONMENT}'
    FOR    ${result}    IN RANGE    ${minLoopRange}    ${maxLoopRange}
        Run Keyword And Continue On Failure    Run Keyword If    '${APP_ENVIRONMENT}'=='http://api.master.env/'    Get Customer ID
        Run Keyword And Continue On Failure    Clear Address
    END

 Check Delete Wishlist API
    [Documentation]    The purpose of this test is to verify that the delete wishlist API is running.

    Log    API environment set as '${APP_ENVIRONMENT}'
    FOR    ${result}    IN RANGE    ${minLoopRange}    ${maxLoopRange}
        Run Keyword And Continue On Failure    Run Keyword If    '${APP_ENVIRONMENT}'=='http://api.master.env/'    Get Customer ID
        Run Keyword And Continue On Failure    Delete Wishlist
    END

Check Clear Environment API
    [Documentation]    The purpose of this test is to verify that the clear environment API is running which consists
                       ...    Which consists of calling the Clear Cart, Delete Wishlist, Clear Wishlist and Clear Address together.
    
    Log    API environment set as '${APP_ENVIRONMENT}'
    FOR    ${result}    IN RANGE    ${minLoopRange}    ${maxLoopRange}
        Run Keyword And Continue On Failure    Clear Environment
    END 