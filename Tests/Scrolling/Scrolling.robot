*** Settings ***
Library     SeleniumLibrary
Library    XML

*** Variables ***
${browser}      chrome
${url}          https://www.countries-ofthe-world.com/flags-of-the-world.html


*** Test Cases ***
ScrollingAction
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Sleep    3
    Execute Javascript  window.scrollTo(0,1500)
    Sleep    2
    Execute Javascript  window.scrollTo(1500,2500)
    Sleep    3
    Scroll Element Into View    xpath://*[@id="content"]/div[2]/div[2]/table[1]/tbody/tr[94]/td[1]/img    #Jamaica
    Close All Browsers

ScrollingTillElementAction
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Sleep    3
    Scroll Element Into View    xpath://*[@id="content"]/div[2]/div[2]/table[1]/tbody/tr[94]/td[1]/img    # till Jamaica flag
    Sleep    3
    Close All Browsers


ScrollingTillEndOfPageAction
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Sleep    3
    Execute Javascript  window.scrollTo(0,document.body.scrollHeight)   #bottom page
    Sleep    2
    Execute Javascript  window.scrollTo(0,-document.body.scrollHeight)  #top page
    Close All Browsers
