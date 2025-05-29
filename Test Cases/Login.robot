*** Settings ***
Resource        ../Properties/Libraries.robot
Suite Setup     Run Keywords    Capture Screenshot Directory
Test Setup      Run Keywords    Read Test Data - Using Pandas
Test Teardown   Run Keywords    Close the Browser    Compile Screenshots


*** Test Cases ***
TC001
    [Documentation]    Successful Login
        Open the Browser
        Navigate to Login Link
        Enter Login
        Enter Password
        Click LOG IN Button

TC002
    [Documentation]    Bad Id
        Open the Browser
        Navigate to Login Link
        Enter Login
        Enter Password
        Click LOG IN Button

TC003
    [Documentation]    Bad Password
        Open the Browser
        Navigate to Login Link
        Enter Login
        Enter Password
        Click LOG IN Button

TC004
    [Documentation]    Bad Id and Password
        Open the Browser
        Navigate to Login Link
        Enter Login
        Enter Password
        Click LOG IN Button

