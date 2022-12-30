*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***
Navigate Location
    Open Browser    https://www.google.com/     chrome
    ${location}=    Get Location
    Log To Console    ${location}
    Sleep    3
    
    # it will open a new url
    Go To    https://rahulshettyacademy.com/
    ${loc}=    Get Location
    Log To Console    ${loc}
    Sleep    3
    
    # it will again back to previouse browser window
    Go Back
    ${loc1}=    Get Location
    Log To Console    ${loc1}
    Sleep    3
    Close Browser