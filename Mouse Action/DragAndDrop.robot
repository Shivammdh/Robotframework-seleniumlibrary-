*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
*** Test Cases ***
Drag And Drop Action
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    # It will perform Drag and Drop action on the page or page element
    Drag And Drop    css:#box3    css:#box103
    Sleep    4
    Close Browser