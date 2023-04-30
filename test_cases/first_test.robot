*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/resources.robot

*** Variables ***
${URL}    https://www.google.com
${Browser}    Chrome
${Text}    TA9
${BUTTON_LOCATOR}   id:precise_backtop
${LOGO_LOCATOR}  xpath://*[@class='logo precise-flex-box precise-flex-box-ai-center']
${ELEMENT}    //*[@class='cp-right']
${YEAR}    2023
${Website}    //*[@id="rso"]/div[1]/div/div/div/div/div/div/div[1]/a/h3
${CAREERS}    id:menu-item-407
${LINK_TA9}    id:APjFqb

*** Test Cases ***
My First Test Case
    Open browser and Maximize    ${URL}    ${Browser}
    Find Website TA9    ${Text}    ${LINK_TA9}    ${Website}
    Navigate to the Careers page    ${CAREERS}
    scroll element into view    ${ELEMENT}
    Fetch the year  ${ELEMENT}  ${YEAR}
    Click on the UP button    ${BUTTON_LOCATOR}    ${LOGO_LOCATOR}