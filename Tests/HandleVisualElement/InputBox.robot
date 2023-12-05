*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          https://demo.nopcommerce.com

*** Test Cases ***
TestingInputBox
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Title Should Be    nopCommerce demo store
    Click Link    xpath://a[contains(text(),'Log in')]
    ${"email-txt"}  Set Variable    id:Email

    Element Should Be Visible    ${"email-txt"}
    Element Should Be Enabled    ${"email-txt"}



    Input Text    ${"email-txt"}    mohsenbou@gmail.com
    Sleep    5
    Clear Element Text    ${"email-txt"}
    Sleep    3
    Close Browser



    

*** Keywords ***