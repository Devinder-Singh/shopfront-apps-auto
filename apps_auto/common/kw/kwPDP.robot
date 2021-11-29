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
    Wait Until Element Is Visible    ${lblPDPWishListSave}
    Click Element    ${lblPDPWishListSave}

Click Option AutoTestWishlist
    Wait Until Element Is Visible    ${lblPDPAutoTestWishListSave}
    Click Element    ${lblPDPAutoTestWishListSave}

Click Save Wishlists
    Wait Until Element Is Visible    ${btnPDPWishListSave}
    Click Element    ${btnPDPWishListSave}

Click Close Ad
    ${chkTextSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnPDPCloseAd}
    Run Keyword If    ${chkTextSuccess}==${True} and '${PLATFORM_NAME}'=='ios'    Click Element    ${btnPDPCloseAd}

Click Add To Cart
    [Arguments]    ${seconds}=0s
    Wait Until Element Is Visible    ${btnAddToCart}    ${MAX_TIMEOUT}
    Click Element    ${btnAddToCart}

Click Wishlist Change
    Wait Until Element Is Visible    ${lblPDPWishlistChange}    ${MAX_TIMEOUT}
    Click Element    ${lblPDPWishlistChange}

Click In Stock Close
    Wait Until Element Is Visible    ${btnPDPInStockClose}
    Click Element    ${btnPDPInStockClose}

Click In Stock JHB
    Wait Until Element Is Visible    ${btnAddToCart}    ${MIN_TIMEOUT}
    Wait Until Element Is Visible    ${btnPDPInStockJHB}
    Click Element    ${btnPDPInStockJHB}

Click In Stock CPT
    Wait Until Element Is Visible    ${btnAddToCart}    ${MIN_TIMEOUT}
    Wait Until Element Is Visible    ${btnPDPInStockCPT}
    Click Element    ${btnPDPInStockCPT}

Click Add Pre Order To Cart
    Wait Until Element Is Visible    ${btnPDPPreOrder}    ${MIN_TIMEOUT}
    Click Element    ${btnPDPPreOrder}

Click Exchange And Returns
    Swipe Up    ${windowScroll}
    Wait Until Element Is Visible    ${lblPDPExchAndReturn}    ${MIN_TIMEOUT}
    Click Element    ${lblPDPExchAndReturn}

Click Non Refundable
    Wait Until Element Is Visible    ${lblPDPNonrefundable}    ${MIN_TIMEOUT}
    Click Element    ${lblPDPNonrefundable}

Click Show All Colours
    Wait Until Element Is Visible    ${btnPDPShowAllColours}    ${MIN_TIMEOUT}
    Click Element    ${btnPDPShowAllColours}

Click PDP Shop The Deal TCs
    Wait Until Element Is Visible    ${lnkPDPShopTheDealTCs}    ${MIN_TIMEOUT}
    Click Element    ${lnkPDPShopTheDealTCs}

Click PDP List Price
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
    Wait Until Element Is Visible    ${txtPDPWarehouseOK}
    Click Element    ${txtPDPWarehouseOK}

Click PDP When Do I Get
    Wait Until Element Is Visible    ${btnPDPWhenDoIGet}
    Click Element    ${btnPDPWhenDoIGet}

Click PDP Credit Info
    ${chkTextSuccess}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnPDPOnCreditInfo}
    Run Keyword If    ${chkTextSuccess}==${True}    Click Element    ${btnPDPOnCreditInfo}
    Run Keyword If    ${chkTextSuccess}==${False}    Click Element    ${btnPDPOnCreditInfoTwo}

Click Eligible for Cash on Delivery
    Wait Until Element Is Visible    ${btnAddToCart}    ${MIN_TIMEOUT}
    Swipe Up    ${windowScroll}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${lnkPDPCOD}
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
    Click Element On Scroll    ${lnkPDPWhatIsThis}    10

Click PDP Show All Offers
    Wait Until Element Is Visible    ${btnAddToCart}    ${MIN_TIMEOUT}
    Click Element On Scroll    ${btnPDPShowAllOffers}    10

Click PDP Show All Offers No Scroll
    Wait Until Element Is Visible    ${btnPDPShowAllOffers}
    Click Element    ${btnPDPShowAllOffers}

Click PDP What Is This No Scroll Android
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${lnkPDPWhatIsThis}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${lnkPDPWhatIsThis}

Click PDP What Is This iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click PDP What Is This

Click Seller Name
    Wait Until Element Is Visible    ${btnAddToCart}    ${MIN_TIMEOUT}
    ${sellerNameAndroid}=    Convert To Upper Case    ${query_result_FirstProductBrand}
    ${txtProduct}=    Set Variable If    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeLink[`label == "${query_result_FirstProductBrand}"`]    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${sellerNameAndroid}']
    Wait Until Element Is Visible    ${txtProduct}
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

Click Airtime
    Wait Until Element Is Visible    ${btnPDPSelectOption}    ${MIN_TIMEOUT}
    Click Element    ${btnPDPSelectOption}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Wait Until Page Contains    Voucher valid
    Wait Until Element Is Visible    ${lblAirtimeValue}    ${MIN_TIMEOUT}
    Click Element    ${lblAirtimeValue}

Click 10 Kg
    Wait Until Element Is Visible    ${btnPDPSelectOption}    ${MIN_TIMEOUT}
    Click Element On Scroll    ${lblTenKgValue}    10

Click Add Bundle To Cart
    Wait Until Element Is Visible    ${btnAddToCart}    ${MIN_TIMEOUT}
    Click Element On Scroll    ${btnPDPAddBundleToCart}    10

Click Add Bundle To Cart No Scroll Android
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Element Is Visible    ${btnPDPAddBundleToCart}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${btnPDPAddBundleToCart}

Click Add Bundle To Cart iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Add Bundle To Cart

Click Other Offers Add To Cart iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Other Offers Add To Cart

Click Other Offers Add To Cart
    Wait Until Element Is Visible    ${btnAddToCart}    ${MIN_TIMEOUT}
    Click Element On Scroll    ${btnPDPOtherOfferAddToCart}    10

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
    Click Element On Scroll    ${lblPDPShopTheDeal}    10

Click Blue Colour Option
    Wait Until Element Is Visible    ${btnPDPSelectOption}    ${MIN_TIMEOUT}
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Swipe By Percent    50    70    50    100    1000
    Wait Until Element Is Visible    ${lblBlueValue}    ${MIN_TIMEOUT}
    Click Element    ${lblBlueValue}

Click Go To Cart
    Wait Until Keyword Succeeds    6    ${MIN_TIMEOUT}   Click Element    ${btnGoToCart}
    

Click Go To Cart iOS
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Click Go To Cart

Click PDP Write Review
    ${chkElement}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btnAddToCart}    ${MIN_TIMEOUT}
    Run Keyword If    ${chkElement}==${False}    Wait Until Element Is Visible    ${btnPDPSelectOption}
    Click Element On Scroll    ${btnPDPReview}    10

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
    Click Element On Scroll    ${btnPDPShowAllReviews}    10

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
    Click Element On Scroll    ${txtProduct}

Click Product Variant From API
    [Arguments]    ${index}=0
    ${txtProduct}=    Get Product Variant
    IF    '${index}'>'0' and '${PLATFORM_NAME}'=='ios'
        Set Local Variable    ${txtProduct}    ${txtProduct}\[${index}]
    ELSE
        Set Local Variable    ${txtProduct}    ${txtProduct}
    END            
    Wait Until Element Is Visible    ${btnPDPSelectOption}    ${MIN_TIMEOUT}
    Click Element    ${btnPDPSelectOption}
    #Add sleep for PDP reload on ios
    Run Keyword If    '${PLATFORM_NAME}'=='ios'    Sleep    3  
    Wait Until Page Contains Element    ${txtProduct}    ${MIN_TIMEOUT}
    Click Element    ${txtProduct}

Click Product Disabled Variant From API
    ${txtProduct}=    Get Product Disabled Variant
    Wait Until Element Is Visible    ${btnPDPSelectOption}    ${MIN_TIMEOUT}
    Click Element On Scroll    ${txtProduct}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Does Not Contain Element    ${txtProduct}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtProduct}

Click Product Variant Colour From API
    ${txtProduct}=    Get Product Variant Colour
    Wait Until Element Is Visible    ${btnPDPSelectOption}    ${MIN_TIMEOUT}
    Click Element On Scroll    ${txtProduct}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Does Not Contain Element    ${txtProduct}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtProduct}

Click Product Variant Disabled Colour From API
    ${txtProduct}=    Get Product Variant Disabled Colour
    Wait Until Element Is Visible    ${btnPDPSelectOption}    ${MIN_TIMEOUT}
    Click Element On Scroll    ${txtProduct}
    Click Element    ${txtProduct}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Does Not Contain Element    ${txtProduct}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtProduct}

Click Product Variant Colour With ShowAll From API
    ${txtProduct}=    Get Product Variant Colour
    Click Element On Scroll    ${txtProduct}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Does Not Contain Element    ${txtProduct}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtProduct}


Verify Product Variant Colour From API
    @{txtProductColours}=    Get Product Variant All Colours
    Wait Until Element Is Visible    ${btnPDPSelectOption}    ${MIN_TIMEOUT}
    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{txtProductColours}
        Verify Text On Screen    ${result}
    END

Verify Product Variant Colour With ShowAll From API
    @{txtProductColours}=    Get Product Variant All Colours
    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{txtProductColours}
        ${chkProdVisible}=    Run Keyword And Return Status    Page Should Contain Text    ${result} 
            Run Keyword If    ${chkProdVisible}==${False}    Swipe Up    ${windowScroll}
        Verify Text On Screen    ${result}
        ${index}=    Evaluate    ${index} + 1
    END

Verify Product Variant Size From API
    @{txtProductSize}=    Get Product Variant All Size
    Wait Until Element Is Visible    ${btnPDPSelectOption}    ${MIN_TIMEOUT}
    ${index}=    Set Variable    0
    FOR    ${result}    IN    @{txtProductSize}
        Verify Text On Screen    ${result}
    END

Click Product Variant From Name
    [Arguments]    ${title}
    ${lblProdVariant}=    Set Variable If    '${PLATFORM_NAME}'=='android'    xpath=//*[@text='${title}']    '${PLATFORM_NAME}'=='ios'    chain=**/XCUIElementTypeStaticText[`label=='${title}'`]
    Wait Until Element Is Visible    ${lnkPDPSelectOption}    ${MIN_TIMEOUT}
    Click Element On Scroll    ${lblProdVariant}    10

Click Product Variant Colour Size From API
    ${txtProduct}=    Get Product Variant Colour Size
    Wait Until Element Is Visible    ${btnPDPSelectOption}    ${MIN_TIMEOUT}
    Click Element On Scroll    ${txtProduct}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Does Not Contain Element    ${txtProduct}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtProduct}

Click Product Variant Disabled Size From API
    ${txtProduct}=    Get Product Variant Disabled Size
    Wait Until Element Is Visible    ${btnPDPSelectOption}    ${MIN_TIMEOUT}
    Click Element On Scroll    ${txtProduct}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Does Not Contain Element    ${txtProduct}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtProduct}

Click Product Variant Size From API
    ${txtProduct}=    Get Product Variant Size
    Wait Until Element Is Visible    ${btnPDPSelectOption}    ${MIN_TIMEOUT}
    Click Element On Scroll    ${txtProduct}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Wait Until Page Does Not Contain Element    ${txtProduct}
    Run Keyword If    '${PLATFORM_NAME}'=='android'    Click Element    ${txtProduct}

Click Product Disabled Variant Colour From API
    ${txtProduct}=    Get Product Disabled Variant Colour
    Wait Until Element Is Visible    ${btnPDPSelectOption}    ${MIN_TIMEOUT}
    Click Element On Scroll    ${txtProduct}

Click Product Disabled Variant Colour Size From API
    ${txtProduct}=    Get Product Disabled Variant Colour Size
    Wait Until Element Is Visible    ${btnPDPSelectOption}    ${MIN_TIMEOUT}
    Click Element On Scroll    ${txtProduct}

Verify Product YAML from API
    Get Product YAML Detail
    Verify Text On Screen    You Might Also Like    ${MIN_TIMEOUT}
    ${txtProductRating}=    Convert To String    ${query_result_YMALProductRating}
    ${txtProductPrice}=    Get Substring    ${query_result_YMALProductPrice}    2
    Swipe Up    ${windowScroll}
    Verify Text On Screen    ${txtProductPrice}    ${MIN_TIMEOUT}
    Swipe Down    ${windowScroll}
    Swipe Up    ${windowScroll}
    Click YMAL Product From Title    ${query_result_YMALProductTitle}
    Verify Element On Screen    ${btnAddToCart}    ${MIN_TIMEOUT}
