*** Settings ***
Library     SeleniumLibrary
Library    XML

*** Variables ***
${browser}      chrome
${url1}          https://swisnl.github.io/jQuery-contextMenu/demo.html
${url2}         https://testautomationpractice.blogspot.com
${url3}         http://dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html

*** Test Cases ***
MouseAction
    Open Browser    ${url1}  ${browser}
    Maximize Browser Window
    Sleep    2
    Open Context Menu    xpath://body[1]/div[1]/section[1]/div[1]/div[1]/div[1]/p[1]/span[1]
    Sleep    2
    
MouseAction2
    Open Browser    ${url2}  ${browser}
    Maximize Browser Window
    Sleep    2

    Double Click Element    xpath://*[@id="HTML10"]/div[1]/button
    Sleep    2
    ${text}=      Get Element Text   xpath://*[@id="field2"]
    Log     text + ${text}

    Sleep    3
    Close All Browsers


DragAndDrop
    Open Browser    ${url3}  ${browser}
    Maximize Browser Window
    Sleep    2

    Drag And Drop    xpath://*[@id="box6"]    xpath://*[@id="box106"]
    Drag And Drop    xpath://*[@id="box5"]    xpath://*[@id="box105"]

    Sleep    3
    Close All Browsers
