*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url1}  https://demowebshop.tricentis.com/register
${url2}  https://rahulshettyacademy.com/AutomationPractice/
*** Test Cases ***
Switch to multiple browsers
    Open Browser    ${url1}  ${browser}
    Maximize Browser Window
    Sleep    2
    Open Browser    ${url2}  ${browser}
    Maximize Browser Window
    Switch Browser    1
    ${title1}=   Get Title
    Log To Console    ${title1}
    Switch Browser    2
    ${title2}=   Get Title
    Log To Console    ${title2}
    Close All Browsers
