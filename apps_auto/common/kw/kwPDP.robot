*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Increase Cart Quantity
    [Arguments]    ${qty}

    Wait Until Element Is Visible    ${btnPDPCartItemIncrease}    ${MIN_TIMEOUT}
    FOR    ${i}    IN RANGE    ${qty}
        Click Element    ${btnPDPCartItemIncrease}
        Sleep    2s
    END

Click Increase Cart Quantity iOS
    [Arguments]    ${qty}

    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnPDPCartItemIncrease}    ${MIN_TIMEOUT}
    FOR    ${i}    IN RANGE    ${qty}
        Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${btnPDPCartItemIncrease}
        Run Keyword If    '${PLATFORM_NAME}'=='ios'    Sleep    2s
    END

Click Option Wish List
    Wait Until Element Is Visible    ${lblPDPWishListSave}    5s
    Click Element    ${lblPDPWishListSave}

Click Option AutoTestWishlist
    Wait Until Element Is Visible    ${lblPDPAutoTestWishListSave}    5s
    Click Element    ${lblPDPAutoTestWishListSave}

Click Save Wishlists
    Wait Until Element Is Visible    ${btnPDPWishListSave}    5s
    Click Element    ${btnPDPWishListSave}

Click Close Ad
    ${chkTextSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnPDPCloseAd}    5s
    Run Keyword If    ${chkTextSuccess}==${True} and '${PLATFORM_NAME}'=='ios'    Click Element    ${btnPDPCloseAd}
#    Sleep    2s

Click Add To Cart
    [Arguments]    ${seconds}=0s
    Wait Until Element Is Visible    ${btnAddToCart}    ${MIN_TIMEOUT}
    Click Element    ${btnAddToCart}
#    Sleep    ${seconds}

Click Wishlist Change
    Wait Until Element Is Visible    ${lblPDPWishlistChange}    ${MIN_TIMEOUT}
    Click Element    ${lblPDPWishlistChange}
#    Sleep    2s

Click In Stock Close
    Wait Until Element Is Visible    ${btnPDPInStockClose}    5s
    Click Element    ${btnPDPInStockClose}
#    Sleep    2s

Click In Stock JHB
    Wait Until Element Is Visible    ${btnAddToCart}    ${MIN_TIMEOUT}
    Wait Until Element Is Visible    ${btnPDPInStockJHB}    5s
    Click Element    ${btnPDPInStockJHB}
#    Sleep    2s

Click In Stock CPT
    Wait Until Element Is Visible    ${btnAddToCart}    ${MIN_TIMEOUT}
    Wait Until Element Is Visible    ${btnPDPInStockCPT}    5s
    Click Element    ${btnPDPInStockCPT}
#    Sleep    2s

Click Add Pre Order To Cart
    Wait Until Element Is Visible    ${btnPDPPreOrder}    ${MIN_TIMEOUT}
    Click Element    ${btnPDPPreOrder}
#    Sleep    2s

Click Exchange And Returns
    Swipe Up    ${windowScroll}
    Wait Until Element Is Visible    ${lblPDPExchAndReturn}    ${MIN_TIMEOUT}
    Click Element    ${lblPDPExchAndReturn}
#    Sleep    2s

Click Non Refundable
    Wait Until Element Is Visible    ${lblPDPNonrefundable}    ${MIN_TIMEOUT}
    Click Element    ${lblPDPNonrefundable}
#    Sleep    2s

Click Show All Colours
    Wait Until Element Is Visible    ${btnPDPShowAllColours}    ${MIN_TIMEOUT}
    Click Element    ${btnPDPShowAllColours}

Click PDP Shop The Deal TCs
    Wait Until Element Is Visible    ${lnkPDPShopTheDealTCs}    ${MIN_TIMEOUT}
    Click Element    ${lnkPDPShopTheDealTCs}

Click PDP List Price
#    Wait Until Element Is Visible    ${btnAddToCart}    ${MIN_TIMEOUT}
    Wait Until Element Is Visible    ${btnPDPListPrice}    ${MIN_TIMEOUT}
    Click Element    ${btnPDPListPrice}

Click PDP List Price Cancel
    Wait Until Element Is Visible    ${btnPDPListPriceCancel}    ${MIN_TIMEOUT}
    Click Element    ${btnPDPListPriceCancel}

Click PDP JHB
    Wait Until Element Is Visible    ${btnAddToCart}    ${MIN_TIMEOUT}
    ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${btnPDPInStockJHB}
    Run Keyword If    ${chkProdVisible}==${False}    Swipe Up    ${windowScroll}
    Click Element    ${btnPDPInStockJHB}

Click PDP CPT
    Wait Until Element Is Visible    ${btnAddToCart}    ${MIN_TIMEOUT}
    ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${btnPDPInStockCPT}
    Run Keyword If    ${chkProdVisible}==${False}    Swipe Up    ${windowScroll}
    Click Element    ${btnPDPInStockCPT}

Click PDP Warehouse OK
    Wait Until Element Is Visible    ${txtPDPWarehouseOK}    3s
    Click Element    ${txtPDPWarehouseOK}
#    Sleep    2s

Click PDP When Do I Get
    Wait Until Element Is Visible    ${btnPDPWhenDoIGet}    3s
    Click Element    ${btnPDPWhenDoIGet}
#    Sleep    2s

Click PDP Credit Info
    ${chkTextSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnPDPOnCreditInfo}    3s
    Run Keyword If    ${chkTextSuccess}==${True}    Click Element    ${btnPDPOnCreditInfo}
    Run Keyword If    ${chkTextSuccess}==${False}    Click Element    ${btnPDPOnCreditInfoTwo}

Click Eligible for Cash on Delivery
    Wait Until Element Is Visible    ${btnAddToCart}    ${MIN_TIMEOUT}
    Swipe Up    ${windowScroll}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${lnkPDPCOD}    3s
    Click Element    ${lnkPDPCOD}

Click PDP Description Show More
    Wait Until Element Is Visible    ${btnAddToCart}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${lnkPDPShowMore}

        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${btnPDPScrollRoot}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${lnkPDPShowMore}

Click PDP What Is This
    Wait Until Element Is Visible    ${btnAddToCart}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${lnkPDPWhatIsThis}

        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${windowScroll}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${lnkPDPWhatIsThis}

Click PDP Show All Offers
    Wait Until Element Is Visible    ${btnAddToCart}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${btnPDPShowAllOffers}

        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${windowScroll}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${btnPDPShowAllOffers}
#    Sleep    2s

Click PDP Show All Offers No Scroll
    Wait Until Element Is Visible    ${btnPDPShowAllOffers}    5s
    Click Element    ${btnPDPShowAllOffers}
#    Sleep    2s

Click PDP What Is This No Scroll Android
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${lnkPDPWhatIsThis}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${lnkPDPWhatIsThis}

Click PDP What Is This iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click PDP What Is This

Click Seller Name
    Wait Until Element Is Visible    ${btnAddToCart}    ${MIN_TIMEOUT}
    ${sellerNameAndroid}=    Convert To Upper Case    ${query_result_FirstProductBrand}

    ${txtProduct}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeLink[`label == "${query_result_FirstProductBrand}"`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${sellerNameAndroid}']

    Wait Until Element Is Visible    ${txtProduct}    5s
    Click Element    ${txtProduct}

Verify Delivery Surcharge
    [Arguments]    ${verifyText}
    Verify Text On Screen    ${verifyText}    ${MIN_TIMEOUT}

Click Continue Shopping
    Wait Until Element Is Visible    ${btnContinueShopping}    ${MIN_TIMEOUT}
    Click Element    ${btnContinueShopping}

Click Related Products Sponsored
    Wait Until Element Is Visible    ${lblPDPRelatedProdSponsored}    ${MIN_TIMEOUT}
    Click Element    ${lblPDPRelatedProdSponsored}

Click Related Products Sponsored OK
    Wait Until Element Is Visible    ${lblPDPRelatedProdSponsoredOK}    ${MIN_TIMEOUT}
    Click Element    ${lblPDPRelatedProdSponsoredOK}

Click Continue Shopping iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnContinueShopping}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${btnContinueShopping}

Click Continue Shopping Ignore Error
    ${chkElement}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnContinueShopping}    10s
    Run Keyword If    ${chkElement}==${True}    Click Element    ${btnContinueShopping}
#    Sleep    3s

Click Airtime
    Wait Until Element Is Visible    ${btnPDPSelectOption}    ${MIN_TIMEOUT}
    Click Element    ${btnPDPSelectOption}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Page Contains    Voucher valid
    Wait Until Element Is Visible    ${lblAirtimeValue}    ${MIN_TIMEOUT}
    Click Element    ${lblAirtimeValue}

Click 10 Kg
    Wait Until Element Is Visible    ${btnPDPSelectOption}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${lblTenKgValue}

        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${btnPDPSelectOption}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${lblTenKgValue}

Click Add Bundle To Cart
    Wait Until Element Is Visible    ${btnAddToCart}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    12
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${btnPDPAddBundleToCart}

        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${btnPDPScrollRoot}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${btnPDPAddBundleToCart}
#    Sleep    2s

Click Add Bundle To Cart No Scroll Android
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnPDPAddBundleToCart}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnPDPAddBundleToCart}

Click Add Bundle To Cart iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Add Bundle To Cart

Click Other Offers Add To Cart iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Other Offers Add To Cart

Click Other Offers Add To Cart
    Wait Until Element Is Visible    ${btnAddToCart}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${btnPDPOtherOfferAddToCart}

        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${btnPDPScrollRoot}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${btnPDPOtherOfferAddToCart}

Click Other Offer Sellers Add To Cart
    Click Element    ${btnPDPShowAllOffersCart}

Click Other Offers Add To Cart No Scroll Android
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnPDPOtherOfferAddToCart}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnPDPOtherOfferAddToCart}

Click Other Offers Add To Cart No Scroll iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Element Is Visible    ${btnPDPOtherOfferAddToCart}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Element    ${btnPDPOtherOfferAddToCart}

Click Shop The Deal
    Wait Until Element Is Visible    ${btnAddToCart}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    12
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${lblPDPShopTheDeal}

        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${windowScroll}
#        Sleep    1s
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${lblPDPShopTheDeal}

Click Blue Colour Option
    Wait Until Element Is Visible    ${btnPDPSelectOption}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Swipe By Percent    50    70    50    100    1000
    Wait Until Element Is Visible    ${lblBlueValue}    ${MIN_TIMEOUT}
    Click Element    ${lblBlueValue}

Click Go To Cart
    Wait Until Keyword Succeeds    3    ${MIN_TIMEOUT}    Wait Until Element Is Visible    ${btnGoToCart}    ${MIN_TIMEOUT}
    Click Element    ${btnGoToCart}

Click Go To Cart iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Go To Cart

Click PDP Write Review
    ${chkElement}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnAddToCart}    ${MIN_TIMEOUT}
    Run Keyword If    ${chkElement}==${False}    Wait Until Element Is Visible    ${btnPDPSelectOption}    1s

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${btnPDPReview}

        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${btnPDPScrollRoot}
#        Sleep    1s
        ${index}=    Evaluate    ${index} + 1
    END
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Swipe Up    ${btnPDPScrollRoot}
    Click Element    ${btnPDPReview}

Scroll To PDP Reviews Auto
    ${chkElement}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnAddToCart}    ${MIN_TIMEOUT}
    Click Element    ${btnPDPReviewBuyboxTitleButton}

Scroll To PDP Reviews
    [Arguments]    ${locatorReviewsCard}
    ${chkElement}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnAddToCart}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${locatorReviewsCard}
    END

Click PDP Show All Reviews
    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${btnPDPShowAllReviews}

        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${btnPDPScrollRoot}
#        Sleep    1s
        ${index}=    Evaluate    ${index} + 1
    END
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Swipe Up    ${btnPDPScrollRoot}
    Click Element    ${btnPDPShowAllReviews}

Click PDP Reviews Show More
    Wait Until Element Is Visible    ${btnPDPUserReviews}    ${MIN_TIMEOUT}
    Click Element    ${btnPDPReviewShowMoreButton}

Click Back PDP
    Wait Until Element Is Visible    ${navBackPDP}    ${MIN_TIMEOUT}
    Click Element    ${navBackPDP}

Verify PDP Screen Text
    [Arguments]    ${verifyText}
    Wait Until Page Contains    ${verifyText}    ${MIN_TIMEOUT}

Verify PDP Screen Element
    [Arguments]    ${verifyElement}
    Wait Until Element Is Visible    ${verifyElement}    ${MIN_TIMEOUT}

Verify PDP Screen Element Not Exists
    [Arguments]    ${verifyElement}
    Wait Until Page Does Not Contain Element    ${verifyElement}

Click Product Size
    [Arguments]    ${size}

    ${txtProduct}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label == "${size}"`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text="${size}"]

    Wait Until Element Is Visible    ${btnPDPSelectOption}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${txtProduct}

        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${btnPDPSelectOption}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${txtProduct}

Click Product Variant From API
    [Arguments]    ${index}=0
    ${txtProduct}=    Get Product Variant
    IF    '${index}'>'0' and '${PLATFORM_NAME}'=='ios'
        Set Local Variable    ${txtProduct}    ${txtProduct}\[${index}]
    ELSE
        Set Local Variable    ${txtProduct}    ${txtProduct}
    END            
    Wait Until Element Is Visible    ${btnPDPSelectOption}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnPDPSelectOption}
    Wait Until Page Contains Element    ${txtProduct}    ${MIN_TIMEOUT}
    Click Element    ${txtProduct}

Click Product Disabled Variant From API

    ${txtProduct}=    Get Product Disabled Variant

    Wait Until Element Is Visible    ${btnPDPSelectOption}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${txtProduct}

        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${btnPDPSelectOption}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${txtProduct}
#    Sleep    2s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Does Not Contain Element    ${txtProduct}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtProduct}

Click Product Variant Colour From API

    ${txtProduct}=    Get Product Variant Colour

    Wait Until Element Is Visible    ${btnPDPSelectOption}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${txtProduct}

        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${btnPDPSelectOption}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${txtProduct}
#    Sleep    2s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Does Not Contain Element    ${txtProduct}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtProduct}

Click Product Variant Disabled Colour From API

    ${txtProduct}=    Get Product Variant Disabled Colour

    Wait Until Element Is Visible    ${btnPDPSelectOption}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${txtProduct}

        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${btnPDPSelectOption}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${txtProduct}
#    Sleep    2s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Does Not Contain Element    ${txtProduct}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtProduct}

Click Product Variant Colour With ShowAll From API

    ${txtProduct}=    Get Product Variant Colour

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${txtProduct}

        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${btnPDPSelectOption}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${txtProduct}
#    Sleep    2s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Does Not Contain Element    ${txtProduct}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtProduct}


Verify Product Variant Colour From API

    @{txtProductColours}=    Get Product Variant All Colours

    Wait Until Element Is Visible    ${btnPDPSelectOption}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{txtProductColours}
        Verify Text On Screen    ${result}    5s
    END

Verify Product Variant Colour With ShowAll From API

    @{txtProductColours}=    Get Product Variant All Colours

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{txtProductColours}

        ${chkProdVisible}=    Run Keyword And Return Status    Page Should Contain Text    ${result} 
            Run Keyword If    ${chkProdVisible}==${False}    Swipe Up    ${windowScroll}

        Verify Text On Screen    ${result}    5s  
 
        ${index}=    Evaluate    ${index} + 1
    END

Verify Product Variant Size From API

    @{txtProductSize}=    Get Product Variant All Size

    Wait Until Element Is Visible    ${btnPDPSelectOption}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{txtProductSize}
        Verify Text On Screen    ${result}    5s
    END

Click Product Variant From Name
    [Arguments]    ${title}

    ${lblProdVariant}=    Set Variable If    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${title}']    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label=='${title}'`]

    Wait Until Element Is Visible    ${lnkPDPSelectOption}    ${MIN_TIMEOUT}
    Swipe Up    ${windowScroll}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${lblProdVariant}

        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${windowScroll}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${lblProdVariant}

Click Product Variant Colour Size From API

    ${txtProduct}=    Get Product Variant Colour Size

    Wait Until Element Is Visible    ${btnPDPSelectOption}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${txtProduct}

        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${btnPDPSelectOption}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${txtProduct}
#    Sleep    2s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Does Not Contain Element    ${txtProduct}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtProduct}

Click Product Variant Disabled Size From API

    ${txtProduct}=    Get Product Variant Disabled Size

    Wait Until Element Is Visible    ${btnPDPSelectOption}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${txtProduct}

        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${btnPDPSelectOption}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${txtProduct}
#    Sleep    2s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Does Not Contain Element    ${txtProduct}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtProduct}

Click Product Variant Size From API

    ${txtProduct}=    Get Product Variant Size

    Wait Until Element Is Visible    ${btnPDPSelectOption}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${txtProduct}

        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${btnPDPSelectOption}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${txtProduct}
#    Sleep    2s
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Does Not Contain Element    ${txtProduct}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtProduct}

Click Product Disabled Variant Colour From API

    ${txtProduct}=    Get Product Disabled Variant Colour

    Wait Until Element Is Visible    ${btnPDPSelectOption}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${txtProduct}

        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${btnPDPSelectOption}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${txtProduct}
#    Sleep    2s

Click Product Disabled Variant Colour Size From API

    ${txtProduct}=    Get Product Disabled Variant Colour Size

    Wait Until Element Is Visible    ${btnPDPSelectOption}    ${MIN_TIMEOUT}

    ${index}=    Set Variable    0
    FOR    ${index}    IN RANGE    10
        ${chkProdVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${txtProduct}

        Run Keyword If
            ...    ${chkProdVisible}==${True}
            ...    Exit For Loop

        Swipe Up    ${btnPDPSelectOption}
        ${index}=    Evaluate    ${index} + 1
    END
    Click Element    ${txtProduct}
#    Sleep    2s

Verify Product YAML from API
    Get Product YAML Detail

    Run Keyword If    '${PLATFORM_NAME}'=='android'    Verify Text On Screen    You Might Also Like    ${MIN_TIMEOUT}    ELSE
    Verify Text Element On Screen iOS    You Might Also Like    ${MIN_TIMEOUT}    ${windowScroll}    ${btnAddToCart}
    ${txtProductRating}=    Convert To String    ${query_result_YMALProductRating}
#    Verify Text On Screen    ${txtProductRating}    ${MIN_TIMEOUT}

    ${txtProductPrice}=    Get Substring    ${query_result_YMALProductPrice}    2
    Swipe Up    ${windowScroll}
    Verify Text On Screen    ${txtProductPrice}    ${MIN_TIMEOUT}
    Swipe Down    ${windowScroll}

    Swipe Up    ${windowScroll}
    Click YMAL Product From Title    ${query_result_YMALProductTitle}
    Verify Element On Screen    ${btnAddToCart}    ${MIN_TIMEOUT}
