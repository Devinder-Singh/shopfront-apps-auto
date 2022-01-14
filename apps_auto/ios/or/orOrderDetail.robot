*** Variables ***
${btnPayNow}=    chain=**/XCUIElementTypeButton[`label == "Pay Now"`]
${btnOrderTrack}=    chain=**/XCUIElementTypeButton[`label CONTAINS "Track"`]
${barTrackerVertical}=    ${EMPTY}
${progressTrackerVertical}=    ${EMPTY}
