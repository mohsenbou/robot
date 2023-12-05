*** Settings ***
Library     SeleniumLibrary
Resource       ../../Resources/RegisterKeyWords.robot


*** Variables ***
${Browser}      chrome
${url}          https://demo.guru99.com/test/newtours/index.php

*** Test Cases ***
RegistrationTest
    RegisterKeyWords.Open my Browser    ${url}     ${Browser}
    Sleep    3
    Click Register Link
    Enter FirstName    matt
    Enter LastName    PERCY
    Enter Phone    0721215656
    Enter Email    matt@gmail.com
    Enter Address1    meagan street
    Enter City    London
    Enter State    England
    Enter PostCode    $postCode
#    Enter Country    $country
    RegisterKeyWords.Enter UserName    matt123
    RegisterKeyWords.Enter password    thomas123
    Enter Confirm password    thomas123
    Sleep    3
    Click Register Button
    Verify Successfull Registration
    RegisterKeyWords.Close my browsers

