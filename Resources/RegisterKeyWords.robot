*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]     ${SiteUrl}      ${Browser}
    Open Browser    ${SiteUrl}      ${Browser}
    Maximize Browser Window
    Sleep    3

Click Register Link
    Click Element    ${link_reg}

Enter FirstName
    [Arguments]     ${firstName}
    Input Text    ${txt_firstName}    ${firstName}

Enter LastName
    [Arguments]     ${lastName}
    Input Text    ${txt_lastName}    ${lastName}

Enter Phone
    [Arguments]     ${phone}
    Input Text    ${txt_phone}    ${phone}

Enter Email
    [Arguments]     ${email}
    Input Text    ${txt_email}    ${email}

Enter Address1
    [Arguments]     ${add1}
    Input Text    ${txt_add1}    ${add1}

Enter City
    [Arguments]     ${city}
    Input Text    ${txt_city}    ${city}

Enter State
    [Arguments]     ${state}
    Input Text    ${txt_state}    ${state}

Enter PostCode
    [Arguments]     ${postCode}
    Input Text    ${txt_postCode}    ${postCode}

Enter Country
    [Arguments]     ${country}
    Input Text    ${txt_country}    ${country}

Enter UserName
    [Arguments]     ${userName}
    Input Text    ${txt_userName}    ${userName}

Enter password
    [Arguments]     ${password}
    Input Text    ${txt_Password}    ${password}

Enter Confirm password
    [Arguments]     ${confirmedPassword}
    Input Text    ${txt_confirmedPassword}    ${confirmedPassword}

Click Register Button
    Click Button    ${btn_submit}

Verify Successfull Registration
    Page Should Contain    Thank you for registering

Close my browsers
    Sleep    3
    Close All Browsers