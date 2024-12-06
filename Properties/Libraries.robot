*** Settings ***
Library         SeleniumLibrary
Suite Setup     Setup chromedriver
Library         OperatingSystem
#Library         AWSLibrary
#Library         RPA.Cloud.AWS
Resource        ../Test Cases/Login.robot
Resource        ../Properties/Variables.robot