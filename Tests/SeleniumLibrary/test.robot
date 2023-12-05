*** Settings ***
Documentation   Test case pour expliquer les section sous
...             robot framework
Library           SeleniumLibrary

*** Variables ***
@{URL}=     http://google.com

*** Keywords ***
Afficher un message
    log     Hello world

***Test Cases ***
monTest1
    [Tags]  1
    Afficher un message
    Log    Test4 Started
    Open Browser    @{URL}    chrome
    Sleep   2
    Close All Browsers
    
monTest2
    [Tags]  2
    Afficher un message
    Log    Test4 Started
    Open Browser    @{URL}    firefox
    Sleep   2
    Close All Browsers

monTest3
    [Tags]  3
    Afficher un message
    Log    Test4 Started
    Open Browser    @{URL}    edge
    Sleep   2
    Close All Browsers