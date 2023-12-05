*** Settings ***
Library     DatabaseLibrary
Library     OperatingSystem

Suite Setup     Connect To Database     pymysql     ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown  Disconnect From Database

*** Variables ***
${DBName}       mydb
${DBUser}       root
${DBPass}
${DBHost}       127.0.0.1   #Localhost
${DBPort}       3306

*** Test Cases ***
Create person table
    ${output}=      Execute Sql String    Create table person(id integer, first_name varchar(20),last_name varchar(20));
    Log To Console    ${output}
    Should Be Equal As Strings    ${output}    None

Inserting one person table
    #Single record
    ${output}=      Execute Sql String    Insert into person values(101, "John","CANADY");
    Log To Console    ${output}
    Should Be Equal As Strings    ${output}    None


Inserting Data in person table
    #multiple record
    ${output}=      Execute Sql Script    C:/Users/mohse/PycharmProjects/robot/TestsData/mydb_person_insertData.sql
    Log To Console    ${output}
    Should Be Equal As Strings    ${output}    None

Check David record present in Person Table
    Check If Exists In Database    select id from mydb.person where first_name="David"
    Check If Exists In Database    select id from mydb.person where first_name="Marry"

Check Jio record Not present in Person Table
    Check If Not Exists In Database    select id from mydb.person where first_name="Jon"

Check Person Table Exists in mydb database
    Table Must Exist    person

Verify Row Count is Zero
    Row Count Is 0    select id from mydb.person where first_name="xyz"

Verify Row Count is Equal to some Value
    Row Count Is Equal To X    select id from mydb.person where first_name="David";     1

Verify Row Count is Greater than Some Value
    Row Count Is Greater Than X    select id from mydb.person where first_name="David";     0

Verify Row Count is less than Some Value
    Row Count Is Less Than X    select id from mydb.person where first_name="David";     5
    
Update record in person table
    ${output}=  Execute Sql String    Update mydb.person set first_name="Jeo" where id=104;
    Log To Console    ${output}
    Should Be Equal As Strings    ${output}    None

Retrieve Records from Person Table
    @{queryResults}=        Query       select * from mydb.person
    Log To Console   many     @{queryResults}

Delete Records from person table
    ${output}=    Execute Sql String    Delete from mydb.person;
    Should Be Equal As Strings    ${output}    None

