*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          https://demowebshop.tricentis.com/register


*** Test Cases ***
TestingImplicitWait
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    ${implicitTime}=    Get Selenium Implicit Wait
    Log     implicitTime is ${implicitTime}
    Set Selenium Implicit Wait    10
    ${implicitTime}=    Get Selenium Implicit Wait
    Log     implicitTime is ${implicitTime}

    Select Radio Button    Gender    M
    Input Text    name:FirstName1    David      #wrong name
    Input Text    name:LastName     John
    Input Text    name:Email        ahn@gmail.com
    Input Text    name:Password         davidjohn
    Input Text    name:ConfirmPassword  davidjohn



    Sleep    2
    Close Browser


*** Keywords ***