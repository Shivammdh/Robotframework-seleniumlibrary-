*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://rahulshettyacademy.com/AutomationPractice/
*** Test Cases ***
TestRedioButton
    open browser    ${url}  ${browser}
    # Select radio button
    click element   xpath://div[@id='radio-btn-example']/fieldset/label[1]/input
    # we can also use directly 'Select Radio Button  name_atribute  value_atribute' robot keyword for this
    Select Radio Button  radioButton    radio2
    sleep   5
    close browser


*** Keywords ***
