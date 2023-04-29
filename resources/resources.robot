*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Open browser and Maximize
    [Arguments]    ${URLName}    ${BrowserName}
    open browser    ${URLName}    ${BrowserName}

Find Website TA9
    [Arguments]    ${Text}    ${Website}
    input text    id:APjFqb    ${Text}
    press keys    id:APjFqb    RETURN
    click element    ${Website}

Navigate to the Careers page
    click element    id:menu-item-407

Find element and Double click
    [Arguments]    ${ELEMENT}    ${WORD}
    ${element}=  Get WebElement  ${ELEMENT}
    ${text}=    get text    All rights Reserved to TA9 LTD 2023
    ${word}=    Set Variable    2023
    ${word_index}=    Evaluate    "${text}".find("${word}")
    ${word_length}=    Get Length    ${word}
    Execute JavaScript    var el = arguments[0], range = document.createRange(); range.setStart(el.childNodes[0], ${word_index}); range.setEnd(el.childNodes[0], ${word_index}+${word_length}); window.getSelection().removeAllRanges(); window.getSelection().addRange(range);    ${element}

Click on the UP button
    [Arguments]    ${BUTTON_LOCATOR}    ${LOGO_LOCATOR}
    ${button_present} =    Run Keyword And Return Status    Element Should Be Visible    ${BUTTON_LOCATOR}
    Run Keyword If    ${button_present}    Click Element    ${BUTTON_LOCATOR}
    Run Keyword Unless    ${button_present}    Click Element    ${LOGO_LOCATOR}



