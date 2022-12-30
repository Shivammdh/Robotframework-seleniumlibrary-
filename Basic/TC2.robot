*** Settings ***
Library     SeleniumLibrary

*** Variables ***
# here browser will be open as headless mode
${browser}  headlesschrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    open browser  ${url}  ${browser}
    close browser

*** Keywords ***
LoginToApplication
    click link  xpath://a[@class='ico-login']
    input text  id:Email  xyz@gmail.com
    input text  id:Password  Password@0105
    click element  xpath://button[contains(text(),'Log in')]

