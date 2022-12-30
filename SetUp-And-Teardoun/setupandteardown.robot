*** Settings ***
Suite Setup     Log To Console    open the browser
Suite Teardown  Log To Console    Closing the browser

Test Setup      Log To Console    opening from application
Test Teardown   Log To Console    Closing from application

*** Test Cases ***
TC1
    Log To Console    this is first test case
TC2
    Log To Console    this is second test case
TC3
    Log To Console    this is third test case
TC4
    Log To Console    this is fourth test case
