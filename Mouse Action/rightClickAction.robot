*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://demo.guru99.com/test/simple_context_menu.html
*** Test Cases ***
Right click Action
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    # Open Context Menu will be perform right click action on the page or page element
    Open Context Menu    xpath://span[contains(text(),'right click me')]
    Sleep    3
    Close Browser