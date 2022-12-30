*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://qavalidation.com/demo/
*** Test Cases ***
TestListBox
    open browser    ${url}  ${browser}
    maximize browser window
    Select From List By Index   tools   1
    sleep   2
    Select From List By Value   tools   white
    sleep   2
    Select From List By Value   tools   jmeter
    sleep   3
    close browser
*** Keywords ***
