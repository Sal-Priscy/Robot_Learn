*** Settings ***
Resource        ../Properties/Libraries.robot


*** Keywords ***
Setup chromedriver
  Set Environment Variable  webdriver.chrome.driver  ${EXECDIR}/chromedriver.exe

Capture Screenshot Directory
   ${Current_Date}    Get Current Date    result_format=%Y-%m-%d
   OperatingSystem.Create Directory    ${Screenshot_Dir}/${Current_Date}/Snaps
   SeleniumLibrary.Set Screenshot Directory    ${Screenshot_Dir}/${Current_Date}/Temp

Capture Screenshot
   Capture Page Screenshot         ${TEST_NAME}_${TEST DOCUMENTATION}_{index}.png

Read Test Data - Using Pandas
    ${data}    Read Excel Data    ${EXECDIR}/Test Data 1.xls    TestData    ${TEST_NAME}
    Log Many    ${data}
    Set Test Variable    ${data}
    
Compile Screenshots
    ${Current_Date}    Get Current Date    result_format=%Y-%m-%d
    @{FileName}    OperatingSystem.List Files In Directory    ${Screenshot_Dir}/${Current_Date}/Temp
    Create Doc
    FOR    ${x}    IN    @{FileName}
        Send Snaps To Word     ${Screenshot_Dir}/${Current_Date}/Temp/${x}
    END
    Save Doc    ${Screenshot_Dir}/${Current_Date}/Snaps/${TEST_NAME}_${TEST DOCUMENTATION}.docx
    Empty Directory    ${Screenshot_Dir}/${Current_Date}/Temp

#Screenshots to Word
#    ${Current_Date}    Get Current Date    result_format=%Y-%m-%d
#    OperatingSystem.Create File    ${Screenshot_Dir}/${Current_Date}/${TEST_NAME}.docx
#    OperatingSystem.Append To File      ${Screenshot_Dir}/${Current_Date}/${TEST_NAME}.docx     content=${Screenshot_Dir}/${Current_Date}/TC001_Successful Login_1.png
#    OperatingSystem.Copy Files    ${Screenshot_Dir}/${Current_Date}/TC001_*.png    ${Screenshot_Dir}/${Current_Date}/${TEST_NAME}.docx