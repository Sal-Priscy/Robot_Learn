*** Settings ***
Resource        ../Properties/Libraries.robot


*** Test Cases ***
LoginTest
        #create webdriver      Firefox     executable_path="C:\Dev\Driverserver\geckodriver.exe"
        #Set Environment Variable  webdriver.chrome.driver  ${EXECDIR}/chromedriver.exe
        LoginScreen
        close browser

*** Keywords ***
Setup chromedriver
  Set Environment Variable  webdriver.chrome.driver  ${EXECDIR}/chromedriver.exe

LoginScreen
        open browser      ${url}  ${browser}
        Click Element     ${Log_In}