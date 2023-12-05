*** Settings ***

Documentation   robot --include=sanity .\Tests\GroupingTestsByTag\.
...             robot --include=regression .\Tests\GroupingTestsByTag\.
...             robot -i regression -i sanity .\Tests\GroupingTestsByTag\.  -> include many tag
...             robot -e regression .\Tests\GroupingTestsByTag\.  -> to exlude regression test
...             robot -i regression -e sanity .\Tests\GroupingTestsByTag\.  -> choose to include or exclude
*** Test Cases ***
TC1 User RegistrationTest
    [Tags]  regression
    Log To Console    This is user reg test
    Log To Console    user registration test is over
TC2 LoginTest
    [Tags]  sanity
    Log To Console    This is login test
    Log To Console    Login test is over    
TC3 Change user setting
    [Tags]  regression
    Log To Console    this is changing user setting test
    Log To Console    Change user setting test is over
TC4 Logout Test
    [Tags]  sanity
    Log To Console    This is Logout test
    Log To Console    Logout test is over

