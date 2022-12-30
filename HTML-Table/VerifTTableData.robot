*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/

*** Test Cases ***
Verify table row and column
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Table Column Should Contain    xpath://table[@name='BookTable']    2    Author
    Table Row Should Contain    xpath://table[@name='BookTable']    5    Master In Selenium
    Close Browser