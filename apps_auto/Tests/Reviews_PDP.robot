*** Settings ***
Default Tags    reviews
Resource        ../common/config/defaultConfig.robot

*** Test Cases ***
Apps > Reviews > Review Components > Read Reviews - QA-9166
    [Tags]    data    QA-9166
    [Setup]    Start Application
    Click Home
    Click Search Home
    Search Product    Toothpaste
    Click Product No Reviews