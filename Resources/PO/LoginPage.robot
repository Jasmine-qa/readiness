*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Load
    Go To  ${URL}

Verify Login Page Loaded
    Wait until page contains  READINESSPOINT

Enter Username
    Input text  id=staticEmail  ReadinessPointOganizationadmin

Enter Password
    Input text  id=inputPassword  ReadinessPointOganizationadmin

Submit Credentials
    Click button  xpath=/html/body/app/div/div[2]/div/button
    Wait until page contains  COVID-19

Dashboard Should Be Displayed
    Location should be  ${DASHBOARD URL}