*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/

*** Test Cases ***
Count All table row and column
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    ${rows}=    Get Element Count    xpath://table[@name='BookTable']/tbody/tr
    ${column}=  Get Element Count    xpath://table[@name='BookTable']/tbody/tr[1]/th
#    ${row}= Get Element Count    xpath://table[@name='BookTable']/tbody/tr
#    ${col}= Get Element Count    xpath://table[@name='BookTable']/tbody/tr[1]/th
    Log To Console    ${rows}
    Log To Console    ${column}
    ${elemtext}=    Get Text    xpath://table[@name='BookTable']/tbody/tr[5]/td[1]
    Log To Console    ${elemtext}
    Close Browser