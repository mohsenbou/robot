*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/login_resources.robot
Suite Setup     Open my browser
Suite Teardown      Close Browsers
Test Template       Invalid Login

*** Test Cases ***          username                     password
Right user empty pwd        admin@yourstore.com        ${EMPTY}
Right user wrong pwd        admin@yourstore.com        xyz
Wrong user right pwd        admin@ourstore.com        admin
Wrong user empty pwd        admin@ourstore.com        ${EMPTY}
Wrong user wrong pwd        admin@ourstore.com        xyz

*** Keywords ***
Invalid Login
    [Arguments]     ${username}     ${password}
    Input username    ${username}
    login_resources.Input password    ${password}
    Click Login Button
    Error message should be visible




