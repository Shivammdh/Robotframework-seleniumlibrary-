*** Test Cases ***
For loop using List Items
    @{items}    Create List  1  2  3  4  5  6  7
    # if we want to print list item in new line then we need to give 2 space b/w elements
    FOR    ${element}    IN    @{items}
        Log To Console   ${element}

    END