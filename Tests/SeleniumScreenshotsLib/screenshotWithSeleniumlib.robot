*** Settings ***
Library     SeleniumLibrary
Documentation   selenium library


*** Variables ***
${BROWSER}  chrome

*** Test Cases ***

Faire une capture seleniumLib
    Open python.org
    Capture Element Screenshot    xpath=//header/div[1]/nav[1]/ul[1]/li[2]/a[1]     imageSeleniumLib.png
    Capture Page Screenshot     screen.png
    Sleep    3


*** Keywords ***
Open python.org
    Open Browser    https://www.python.org  ${BROWSER}
    Maximize Browser Window





