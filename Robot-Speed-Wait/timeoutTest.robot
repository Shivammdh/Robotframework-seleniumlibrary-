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
    input text  name:Email  shivamsharmamdh@gmail.com
    input text  name:Password   Shivam@0105
    input text  name:ConfirmPassword   Shivam@0105
    close browser