*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL_google}     https://google.fr

${browser1}     chrome
${browser1}     firefox

*** Test Cases ***
test1
    Open Navigator
    Click Element    //*[@id="L2AGLb"]/div
#    Input Text    name=q    color
#    Sleep    2
    Input Text    name=q    magenta     clear
    Press Keys    name=q    RETURN
#    Click Element    xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[4]/center/input[1]
    Wait Until Page Contains    magenta     timeout=10
    Page Should Contain    magenta
    Close Navigator


*** Keywords ***
Open Navigator
    Open Browser    ${URL_google}   ${browser1}
#    Maximize Browser Window


Close Navigator
    Sleep    2
    Close All Browsers



