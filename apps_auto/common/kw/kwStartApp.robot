*** Settings ***
Resource          ../config/defaultConfig.robot
Library    Process

*** Keywords ***
Start Application
    [Arguments]    ${autoAlert}=${True}
    &{cap}=    Get Capabilities    ${False}    ${autoAlert}
    Log Many    &{cap}
    Open Application    ${REMOTE_URL}    &{cap}
    Set Implicitly Wait    5

Tear Down
    Capture Page Screenshot
    Set Implicitly Wait    1
    Close Application

Install Application
    [Arguments]    ${autoAlert}=${True}

    Build Ios App
#    ${result}=    Run Process    xcodebuild -workspace /Users/devinder.singh/Documents/apps_ios/takealot.xcworkspace -scheme takealot clean archive -archivePath /Users/devinder.singh/Documents/takealot.xcarchive -allowProvisioningUpdates    shell=yes
#    Log    ${result.stdout}
#    Should Not Contain    ${result.stdout}    FAIL

    &{cap}=    Get Capabilities    ${True}    ${autoAlert}
#    Log Many    &{cap}
#    Open Application    ${REMOTE_URL}    &{cap}
