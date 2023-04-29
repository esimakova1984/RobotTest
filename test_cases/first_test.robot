*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/resources.robot

*** Variables ***
${URL}    https://www.google.com
${Browser}    Chrome
${Text}    TA9
${BUTTON_LOCATOR}   id:precise_backtop
${LOGO_LOCATOR}  xpath://*[@class='logo precise-flex-box precise-flex-box-ai-center']

*** Test Cases ***
My First Test Case
    Open browser and Maximize    ${URL}    ${Browser}
    Find Website TA9    ${Text}
    Navigate to the Careers page
    Find element and double click
    Click on the UP button    ${BUTTON_LOCATOR}    ${LOGO_LOCATOR}
