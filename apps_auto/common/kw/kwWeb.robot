*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Login Takealot On Web
    [Arguments]    ${email}    ${password}
#    Open Browser    https://takealot.com    Chrome
#    Selenium2Library.Input Text    ${txtWebEmail}    takealot
#    Selenium2Library.Click Element    ${btnWebLogin}
#    Close Browser

    Input Text    ${txtWebEmail}    ${email}
    Input Text    ${txtWebPwd}    ${password}
    Click Element    ${btnWebLogin}
