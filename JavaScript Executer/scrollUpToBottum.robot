*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://www.countries-ofthe-world.com/flags-of-the-world.html
*** Test Cases ***
Scroll Down The Pgae
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    # Scroll down the page up to bottum
    Execute Javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep    4
     # Scroll down the page up to bottum
    Execute Javascript  window.scrollTo(0,-document.body.scrollHeight)
    Sleep    5
    Close Browser