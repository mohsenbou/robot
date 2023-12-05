


*** Test Cases ***
ForLoop1
    FOR     ${i}    IN RANGE    1   10
           Log  ${i}
    END

ForLoop2
    FOR     ${i}    IN  1  2  3  4  5  6  7  8  9
           Log  number: ${i}
    END

ForLoop3WithList
    @{items}=  Create List   1  2  3  4  5  6  7
    FOR     ${i}    IN  @{items}
           Log  number in list: ${i}
    END

ForLoop4String
    FOR     ${i}    IN  january  february  march  april  may  june  july  august
           Log  month: ${i}
    END

ForLoop5String
    @{months}=  Create List   january  february  march  april  may  june  july  august
    FOR     ${i}    IN  @{months}
           Log  month: ${i}
    END

ForLoop5StringWithExist
    @{numbers}=  Create List   1  2  3  4  5   6
    FOR     ${i}    IN  @{numbers}
           Log  number: ${i}
           Exit For Loop If    ${i}==3
    END