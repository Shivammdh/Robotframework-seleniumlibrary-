*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/register
*** Test Cases ***
Timeout Test
    open browser    ${url}  ${browser}
    maximize browser window
    ${time}=    get selenium timeout
    log to console  ${time}
    set selenium timeout    10 seconds  # we can set the wait time more than 5 sec
    wait until page contains    Registeration  # Default wait time is 5 sec
    select radio button  Gender  M
    input text  name:FirstName  Shivam
    input text  name:LastName   Sharma
    input text  name:Email  xyz@gmail.com
    input text  name:Password   Password@123
    input text  name:ConfirmPassword   Password@123
    close browser
