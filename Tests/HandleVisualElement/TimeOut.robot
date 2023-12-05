*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          https://demowebshop.tricentis.com/register


*** Test Cases ***
TestingTimeOut
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    ${time} =   Get Selenium Timeout
    Log    time is ${time}
    Set Selenium Timeout    10
    Wait Until Page Contains    Register   #by default 5sec (here 10 sec, test it with a wrong value)

    Select Radio Button    Gender    M

    Input Text    name:FirstName    David
    Input Text    name:LastName     John
    Input Text    name:Email        ahn@gmail.com

    Input Text    name:Password         davidjohn
    Input Text    name:ConfirmPassword  davidjohn

    ${time} =   Get Selenium Timeout
    Log    time is ${time}
    Sleep    2
    Close Browser





*** Keywords ***