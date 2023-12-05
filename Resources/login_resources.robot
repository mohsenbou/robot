*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          https://admin-demo.nopcommerce.com


*** Keywords ***
Open my browser
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Sleep    3

Close Browsers
    Sleep    3
    Close All Browsers

Open Login Page
    Go To    ${url}

Input username
    [Arguments]     ${username}
    Input Text    name:Email     ${username}

Input password
    [Arguments]     ${password}
    Input Text    name:Password     ${password}

Click Login Button
     Click Element    xpath://button[@class="button-1 login-button"]

Click LogOut Link
    Click Link    Logout

Error message should be visible
    Page Should Contain    Login was unsuccessful

Dashboard page should be visible
    Page Should Contain    Dashboard

