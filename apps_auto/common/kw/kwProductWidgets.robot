*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Product Widget First View All
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnProductViwAllFirst}    30s
    Run Keyword If    ${chkElementExists}==True    Click Element    ${btnProductViwAllFirst}

Click Product Widget Top Pre Orders
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnProductPreOrder}    30s
    Run Keyword If    ${chkElementExists}==False    Swipe Up    ${windowScroll}
    Run Keyword If    ${chkElementExists}==False    Swipe Up    ${windowScroll}
    Wait Until Element Is Visible    ${btnProductPreOrder}    2s
    Click Element    ${btnProductPreOrder}
