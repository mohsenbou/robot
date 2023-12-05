*** Settings ***
Documentation   Enregistrement video
Library     AutoRecorder    name=testrecording
Library     SeleniumLibrary

*** Variables ***

*** Test Cases ***
Test videoRecorder
    Open Browser    https://www.python.org/     chrome
    Maximize Browser Window
    Sleep    7
    Close All Browsers

*** Keywords ***
