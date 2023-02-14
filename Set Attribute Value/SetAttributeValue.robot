*** Settings ***
Library     SeleniumLibrary
Library    XML
*** Variables ***
${browser}  chrome
${url}  https:example.com
*** Test Cases ***
Set Attribute Value
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    # In this bellow executer find the element which id is subdomainname
    # and set or change it's value attributr value and assigne new value which is msys
    Execute JavaScript          document.getElementById('subdomainname').value = "xyz";
    Sleep    5
    Close Browser
