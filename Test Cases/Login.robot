*** Settings ***
Resource        ../Properties/Libraries.robot
Suite Setup     Run Keywords    Capture Screenshot Directory
Test Setup      Run Keywords    Read Test Data - Using Pandas
Test Teardown   Run Keywords    Close the Browser


*** Test Cases ***
TC001
    [Documentation]    Successful Login
        Open the Browser
        Navigate to Login Link
        Enter Login
        Enter Password
        #Click LOG IN Button





