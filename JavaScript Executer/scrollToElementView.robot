*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://www.countries-ofthe-world.com/flags-of-the-world.html
*** Test Cases ***
Scroll Down The Pgae
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    # Scroll down the page using specific element view
    Scroll Element Into View    xpath://td[contains(text(),'India')]
    Sleep    5
    Close Browser