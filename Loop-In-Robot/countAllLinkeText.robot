*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.guru99.com/test/newtours/

*** Test Cases ***
Count All Links
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    ${allLinksCount}=   Get Element Count   xpath://a
    Log To Console    ${allLinksCount}
    ${listItems}    Create List
    FOR    ${i}    IN RANGE    1    ${allLinksCount}+1
        ${linkText}=    Get Text    xpath:(//a)[${i}]
        Log To Console    ${linkText}

    END
    Close Browser

