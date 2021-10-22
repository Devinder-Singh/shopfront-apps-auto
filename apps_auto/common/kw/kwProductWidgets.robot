*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Product Widget First View All
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnProductViwAllFirst}    30s
    Run Keyword If    ${chkElementExists}==${True}    Click Element    ${btnProductViwAllFirst}

Click Product Widget Top Pre Orders
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnProductPreOrder}    30s
    Run Keyword If    ${chkElementExists}==${False}    Swipe Up    ${windowScroll}
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnProductPreOrder}    5s
    Run Keyword If    ${chkElementExists}==${False}    Swipe Up    ${windowScroll}
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnProductPreOrder}    5s
    Run Keyword If    ${chkElementExists}==${False}    Swipe Up    ${windowScroll}
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnProductPreOrder}    5s
    Run Keyword If    ${chkElementExists}==${False}    Swipe Up    ${windowScroll}

    Wait Until Element Is Visible    ${btnProductPreOrder}    2s
    Click Element    ${btnProductPreOrder}

Click Product Widget Carousel
    Wait Until Element Is Visible    ${btnCarouselWidget}    15s
#    Sleep    10s
    Click Element    ${btnCarouselWidget}

Click Product Widget Banner
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnBannerWidget}    10s
    Run Keyword If    ${chkElementExists}==${False}    Swipe Up    ${windowScroll}
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnBannerWidget}    5s
    Run Keyword If    ${chkElementExists}==${False}    Swipe Up    ${windowScroll}
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnBannerWidget}    5s
    Run Keyword If    ${chkElementExists}==${False}    Swipe Up    ${windowScroll}
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnBannerWidget}    5s
    Run Keyword If    ${chkElementExists}==${False}    Swipe Up    ${windowScroll}
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnBannerWidget}    5s
    Run Keyword If    ${chkElementExists}==${False}    Swipe Up    ${windowScroll}
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnBannerWidget}    5s
    Run Keyword If    ${chkElementExists}==${False}    Swipe Up    ${windowScroll}
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnBannerWidget}    5s
    Run Keyword If    ${chkElementExists}==${False}    Swipe Up    ${windowScroll}
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnBannerWidget}    5s
    Run Keyword If    ${chkElementExists}==${False}    Swipe Up    ${windowScroll}

    Wait Until Element Is Visible    ${btnBannerWidget}    15s
#    Sleep    5s
    Click Element    ${btnBannerWidget}
#    Sleep    5s

    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Page Does Not Contain Element    ${btnBannerWidget}    5s
    Run Keyword If    ${chkElementExists}==${False}    Click Element    ${btnBannerWidget}

Click Product Widget Product
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnProductWidget}    10s
    Run Keyword If    ${chkElementExists}==${False}    Swipe Up    ${windowScroll}
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnProductWidget}    5s
    Run Keyword If    ${chkElementExists}==${False}    Swipe Up    ${windowScroll}
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnProductWidget}    5s
    Run Keyword If    ${chkElementExists}==${False}    Swipe Up    ${windowScroll}
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnProductWidget}    5s
    Run Keyword If    ${chkElementExists}==${False}    Swipe Up    ${windowScroll}

    Wait Until Element Is Visible    ${btnProductWidget}    15s
#    Sleep    5s
    Click Element    ${btnProductWidget}

Click Product Widget Image
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnImageWidget}    5s
    Run Keyword If    ${chkElementExists}==${False}    Swipe Up    ${windowScroll}

    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnImageWidget}    15s
#    Sleep    5s
    Click Element    ${btnImageWidget}
#    Sleep    5s

    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnImageWidget}    2s
    Run Keyword If    ${chkElementExists}==${True}    Click Element    ${btnImageWidget}

Click Product Widget Context
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnContextWidget}    5s
    Run Keyword If    ${chkElementExists}==${False}    Swipe Up    ${windowScroll}
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnContextWidget}    5s
    Run Keyword If    ${chkElementExists}==${False}    Swipe Up    ${windowScroll}
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnContextWidget}    5s
    Run Keyword If    ${chkElementExists}==${False}    Swipe Up    ${windowScroll}
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnContextWidget}    5s
    Run Keyword If    ${chkElementExists}==${False}    Swipe Up    ${windowScroll}
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnContextWidget}    5s
    Run Keyword If    ${chkElementExists}==${False}    Swipe Up    ${windowScroll}
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnContextWidget}    5s
    Run Keyword If    ${chkElementExists}==${False}    Swipe Up    ${windowScroll}
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnContextWidget}    5s
    Run Keyword If    ${chkElementExists}==${False}    Swipe Up    ${windowScroll}
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnContextWidget}    5s
    Run Keyword If    ${chkElementExists}==${False}    Swipe Up    ${windowScroll}
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnContextWidget}    5s
    Run Keyword If    ${chkElementExists}==${False}    Swipe Up    ${windowScroll}
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnContextWidget}    5s
    Run Keyword If    ${chkElementExists}==${False}    Swipe Up    ${windowScroll}

    Wait Until Element Is Visible    ${btnContextWidget}    15s
    Click Element    ${btnContextWidget}

Verify Product Widget Navigation
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnProductSearchFilter}    30s
    Run Keyword If    ${chkElementExists}==${False}    Wait Until Element Is Visible    ${btnAddToCart}    5s
