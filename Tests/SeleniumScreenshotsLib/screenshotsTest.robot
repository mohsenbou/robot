*** Settings ***
Library     Screenshot
Documentation   Screenshots standard library

*** Variables ***


*** Test Cases ***
test1
    set screenshot directory    Results/screenshots
    Take Screenshot      image      width=200%

*** Keywords ***
