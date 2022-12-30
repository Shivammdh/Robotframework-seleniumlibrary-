*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url1}  https://demowebshop.tricentis.com/register
${url2}  https://rahulshettyacademy.com/AutomationPractice/
*** Test Cases ***
Close all Browser
    Open Browser    ${url1}  ${browser}
    Maximize Browser Window

    Open Browser    ${url2}  ${browser}
    Maximize Browser Window
    # using close browser it will close only last one browser
    #Close Browser
    Close All Browsers
