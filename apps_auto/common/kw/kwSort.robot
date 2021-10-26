*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Sort High To Low
    Wait Until Element Is Visible    ${btnProductSortHighToLow}    ${MIN_TIMEOUT}
    Click Element    ${btnProductSortHighToLow}

Click Sort Low To High
    Wait Until Element Is Visible    ${btnProductSortLowToHigh}    ${MIN_TIMEOUT}
    Click Element    ${btnProductSortLowToHigh}

Click Sort Top Rated
    Wait Until Element Is Visible    ${btnProductSortTopRated}    ${MIN_TIMEOUT}
    Click Element    ${btnProductSortTopRated}

Click Sort New Arrivals
    Wait Until Element Is Visible    ${btnProductSortNewestArrivals}    ${MIN_TIMEOUT}
    Click Element    ${btnProductSortNewestArrivals}
