*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Product Widget First View All
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnProductViwAllFirst}    ${MIN_TIMEOUT}
    Run Keyword If    ${chkElementExists}==${True}    Click Element    ${btnProductViwAllFirst}

Click Product Widget Top Pre Orders
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnProductPreOrder}    ${MIN_TIMEOUT}
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
    FOR    ${counter}    IN RANGE    10
        ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnBannerWidget}    5s    
        IF    ${chkElementExists} == ${True}
            Exit For Loop            
        ELSE
            Swipe Up    ${windowScroll}
        END
    END

    Click Element    ${btnBannerWidget}

Click Product Widget Product
    FOR    ${counter}    IN RANGE    10
        ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnProductWidget}    5s    
        IF    ${chkElementExists} == ${True}
            Exit For Loop            
        ELSE
            Swipe Up    ${windowScroll}
        END
    END

    Click Element    ${btnProductWidget}

Click Product Widget Image
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnImageWidget}    5s
    Run Keyword If    ${chkElementExists}==${False}    Swipe Up    ${windowScroll}

    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnImageWidget}    15s
    Click Element    ${btnImageWidget}

    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnImageWidget}    2s
    Run Keyword If    ${chkElementExists}==${True}    Click Element    ${btnImageWidget}

Click Product Widget Context
    FOR    ${counter}    IN RANGE    12
        ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnContextWidget}    5s    
        IF    ${chkElementExists} == ${True}
            Exit For Loop            
        ELSE
            Swipe Up    ${windowScroll}
        END
    END

    Click Element    ${btnContextWidget}

Verify Product Widget Navigation
    ${chkElementExists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnProductSearchFilter}    ${MIN_TIMEOUT}
    Run Keyword If    ${chkElementExists}==${False}    Wait Until Element Is Visible    ${btnAddToCart}    5s
