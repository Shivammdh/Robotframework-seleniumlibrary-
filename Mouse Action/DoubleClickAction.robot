*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://demo.guru99.com/test/simple_context_menu.html
*** Test Cases ***
Double Click Action
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    # It will perform double click action on the page or page element
    Double Click Element    xpath://button[contains(text(),'Double-Click Me To See Alert')]
    Sleep    3
    Close Browser