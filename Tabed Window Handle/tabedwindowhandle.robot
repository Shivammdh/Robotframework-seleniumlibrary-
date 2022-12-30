*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.automationtesting.in/Windows.html
*** Test Cases ***
Test Tabed window
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Click Button    xpath://div[@id='Tabbed']/a/button
    Sleep    6
    Switch Window   Frames & windows
    Sleep    3
    ${loc}=  Get Locations
    Log To Console    ${loc}
    Close Browser