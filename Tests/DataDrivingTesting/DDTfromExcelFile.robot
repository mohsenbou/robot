*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/login_resources.robot
Library     DataDriver   C:/Users/mohse/PycharmProjects/robot/TestsData/LoginData.xlsx     sheet_name=Sheet1
Suite Setup     Open my browser
Suite Teardown      Close Browsers
Test Template       Invalid Login

*** Test Cases ***
LoginTestwithExcel using ${username} and ${password}


*** Keywords ***
Invalid Login
    [Arguments]     ${username}     ${password}
    Input username    ${username}
    login_resources.Input password    ${password}
    Click Login Button
    Error message should be visible




