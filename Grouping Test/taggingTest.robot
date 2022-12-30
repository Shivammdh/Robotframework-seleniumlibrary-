*** Settings ***

*** Test Cases ***
TC1 UserRegistration
    [Tags]  Regression
    Log To Console    user registration test
    Log To Console    user registration test is over

TC2 Login Test
    [Tags]  Sanity
    Log To Console    This is login test
    Log To Console    Login test is over.
TC3 change user setting
    [Tags]  Regression
    Log To Console    This chenging user settings test.
    Log To Console    chenging user settings test is over.

TC4 Logout Test
    [Tags]  Sanity
    Log To Console    Logout test.
    Log To Console    Logout test is over.