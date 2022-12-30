*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/
*** Test Cases ***
Test Dismiss Alert
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Click Element    xpath://button[contains(text(),'Click Me')]
    Sleep    5
    Handle Alert    dismiss
    Close Browser