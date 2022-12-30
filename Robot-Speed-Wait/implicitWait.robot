*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/register
*** Test Cases ***
Implicit wait test
    open browser    ${url}  ${browser}
    maximize browser window
    ${implicittime}=    get selenium implicit wait
    log to console  ${implicittime}

    set selenium implicit wait  10 seconds

    ${implicittime}=    get selenium implicit wait
    log to console  ${implicittime}
    select radio button  Gender  M
    input text  name:FirstName1  Shivam
    input text  name:LastName   Sharma
    input text  name:Email  xyz@gmail.com
    input text  name:Password   Password@0105
    input text  name:ConfirmPassword   Password@0105
    close browser