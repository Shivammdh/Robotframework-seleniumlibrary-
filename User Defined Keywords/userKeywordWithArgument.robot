*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.guru99.com/test/newtours/

*** Test Cases ***
User Defined Keyword with Arguments
    LaunchTheBrowser    ${url}  ${browser}
    Input Text    name:userName    XYZ
    Input Text    name:password    Password@123

*** Keywords ***
LaunchTheBrowser
    [Arguments]     ${appurl}  ${appbrowser}
    Open Browser    ${appurl}  ${appbrowser}
    Maximize Browser Window
