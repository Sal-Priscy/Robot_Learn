*** Settings ***
Resource        ../Properties/Libraries.robot

*** Keywords ***
Setup chromedriver
  Set Environment Variable  webdriver.chrome.driver  ${EXECDIR}/chromedriver.exe

Capture Screenshot Directory
   Set Screenshot Directory    ${Screenshot_Dir}

Capture Screenshot
   ${Current_Date}    Get Current Date    result_format=%Y-%m-%d
   Capture Page Screenshot     ${Current_Date}/${TEST_NAME}.png

LoginScreen
        open browser      ${url}  ${browser}
        Click Element     ${Log_In}
        Capture Screenshot