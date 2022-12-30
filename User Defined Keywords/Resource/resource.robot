*** Settings ***
Library  SeleniumLibrary
*** Keywords ***
LaunchTheBrowser
    [Arguments]     ${appurl}  ${appbrowser}
    Open Browser    ${appurl}  ${appbrowser}
    Maximize Browser Window
    ${title}=   Get Title
    [Return]    ${title}