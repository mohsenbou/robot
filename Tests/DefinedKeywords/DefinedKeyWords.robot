*** Settings ***
Library     SeleniumLibrary
Library    XML
Resource    C:/Users/mohse/PycharmProjects/robot/Resources/resources.robot

*** Variables ***
${browser}      chrome
${url1}          https://demo.guru99.com/test/newtours/


*** Test Cases ***
DefinedKeywords
    launchBrowser
    Sleep    5
    Input Text    name:userName    mercury
    Input Text    name:password    mercury

    Sleep    3
    Close All Browsers


DefinedKeywordsWithArgument
    launchBrowserWithParameter  ${url1}  ${browser}
    Sleep    5
    Input Text    name:userName    mercury
    Input Text    name:password    mercury

    Sleep    3
    Close All Browsers

DefinedKeywordsWithReturnValue
    ${pageTitle}=      launchBrowserWithReturnValue
    Log To Console    ${pageTitle}
    Sleep    5
    Input Text    name:userName    mercury
    Input Text    name:password    mercury

    Sleep    3
    Close All Browsers

DefinedKeywordsWithParameterAndReturnValue
    ${pageTitle}=      launchBrowserWithParameterAndReturnValue  ${url1}  ${browser}
    Log To Console    ${pageTitle}
    Sleep    5
    Input Text    name:userName    mercury
    Input Text    name:password    mercury

    Sleep    3
    Close All Browsers

*** Keywords ***
launchBrowser
    Open Browser    ${url1}  ${browser}
    Maximize Browser Window

launchBrowserWithParameter
    [Arguments]  ${appUrl1}    ${appBrowser}
    Open Browser    ${appUrl1}  ${appBrowser}
    Maximize Browser Window

launchBrowserWithReturnValue
    Open Browser    ${url1}  ${browser}
    Maximize Browser Window
    ${title}    Get Title
    [Return]    ${title}

launchBrowserWithParameterAndReturnValue
    [Arguments]  ${appUrl1}    ${appBrowser}
    Open Browser    ${appUrl1}  ${appBrowser}
    Maximize Browser Window
    ${title}    Get Title
    [Return]    ${title}