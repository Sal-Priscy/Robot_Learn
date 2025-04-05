*** Settings ***
Library         SeleniumLibrary
Library         OperatingSystem
#Suite Setup     Setup chromedriver
Library         DateTime
#Library         AWSLibrary
#Library         RPA.Cloud.AWS
#Resource        ../Test Cases/Login_Page.robot
Resource        ../Properties/Variables.robot
Resource        ../Keywords/Login_Page.robot