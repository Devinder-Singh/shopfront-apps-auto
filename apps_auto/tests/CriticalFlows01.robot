*** Settings ***
Default Tags      regression
Resource          ../common/config/defaultConfig.robot
Library           TalLibrary

*** Test Cases ***
Apps > Merchandised Landing Pages (CMS Widgets) - QA-5367
    [Setup]    Start Application
    Clear Environment
    Click Home
    Click Search Home
    Search Product    Pencil
    Click Product from API
    [Teardown]    Tear Down
