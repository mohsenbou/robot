*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
MyTestCase
    Open Browser    https://demowebshop.tricentis.com/register  chrome
    Maximize Browser Window

    Open Browser    https://www.cdiscount.com/  chrome
    Maximize Browser Window

#    Close Browser              #only second brother is closed
    Close All Browsers