*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/

*** Test Cases ***
Table Cell and header verification
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Table Cell Should Contain    xpath://table[@name='BookTable']    5    2    Mukesh
    Table Header Should Contain    xpath://table[@name='BookTable']    BookName
    Close Browser