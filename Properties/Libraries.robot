*** Settings ***
Library         SeleniumLibrary
Library         OperatingSystem
#Suite Setup     Setup chromedriver
Library         DateTime
Library         Collections
Library         Read_Data.py
#Library         PandasLibrary
#Library         AWSLibrary
#Library         RPA.Cloud.AWS
#Resource        ../Test Cases/Pre_Req.robot
Resource        ../Properties/Variables.robot
Resource        ../Keywords/Pre_Req.robot
Resource        ../Keywords/Login_Page.robot
