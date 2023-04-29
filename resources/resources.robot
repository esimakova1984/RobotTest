*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Open browser and Maximize
    [Arguments]    ${URLName}    ${BrowserName}
    open browser    ${URLName}    ${BrowserName}

Find Website TA9
    [Arguments]    ${Text}
    input text    id:APjFqb    ${Text}
    press keys    id:APjFqb    RETURN
    click element    //*[@id="rso"]/div[1]/div/div/div/div/div/div/div[1]/a/h3

Navigate to the Careers page
    click element    id:menu-item-407

Find element and Double click
     double click element    xpath://*[@id="precise-wrapper"]/div[5]/div[2]/div[2]/p

Click on the UP button
    [Arguments]    ${BUTTON_LOCATOR}    ${LOGO_LOCATOR}
    ${button_present} =    Run Keyword And Return Status    Element Should Be Visible    ${BUTTON_LOCATOR}
    Run Keyword If    ${button_present}    Click Element    ${BUTTON_LOCATOR}
    Run Keyword Unless    ${button_present}    Click Element    ${LOGO_LOCATOR}



