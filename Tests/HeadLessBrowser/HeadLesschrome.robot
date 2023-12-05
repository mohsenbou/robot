*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      headlesschrome
${url}          https://testautomationpractice.blogspot.com/


*** Test Cases ***
HandlingAlert
    Open Browser    ${url}  ${browser}
    Maximize Browser Window

    Click Element    //*[@id="HTML9"]/div[1]/button[1]
    Sleep    2

    Alert Should Be Present     I am an alert box!  # write the message which is in the box
    Alert Should Not Be Present     I am an message box!


    Sleep    2
    Close Browser