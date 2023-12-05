*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          https://demowebshop.tricentis.com/register


*** Test Cases ***
TestingSpeed
    ${spead}=    Get Selenium Speed
    Log To Console    ${spead}
    Open Browser    ${url}  ${browser}
    Maximize Browser Window

#    Sleep    3
    Set Selenium Speed    1
    Select Radio Button    Gender    M

    Input Text    name:FirstName    David
    Input Text    name:LastName     John
    Input Text    name:Email        ahn@gmail.com

    Input Text    name:Password         davidjohn
    Input Text    name:ConfirmPassword  davidjohn

    ${spead}=    Get Selenium Speed
    Log To Console    ${spead}

    Sleep    2
    Close Browser





*** Keywords ***