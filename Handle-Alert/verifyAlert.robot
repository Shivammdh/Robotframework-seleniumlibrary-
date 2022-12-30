*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/
*** Test Cases ***
verify Alert
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Click Element    xpath://button[contains(text(),'Click Me')]
    Sleep    2
    Alert Should Be Present  Press a button!
    Alert Should Not Be Present   Press a button
    Close Browser