*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://app.keka.com/Account/KekaLogin?returnUrl=%2F
*** Test Cases ***
Capture page screenshot test
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Execute JavaScript          document.getElementById('subdomainname').value = "xyz";
    Input Text    id:email    xyz@gmail.com
    Input Text    id:password    Password
    Sleep    5
    Capture Page Screenshot
    Close Browser