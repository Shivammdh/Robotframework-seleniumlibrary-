*** Settings ***
Library    SeleniumLibrary
Resource    Resource/resource.robot
# Here Resource/resource.robot is exactly path of resource.robot file
*** Variables ***
${browser}  chrome
${url}  https://demo.guru99.com/test/newtours/

*** Test Cases ***
User Defined Keyword with Arguments
    ${pagetitle}=   LaunchTheBrowser    ${url}  ${browser}
    Log To Console    ${pagetitle}
    Log    ${pagetitle}
    Input Text    name:userName    Shivam
    Input Text    name:password    Shivam@0105
    Close Browser
