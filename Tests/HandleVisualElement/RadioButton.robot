*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm


*** Test Cases ***
TestingInputBox
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Set Selenium Speed    2
    
    Click Element    xpath:/html/body/div[3]/div[2]/div[1]/div[2]/div[2]/button[1]/p

    Select Radio Button    sex    Female
    Select Radio Button    exp    5

    Select Checkbox    Manual Tester
    Select Checkbox    Selenium IDE
    Select Checkbox    Selenium Webdriver

    Unselect Checkbox    Selenium IDE
    Unselect Checkbox    Selenium Webdriver

    Close Browser





*** Keywords ***