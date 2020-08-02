*** Settings ***
Documentation  This test suite comprises of test cases dedicated to login in ReadinessPoint
Resource  ../Resources/ReadinesspointApp.robot
Resource  ../Resources/Common.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***
${URL} =  https://readinesspointqa.azurewebsites.net/account/Login
${BROWSER} =  googlechrome
${DASHBOARD URL} =  https://readinesspointqa.azurewebsites.net/first-digital/covid-19-level-4-workplace-readiness-assessment/dashboard

*** Test Cases ***

Open Browser To Login Page
    ReadinesspointApp.Open Browser To Login Page

Valid Login
    [Tags]  Smoke
    ReadinesspointApp.Enter Username
    ReadinesspointApp.Enter Password
    ReadinesspointApp.Submit Credentials
    ReadinessPointApp.Dashboard Should Be Displayed


