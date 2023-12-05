*** Settings ***

Suite Setup     Log To Console    TS Setup Opening Browser
Suite Teardown  Log To Console    TS Teardown Closing Browser

Test Setup  Log To Console    TC Setup Login to application
Test Teardown   Log To Console    TC Teardown Logout from application

*** Test Cases ***
TC1 Prepaid Recharge
    Log To Console    This is prepaid recharge testcase
TC2 PostPaid Recharge
    Log To Console    This is postpaid recharge testcase    
TC3 Search
    Log To Console    This is search test case
TC4 Advanced Search
    Log To Console    This is Adv Search Test case
