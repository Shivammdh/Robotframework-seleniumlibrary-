*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  exampleURL.com
*** Test Cases ***
Capture element screenshot test
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Execute JavaScript          document.getElementById('subdomainname').value = "xyz";
    Capture Element Screenshot    id:subdomainname
    Input Text    id:email    xyz@gmail.com
    Capture Element Screenshot    id:email
    Input Text    id:password    password123
    Capture Element Screenshot    id:password
    Sleep    5

    Close Browser
