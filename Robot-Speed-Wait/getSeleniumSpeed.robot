*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/register
*** Test Cases ***
Get Speed
    ${speed}=   get selenium speed
    log to console  ${speed}
    open browser    ${url}  ${browser}
    maximize browser window
    # set selenium speed is take a specify time for each and every statement
    set selenium speed  1 seconds
    select radio button  Gender  M
    input text  name:FirstName  Shivam
    input text  name:LastName   Sharma
    input text  name:Email  xyz@gmail.com
    input text  name:Password   Password@0105
    input text  name:ConfirmPassword   Password@0105
    ${speed}=   get selenium speed
    log to console  ${speed}
    close browser