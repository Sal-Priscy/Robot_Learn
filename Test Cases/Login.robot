*** Settings ***
Resource        ../Properties/Libraries.robot
Suite Setup     Run Keywords    Setup chromedriver    Capture Screenshot Directory


*** Test Cases ***
LoginTest_1
        #create webdriver      Firefox     executable_path="C:\Dev\Driverserver\geckodriver.exe"
        #Set Environment Variable  webdriver.chrome.driver  ${EXECDIR}/chromedriver.exe
        LoginScreen
        close browser


