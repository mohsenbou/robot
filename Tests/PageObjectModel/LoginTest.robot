*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/LoginKeyWords.robot


*** Variables ***
${Browser}      chrome
${url}          https://demo.guru99.com/test/newtours/index.php
${user}         tutorial
${pwd}          tutorial

*** Test Cases ***
LoginTest
    Open my Browser     ${url}      ${Browser}
    Click Element       xpath://div[@class='action-wrapper']
    Sleep    50
    Enter Username      ${user}
    Enter Password      ${pwd}
    Click SignIn
    Sleep    3
    Verify Successful Login
    Close my browsers