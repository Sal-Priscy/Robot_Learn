*** Settings ***
Resource        ../Properties/Libraries.robot


*** Keywords ***
Setup chromedriver
  Set Environment Variable  webdriver.chrome.driver  ${EXECDIR}/chromedriver.exe

Capture Screenshot Directory
   ${Current_Date}    Get Current Date    result_format=%Y-%m-%d
   Screenshot.Set Screenshot Directory    ${Screenshot_Dir}/${Current_Date}

Capture Screenshot
   Screenshot.Take Screenshot     ${TEST_NAME}_Screenshot.png

Read Test Data - Using Pandas
    ${data}    Read Excel Data    ${EXECDIR}/Test Data 1.xls    TestData    ${TEST_NAME}
    Log Many    ${data}
    Set Test Variable    ${data}