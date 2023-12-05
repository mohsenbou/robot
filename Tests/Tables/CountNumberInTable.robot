*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url1}          https://testautomationpractice.blogspot.com/


*** Test Cases ***
GetAllLinksTest
    Open Browser    ${url1}  ${browser}
    Maximize Browser Window
    Sleep    3
    ${rows}=    Get Element Count    xpath://table[@name='BookTable']/tbody/tr
    ${cols}=    Get Element Count    xpath://table[@name='BookTable']/tbody/tr[1]/th
    Log    rows: ${rows}
    Log    cols: ${cols}

    ${text}=    Get Text    xpath://table[@name='BookTable']/tbody/tr[5]/td[1]
    Log    cols: ${text}

    Table Column Should Contain    xpath://table[@name='BookTable']    2    Author

    Table row Should Contain    xpath://table[@name='BookTable']    4    Learn JS    # search by line
    Table Column Should Contain    xpath://table[@name='BookTable']    1    Learn JS    # search by column
    Table Cell Should Contain    xpath://table[@name='BookTable']    4    1    Learn JS     # search by column and line
    Table Header Should Contain    xpath://table[@name='BookTable']    BookName

    Close All Browsers