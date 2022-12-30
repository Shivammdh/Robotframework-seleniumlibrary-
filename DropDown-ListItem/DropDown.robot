*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://rahulshettyacademy.com/AutomationPractice/
*** Test Cases ***
TesTDropDown
    open browser    ${url}  ${browser}
    maximize browser window
    # Select dropdown item by it's label
    Select From List By Label   dropdown-class-example  Option1
    sleep   2
    # Select drop down using it's index
    Select From List By Index   dropdown-class-example  2   #Here 2 is index number of dropdown element
    sleep   2
    # Select dropdown item using it's value attribute
    Select From List By Value   dropdown-class-example  option3
    sleep   2
    close browser
*** Keywords ***
