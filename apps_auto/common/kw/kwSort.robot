*** Settings ***
Resource          ../config/defaultConfig.robot

*** Keywords ***
Click Sort High To Low
    Wait Until Element Is Visible    ${btnProductSortHighToLow}    30s
    Click Element    ${btnProductSortHighToLow}

Click Sort Low To High
    Wait Until Element Is Visible    ${btnProductSortLowToHigh}    30s
    Click Element    ${btnProductSortLowToHigh}

Click Sort Top Rated
    Wait Until Element Is Visible    ${btnProductSortTopRated}    30s
    Click Element    ${btnProductSortTopRated}

Click Sort New Arrivals
    Wait Until Element Is Visible    ${btnProductSortNewestArrivals}    30s
    Click Element    ${btnProductSortNewestArrivals}
