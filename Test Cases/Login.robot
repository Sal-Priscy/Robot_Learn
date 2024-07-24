*** Settings ***
Library         SeleniumLibrary
Suite Setup     Setup chromedriver
Library         OperatingSystem
#Library         AWSLibrary
#Library         RPA.Cloud.AWS


*** Variables ***
${url}   https://demo.nopcommerce.com/
${browser}   Chrome

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
        open browser    ${url}  ${browser}
        click link      xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a