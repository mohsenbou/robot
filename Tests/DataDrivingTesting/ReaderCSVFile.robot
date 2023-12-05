*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
Library    String


*** Test Cases ***
Read CSV file

#    ${csv}=    Get File    ${CURDIR}${/}CSV/read_csv_file_inotr.csv
    ${csv}=    Get File    C:/Users/mohse/PycharmProjects/robot/TestsData/LoginData.csv

    @{read}=    Create List    ${csv}

    @{lines}=    Split To Lines    @{read}    1

    FOR    ${line_csv}    IN    @{lines}

        Log To Console    \n${line_csv}

#        Open Browser     ${line_csv}    chrome
#
#        ${locationURL}=    Get Location

#        Should Be Equal    ${line_csv}    ${locationURL}
#
#        Log To Console    Les URLs d'entrée et de sortie sont identiques pour l'URL ${line_csv}

    END