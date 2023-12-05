*** Settings ***
Library     SeleniumLibrary
Library     SeleniumScreenshots


*** Variables ***
${BROWSER}  chrome

*** Test Cases ***

Faire une capture seleniumScreenshots
    Open python.org
    Sleep    3
    Highlight
    ...     link:downloads
    capture and crop page screenshot
    ...     image.png
    ...     css:#touchnav-wrapper > header
    ...     css:#downloads

*** Keywords ***
Open python.org
    Open Browser    https://www.python.org  ${BROWSER}
    Maximize Browser Window





