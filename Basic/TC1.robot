*** Settings ***
Library     SeleniumLibrary

*** Variables ***

*** Test Cases ***
LoginTest
    open browser  https://demo.nopcommerce.com/  chrome
    click link  xpath://a[@class='ico-login']
    input text  id:Email  xyz@gmail.com
    input text  id:Password  Password@0105
    click element  xpath://button[contains(text(),'Log in')]
    close browser

*** Keywords ***
