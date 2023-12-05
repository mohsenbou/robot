*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
launchBrowserWithParameterAndReturnValue
    [Arguments]  ${appUrl1}    ${appBrowser}
    Open Browser    ${appUrl1}  ${appBrowser}
    Maximize Browser Window
    ${title}    Get Title
    [Return]    ${title}