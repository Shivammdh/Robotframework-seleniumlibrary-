*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://rahulshettyacademy.com/AutomationPractice/
*** Test Cases ***
TestCheckBox
    open browser    ${url}  ${browser}
    # Select check box
    click element   xpath://div[@id='checkbox-example']/fieldset/label[1]/input
    # we can also use directly 'Select Checkbox  locator' robot keyword for this
    Select Checkbox  xpath://div[@id='checkbox-example']/fieldset/label[2]/input
    # we can also select check box using 'Select Checkbox  name_value'
    Select Checkbox  checkBoxOption3    # Here checkBoxOption3 is the value of name atribute
    sleep  2
    # Unselcting check box
    Unselect Checkbox   checkBoxOption3
    sleep  3
    close browser


*** Keywords ***
