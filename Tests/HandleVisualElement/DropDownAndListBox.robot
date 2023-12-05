*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm


*** Test Cases ***
Handling DropDown and Lists
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
#    Set Selenium Speed    2

    Click Element    xpath:/html/body/div[3]/div[2]/div[1]/div[2]/div[2]/button[1]/p

    Select From List By Index    continents     4
    Sleep    2
    Select From List By Label    continents     Australia
    Sleep    2
#    ListBox
    Select From List By Label    selenium_commands      Navigation Commands     Switch Commands
    Select From List By Label    selenium_commands      Wait Commands
    Sleep    2
    Unselect From List By Label    selenium_commands      Navigation Commands     Switch Commands
    Sleep    2
    Close Browser





*** Keywords ***