*** Settings ***
Library         SeleniumLibrary
Library         OperatingSystem
#Suite Setup     Setup chromedriver
Library         DateTime
Library         Collections
Library         Read_Data.py
Library         Screenshot
Library         OperatingSystem
Library         RPA.FileSystem
#Resource        ../Test Cases/Pre_Req.robot
Resource        ../Properties/Variables.robot
Resource        ../Keywords/Pre_Req.robot
Resource        ../Keywords/Login_Page.robot
