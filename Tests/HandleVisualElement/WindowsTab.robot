*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}          https://demo.automationtesting.in/Windows.html


*** Test Cases ***
WindowsTab
    Open Browser    ${url}  ${browser}
    Maximize Browser Window

    Click Button    xpath:/html/body/div[3]/div[2]/div[1]/div[2]/div[2]/button[2]
    Sleep    2
    Click Button    //*[@id="Tabbed"]/a/button
    Switch Window   Selenium
    Click Element    xpath:/html/body/div/main/section[2]/div/div/div[1]/div/div[2]/div/a

    Sleep    2
    Close All Browsers
