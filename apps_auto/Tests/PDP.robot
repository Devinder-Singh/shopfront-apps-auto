*** Settings ***
Default Tags      search
Resource          ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > PDP > Main Product Details > Description - QA-2037
    [Tags]    data    QA-2037
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    dog food
    Click Product From Title    Enerpets - Enerdog Economy 25kg dry dog food
    Verify Element On Screen    ${btnAddToCart}    30s
    Click PDP Description Show More
    Click Back Android
    Click Back iOS    icon cross
    Verify Element On Screen    ${btnAddToCart}    30s
    Click PDP Description Show More
    [Teardown]    Tear Down
