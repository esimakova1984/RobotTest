*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open browser and Maximize
    [Arguments]    ${URLName}    ${BrowserName}
    open browser    ${URLName}    ${BrowserName}
    maximize browser window

Find Website TA9
    [Arguments]    ${Text}    ${LINK_TA9}    ${Website}
    input text    ${LINK_TA9}    ${Text}
    press keys    ${LINK_TA9}    RETURN
    click element    ${Website}

Navigate to the Careers page
    [Arguments]    ${CAREERS}
    click element    ${CAREERS}

Fetch the year
    [Arguments]    ${ELEMENT}   ${YEAR}
    ${element_text}=    Get Text    ${ELEMENT}
    Should Contain    ${element_text}    ${YEAR}

Click on the UP button
    [Arguments]    ${BUTTON_LOCATOR}    ${LOGO_LOCATOR}
    ${button_present} =    Run Keyword And Return Status    Element Should Be Visible    ${BUTTON_LOCATOR}
    Run Keyword If    ${button_present}    Click Element    ${BUTTON_LOCATOR}
    Run Keyword Unless    ${button_present}    Click Element    ${LOGO_LOCATOR}



