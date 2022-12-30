*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html
*** Test Cases ***
Test Frame
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Select Frame    packageListFrame  # we can specify id,name,xpath etc.
    Click Link    org.openqa.selenium
    Unselect Frame
    Sleep    2
    Select Frame    packageFrame
    Click Link    Alert
    Unselect Frame
    Sleep    2
    Select Frame    classFrame
    Click Link    Help
    Sleep    2
    Close Browser
