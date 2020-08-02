*** Settings ***
Resource  ./PO/LoginPage.robot

*** Keywords ***

Open Browser To Login Page
    LoginPage.Load
    LoginPage.Verify Login Page Loaded

Enter Username
    LoginPage.Enter Username

Enter Password
    LoginPage.Enter Password

Submit Credentials
    LoginPage.Submit Credentials

Dashboard Should Be Displayed
    LoginPage.Dashboard Should Be Displayed