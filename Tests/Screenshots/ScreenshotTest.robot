*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          https://opensource-demo.orangehrmlive.com/web/index.php/auth/login


*** Test Cases ***
ScreenshotPageOrElement
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Sleep    2
    Input Text          css:input[name=username]   Admin
    Input Password      css:input[name=password]   admin123
    Sleep    2
    Capture Element Screenshot     xpath://*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button     C:/Users/mohse/PycharmProjects/robot/Results/OrangeHRMButton.png
    Click Element    xpath://*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    Sleep    2
    Capture Page Screenshot     C:/Users/mohse/PycharmProjects/robot/Results/LoginPage.png
    Capture Page Screenshot     LoginPageAnyway.png  #not work



    Sleep    5
    Close All Browsers

