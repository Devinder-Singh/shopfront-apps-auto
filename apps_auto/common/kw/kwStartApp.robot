*** Settings ***
Library           TalLibrary

*** Keywords ***
Start Application
    &{cap}=    Get Capabilities    ${False}    ${True}
    Log Many    &{cap}
    Open Application    ${REMOTE_URL}    &{cap}
    Set Implicitly Wait    5

Tear Down
    Capture Page Screenshot
    Set Implicitly Wait    1
    Close Application
