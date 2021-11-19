*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Product Widget First View All
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnProductViwAllFirst}    ${MIN_TIMEOUT}
    Run Keyword If    ${chkElementExists}==${True}    Click Element    ${btnProductViwAllFirst}

Click Product Widget Top Pre Orders

    Click Element On Scroll    ${btnProductPreOrder}    5

Click Product Widget Carousel
    Wait Until Element Is Visible    ${btnCarouselWidget}    15s
#    Sleep    10s
    Click Element    ${btnCarouselWidget}

Click Product Widget Banner
    Click Element On Scroll    ${btnBannerWidget}    10

    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Page Does Not Contain Element    ${btnBannerWidget}    5s
    Run Keyword If    ${chkElementExists}==${False}    Click Element    ${btnBannerWidget}

Click Product Widget Product
    Click Element On Scroll    ${btnProductWidget}    5

Click Product Widget Image
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnImageWidget}    5s
    Run Keyword If    ${chkElementExists}==${False}    Swipe Up    ${windowScroll}

    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnImageWidget}    15s
    Click Element    ${btnImageWidget}

    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnImageWidget}    2s
    Run Keyword If    ${chkElementExists}==${True}    Click Element    ${btnImageWidget}

Click Product Widget Context
    Click Element On Scroll    ${btnContextWidget}    15

Verify Product Widget Navigation
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnProductSearchFilter}    ${MIN_TIMEOUT}
    Run Keyword If    ${chkElementExists}==${False}    Wait Until Element Is Visible    ${btnAddToCart}    5s
