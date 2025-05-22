*** Settings ***
Resource        ../Properties/Libraries.robot

*** Keywords ***
Open the Browser
        Open Browser      ${url}  ${browser}
        Maximize Browser Window
        Capture Screenshot

Close the Browser
        close browser

Navigate to Login Link
        Click Element     ${Log_In}
        Wait Until Page Contains Element    ${Login_Id}    timeout=10    error= Element Not Found
        Capture Screenshot

Enter Login
        Input Text    ${Login_Id}    ${data}[Login_Id]
        Capture Screenshot

Enter Password
        Wait Until Page Contains Element    ${Password}    timeout=5    error= Element Not Found
        Input Password    ${Password}    ${data}[Password]
        Capture Screenshot

Click LOG IN Button
        #Wait Until Page Contains Element    ${button_Login}    timeout=5    error= Element Not Found
        Click Element    ${button_Login}
        Capture Screenshot