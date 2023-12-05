*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url1}          https://demo.guru99.com/test/newtours/


*** Test Cases ***
GetAllLinksTest
    Open Browser    ${url1}  ${browser}
    Maximize Browser Window
    Sleep    3
#    Click Button    xpath://*[@id="save"]  #not work
    ${AllLinkscount}=   Get Element Count    xpath://a
    Log To Console    ${AllLinkscount}

    @{LinkItems}    Create List

    FOR    ${counter}    IN RANGE    1    ${AllLinkscount}+1
        ${LinkText}=   Get Text    xpath:(//a)[${counter}]
        Log   link ${counter}: ${LinkText}
    END
    Close All Browsers