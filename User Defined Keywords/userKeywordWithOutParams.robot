*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.guru99.com/test/newtours/

*** Test Cases ***
User Defined Keyword without Arguments
    LaunchTheBrowser
    Input Text    name:userName    Shivam
    Input Text    name:password    password@0105

*** Keywords ***
LaunchTheBrowser
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
