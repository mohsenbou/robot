*** Settings ***
Library     String
Documentation   String Library standard
Resource    ../SeleniumScreenshotsLib/screenshotWithSeleniumlib.robot

*** Variables ***


*** Test Cases ***
Convertir en minuscule
    ${str1}=     Convert To Lower Case    ABC
    ${str2}=     Convert To Lower Case    1A2c3D3
    
    Should Be Lower Case    ${str1}
    Should Be Equal    ${str1}    abc
    Should Be Equal    ${str2}    1a2c3d3


Convertir en majuscule
    ${str1}=     Convert To Upper Case    abc
    ${str2}=     Convert To Upper Case    1a2c3d3

    Should Be Upper Case    ${str1}
    Should Be Equal    ${str1}    ABC
    Should Be Equal    ${str2}    1A2C3D3

generation d'une chaine random
    ${low} =	Generate Random String	12	[LOWER]
    Log To Console    ${low}

supprimer une chaine
    ${str} =	Remove String	Robot Framework	    o   wrk
    Log To Console    ${str}

Remplacer une chaine
    ${str} =	Replace String	Hello, world!	world	tellus
    Log To Console    ${str}

*** Keywords ***


