*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/register
*** Test Cases ***
TestSpeed
    open browser    ${url}  ${browser}
    maximize browser window
    sleep   3
    select radio button  Gender  M
    input text  name:FirstName  Shivam
    input text  name:LastName   Sharma
    input text  name:Email  shivamsharmamdh@gmail.com
    input text  name:Password   Shivam@0105
    input text  name:ConfirmPassword   Shivam@0105

