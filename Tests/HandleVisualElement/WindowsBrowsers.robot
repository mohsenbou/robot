*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url1}          https://www.google.com
${url2}          https://www.bing.com


*** Test Cases ***
WindowsMultiBrowsers
    Open Browser    ${url1}  ${browser}
    Maximize Browser Window
    Sleep    2

    Open Browser    ${url2}  ${browser}
    Maximize Browser Window
    Sleep    2

    Switch Browser    1
    ${title}=   Get Title
    Log To Console    ${title}
    Sleep    2

    Switch Browser    2
    ${title}=   Get Title
    Log To Console    ${title}
    Sleep    2

    Switch Browser    1
    ${title}=   Get Title
    Log To Console    ${title}
    Sleep    2

    Switch Browser    2
    ${title}=   Get Title
    Log To Console    ${title}

    Sleep    2
    Close All Browsers
